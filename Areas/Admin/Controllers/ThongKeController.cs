using Electro.Models;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Electro.Areas.Admin.Controllers
{
    public class ThongKeController : Controller
    {
        ElectroDbContext db = new ElectroDbContext();
        // GET: Admin/ThongKe



        [HttpGet]
        public ActionResult SanPhamBanChay()
        {
            var ToDay = DateTime.Now.Date;
            var lstSP = GetListSPBC(ToDay, ToDay);

            ViewBag.TuNgay = ToDay;
            ViewBag.DenNgay = ToDay;
            return View(lstSP);
        }

        [HttpPost]
        public ActionResult SanPhamBanChay(FormCollection f)
        {

            DateTime TuNgay;
            DateTime DenNgay;
            bool flagHasError = false;


            if (DateTime.TryParse(f["TuNgay"], out TuNgay))
            {
                TuNgay = Convert.ToDateTime(f["TuNgay"]);
            }
            else
            {
                ViewBag.KiemTraNgayBatDau = "Ngày bắt đầu không hợp lệ";
                flagHasError = true;
            }



            if (DateTime.TryParse(f["DenNgay"], out DenNgay))
            {
                DenNgay = Convert.ToDateTime(f["DenNgay"]);
            }
            else
            {
                ViewBag.KiemTraNgayKetThuc = "Ngày đến không hợp lệ";
                flagHasError = true;
            }

            DateTime ToDay = DateTime.Now.Date;
            var lstDDHx = GetListSPBC(ToDay, ToDay);
            ViewBag.SoLuong = lstDDHx.Count();
            ViewBag.TongTien = 0;
            ViewBag.TuNgay = ToDay;
            ViewBag.DenNgay = ToDay;
            if (flagHasError == true)
            {

                return View(lstDDHx);
            }

            if (TuNgay > DenNgay)
            {
                ViewBag.KiemTraNgayKetThuc = "Ngày kết thúc không được nhỏ hơn ngày bắt đầu.";
                return View(lstDDHx);
            }







 
            var lstSP = GetListSPBC(TuNgay, DenNgay);

            ViewBag.TuNgay = TuNgay;
            ViewBag.DenNgay = DenNgay;
            return View(lstSP);
        }
        public IEnumerable<Electro.Models.TakeEverything> GetListSPBC(DateTime TuNgay, DateTime DenNgay)
        {
            var lstSP = (from ctdh in db.ChiTietDonDatHangs
                         join ddh in db.DonDatHangs on ctdh.MaDDH equals ddh.MaDDH
                         where (ddh.NgayLap >= TuNgay && ddh.NgayLap <= DenNgay)
                         group ctdh by ctdh.MaSP into s
                         select new TakeEverything
                         {
                             MaSP = s.Key,
                             SoLuongBan = s.Sum(n => n.SoLuong),
                             TenSP = s.Select(n => n.TenSP).FirstOrDefault()
                         }).OrderByDescending(n => n.SoLuongBan);
            return lstSP;

        }

        public ActionResult SanPhamHetHang(int? page)
        {
            if (Session["Admin"] == null)
            {
                return RedirectToAction("Login", "Admin");

            }

            int iPageNum = (page ?? 1);
            int iPageSize = 7;
            var lst = db.SanPhams.Where(n => n.SoLuongTon == 0).ToList().OrderBy(n => n.MaSP).ToPagedList(iPageNum, iPageSize);
            return View(lst);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Electro.Models;
using PagedList;

namespace Electro.Areas.Admin.Controllers
{
    public class AdminController : Controller
    {
        // GET: Admin/Home
        ElectroDbContext db = new ElectroDbContext();
        public ActionResult Index(int ? page)
        {
            if (Session["Admin"] == null)
            {
                return RedirectToAction("Login", "Admin");

            }
            // Lấy danh sách đơn hàng đang chờ xử lý
            int iPageNum = (page ?? 1);
            int iPageSize = 7;
            var lst = db.DonDatHangs.Where(n => n.TinhTrang == "Đang chờ xử lý").ToList().OrderBy(n => n.MaDDH).ToPagedList(iPageNum, iPageSize);
            return View(lst);
        }


        //them Action Quan ly tinh trang
        [HttpGet]
        public ActionResult Sua(int MaDDH)
        {
            DonDatHang ddh = db.DonDatHangs.SingleOrDefault(n => n.MaDDH == MaDDH);

            List<SelectListItem> tinhtrang = new List<SelectListItem>();

            tinhtrang.Add(new SelectListItem { Text = "Đang chờ xử lý", Value = "Đang chờ xử lý" });
            tinhtrang.Add(new SelectListItem { Text = "Đang giao", Value = "Đang giao" });
            tinhtrang.Add(new SelectListItem { Text = "Đã giao", Value = "Đã giao" });
            tinhtrang.Add(new SelectListItem { Text = "Hủy", Value = "Hủy" });
            ViewBag.TinhTrang = tinhtrang;
            return View(ddh);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Sua(FormCollection f, int? Status)
        {
            int MaDDH = int.Parse(f["MaDDH"]);
            DonDatHang ddh = db.DonDatHangs.SingleOrDefault(n => n.MaDDH == MaDDH);

            ddh.TinhTrang = f["TinhTrang"];
            db.SaveChanges();
            if(Status == 1)
            {
                return RedirectToAction("Index", "DonHang");
            }
            return RedirectToAction("Index", "Admin");
        }


        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(FormCollection collection)
        {
            var sTenDN = collection["TenDN"];
            var sMatKhau = collection["MatKhau"];
            if (String.IsNullOrEmpty(sTenDN))
            {
                ViewBag.ThongBao = "Bạn chưa nhập tên đăng nhập";
                return View();
            }
            else if (String.IsNullOrEmpty(sMatKhau))
            {
                ViewBag.ThongBao = "Phải nhập mật khẩu";
                return View();
            }
            else
            {
                var ad = db.Admins.SingleOrDefault(n => n.TaiKhoan == sTenDN && n.matkhau == sMatKhau);
                if (ad != null)
                {
                    ViewBag.ThongBao = "Chúc mừng đăng nhập thành công  ";
                    Session["Admin"] = ad;
                    return RedirectToAction("Index", "Admin");

                }
                else
                {
                    ViewBag.ThongBao = "Tên đăng nhập hoặc mật khẩu không chính xác";
                    return View();
                }
            }

        }
        public ActionResult DangXuat()
        {
            Session["Admin"] = null;
            return RedirectToAction("Login", "Admin");
        }
    }

}
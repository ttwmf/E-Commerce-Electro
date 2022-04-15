using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Electro.Models;
using PagedList;


namespace Electro.Areas.Admin.Controllers
{
    public class DonHangController : Controller
    {
        // GET: Admin/DonHang
        ElectroDbContext db = new ElectroDbContext();
        public ActionResult Index(int? page)
        {
            if (Session["Admin"] == null)
            {
                return RedirectToAction("Login", "Admin");

            }

            int iPageNum = (page ?? 1);
            int iPageSize = 7;
            var lst = db.DonDatHangs.ToList().OrderBy(n => n.MaDDH).ToPagedList(iPageNum, iPageSize);
            return View(lst);
        }
        public ActionResult ChiTietDonHang(int MaDDH, string url)
        {
            ViewBag.Url = url;
            var lstChiTietDonHang = db.ChiTietDonDatHangs.Select(n => n).Where(n => n.MaDDH == MaDDH);
            return View(lstChiTietDonHang);
        }
        public ActionResult Xoa(int MaDDH)
        {
            var lst = db.ChiTietDonDatHangs.Where(n => n.MaDDH == MaDDH).ToList();
            foreach(ChiTietDonDatHang ctddh in lst)
            {
                db.ChiTietDonDatHangs.Remove(ctddh);
            }

            db.DonDatHangs.Remove(db.DonDatHangs.SingleOrDefault(n => n.MaDDH == MaDDH));
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
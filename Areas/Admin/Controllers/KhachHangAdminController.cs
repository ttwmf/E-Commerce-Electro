using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Electro.Models;
using PagedList;
namespace Electro.Areas.Admin.Controllers
{
    public class KhachHangAdminController : Controller
    {
        // GET: Admin/KhachHang
        ElectroDbContext db = new ElectroDbContext();
        public ActionResult Index(int? page)
        {
            if (Session["Admin"] == null)
            {
                return RedirectToAction("Login", "Admin");

            }

            int iPageNum = (page ?? 1);
            int iPageSize = 7;
            var lst = db.KhachHangs.ToList().OrderBy(n => n.MaKH).ToPagedList(iPageNum, iPageSize);
            return View(lst);
           
        }
        public ActionResult DanhSachHoaDon(int MaKH, int? page,  string url)
        {
            ViewBag.Url = url;
            var lstHD = db.DonDatHangs.Where(n => n.MaKH == MaKH).ToList().OrderBy(n => n.MaDDH).ToPagedList(page ?? 1, 7);
            return View(lstHD);
        }
    }
}
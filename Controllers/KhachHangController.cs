using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Electro.Models;

namespace Electro.Controllers
{
    public class KhachHangController : Controller
    {
        ElectroDbContext db = new ElectroDbContext();
        // GET: KhachHang
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DangNhap(FormCollection collection, int ? Status)
        {
            var sTenDN = collection["TenDN"];
            var sMatKhau = collection["MatKhau"];
            ViewBag.TenDN = "";
            if (String.IsNullOrEmpty(sTenDN))
            {
                ViewData["Err1"] = "Bạn chưa nhập tên đăng nhập";
                return View();
            }
            else if (String.IsNullOrEmpty(sMatKhau))
            {
                ViewData["Err2"] = "Phải nhập mật khẩu";
                return View();
            }
            else
            {
                KhachHang kh = db.KhachHangs.SingleOrDefault(n => n.TaiKhoan == sTenDN && n.MatKhau == sMatKhau);
                if (kh != null)
                {
                    // Cập nhật lại giỏ hàng

    
                    ViewBag.ThongBao = "Chúc mừng đăng nhập thành công  ";
                    ViewBag.GioHang = (from gh in db.GioHangs where gh.MaKH == kh.MaKH select gh).Count();
                    Session["TaiKhoan"] = kh;
                    if (Status == 0)
                    {
                        return RedirectToAction("Index", "Home");
                    }
                    else
                    {
                        return RedirectToAction("DatHang", "GioHang", new { Status = 1 });
                    }
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
            Session["TaiKhoan"] = null;
            return Redirect("~/Home/Index");
        }

        [HttpGet]
        public ActionResult CapNhatThongTinKhachHang()
        {
            KhachHang kh = Session["TaiKhoan"] as KhachHang;
            return View(kh);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult CapNhatThongTinKhachHang(FormCollection f)
        {

            int MaKH = int.Parse(f["MaKH"]);
            KhachHang kh = db.KhachHangs.SingleOrDefault(n => n.MaKH == MaKH);
            kh.HoTen = f["HoTen"];
            kh.TaiKhoan = f["TaiKhoan"].Replace("<p>", "").Replace("</p>", "\n");

            kh.DiaChi = f["DiaChi"];
            kh.Email = f["Email"];
            kh.DienThoai = f["DienThoai"];
            db.SaveChanges();
            Session["TaiKhoan"] = kh;
            return View(kh);
        }

        //Đăng ký
        [HttpGet]
        public ActionResult DangKy()
        {
            ViewBag.Status = 0;
            return View();
        }

        [HttpPost]
        public ActionResult DangKy(FormCollection f, KhachHang kh)
        {
            string XacNhanMK = f["XacNhanMatKhau"];
            db.KhachHangs.Add(kh);
            db.SaveChanges();
            ViewBag.Status = 1;
            return View();

        }
    }

}
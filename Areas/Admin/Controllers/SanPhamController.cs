using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Electro.Models;
using PagedList;
using System.IO;
namespace Electro.Areas.Admin.Controllers
{
    public class SanPhamController : Controller
    {
        // GET: Admin/QuanLy
        ElectroDbContext db = new ElectroDbContext();

        public ActionResult Index(int? page)
        {
/*            if (Session["Admin"] == null)
            {
                return RedirectToAction("Login", "Admin");

            }*/

            int iPageNum = (page ?? 1);
            int iPageSize = 7;
            var lst = db.SanPhams.ToList().OrderByDescending(n => n.MaSP).Where(n => n.DaXoa == false).ToPagedList(iPageNum, iPageSize);
            return View(lst);

        }
        public ActionResult ChiTiet(int MaSP, string url)
        {
            ViewBag.Url = url;
            SanPham sp = db.SanPhams.SingleOrDefault(n => n.MaSP == MaSP);
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(sp);

        }

        [HttpGet]
        public ActionResult Sua(int MaSP, string url)
        {
            ViewBag.Url = url;
            var sp = db.SanPhams.SingleOrDefault(n => n.MaSP == MaSP);
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            ViewBag.MaNCC = new SelectList(db.NhaCungCaps.ToList().OrderBy(n => n.TenNCC), "MaNCC", "TenNCC", sp.MaNCC);
            ViewBag.MaNSX = new SelectList(db.NhaSanXuats.ToList().OrderBy(n => n.TenNSX), "MaNSX", "TenNSX", sp.MaNSX);
            return View(sp);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Sua(int MaSP, FormCollection f, HttpPostedFileBase fFileUpload)
        {
            var sp = db.SanPhams.SingleOrDefault(n => n.MaSP == MaSP);
            // if (ModelState.IsValid)
            {
                if (fFileUpload != null)
                {
                    var sFileName = Path.GetFileName(fFileUpload.FileName);
                    var path = Path.Combine(Server.MapPath("~/img"), sFileName);
                    if (!System.IO.File.Exists(path))
                    {
                        fFileUpload.SaveAs(path);
                    }
                    sp.HinhAnh = sFileName;
                }
                sp.TenSP = f["TenSP"];
                sp.MoTa = f["MoTa"].Replace("<p>", "").Replace("</p>", "/n");
                sp.CauHinh = f["CauHinh"].Replace("<p>", "").Replace("</p>", "/n");
                sp.NgayCapNhat = DateTime.Now;
                sp.SoLuongTon = int.Parse(f["SoLuongTon"]);
                sp.DonGia = decimal.Parse(f["DonGia"]);
                sp.MaNCC = int.Parse(f["MaNCC"]);
                sp.MaNSX = int.Parse(f["MaNSX"]);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

        }
        public ActionResult Xoa(int MaSP)
        {
            var sp = db.SanPhams.SingleOrDefault(n => n.MaSP == MaSP);
            sp.DaXoa = true;
            db.SaveChanges();
            return RedirectToAction("Index");
        }


        // Thêm SP

        [HttpGet]
        public ActionResult Them(string url)
        {
            ViewBag.Url = url;
            ViewBag.MaNCC = new SelectList(db.NhaCungCaps.ToList().OrderBy(n => n.TenNCC), "MaNCC", "TenNCC");
            ViewBag.MaNSX = new SelectList(db.NhaSanXuats.ToList().OrderBy(n => n.TenNSX), "MaNSX", "TenNSX");
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]

        public ActionResult Them(FormCollection f, HttpPostedFileBase fFileUpload)
        {
            var sp = new SanPham();
            ViewBag.ErrorTenSP = "";
            ViewBag.NumberOfError = 0;
            List<string> ListError = new List<string>();
            Boolean flagValidation = false;



/*            if (ModelState.IsValid)*/
            {
                if (fFileUpload != null)
                {
                    var sFileName = Path.GetFileName(fFileUpload.FileName);
                    ViewBag.FileName = sFileName;
                    var path = Path.Combine(Server.MapPath("~/img"), sFileName);
                    if (!System.IO.File.Exists(path))
                    {
                        fFileUpload.SaveAs(path);
                    }

                    if (!sFileName.EndsWith(".png"))
                    {
                        ViewBag.KiemTraAnh = "File ảnh không hợp lệ. (*.png)";
                        flagValidation = true;
                    }
                    sp.HinhAnh = sFileName;
                }
                else
                {
                    ViewBag.KiemTraAnh = "Bạn chưa chọn ảnh.";
                    flagValidation = true;

                }
                sp.TenSP = f["TenSP"];
                if (string.IsNullOrEmpty(sp.TenSP))
                {
                    ViewBag.KiemTraTenSanPham = "Tên SP không được rỗng.";
                    flagValidation = true;

                }
                if (string.IsNullOrEmpty(f["SoLuongTon"]))
                {
                    ViewBag.KiemTraSoLuong = "Số lượng không được để trống.";
                    flagValidation = true;
                }
                else
                {
                    if(int.Parse(f["SoLuongTon"]) < 1)
                    {
                        ViewBag.KiemTraSoLuong = "Số lượng > 0";
                        flagValidation = true;
                    }
                }

                if(string.IsNullOrEmpty(f["DonGia"])){
                    ViewBag.KiemTraDonGia = "Đơn giá không được để trống.";
                    flagValidation = true;
                }
                else
                {
                    if (int.Parse(f["DonGia"]) < 1)
                    {
                        ViewBag.KiemTraDonGia = "Đơn giá > 0";
                        flagValidation = true;
                    }
                }
                
                sp.CauHinh = f["CauHinh"].Replace("<p>", "").Replace("</p>", "\n");
                sp.CauHinh.TrimEnd();

                if (string.IsNullOrEmpty(sp.CauHinh) || sp.CauHinh.Length == 0)
                {
                    ViewBag.KiemTraCauHinh = "Cấu hình không được để trống.";
                    flagValidation = true;
                }


                if(flagValidation == true)
                {
                    ViewBag.MaNCC = new SelectList(db.NhaCungCaps.ToList().OrderBy(n => n.TenNCC), "MaNCC", "TenNCC");
                    ViewBag.MaNSX = new SelectList(db.NhaSanXuats.ToList().OrderBy(n => n.TenNSX), "MaNSX", "TenNSX");
                    return View();
                }
                sp.MoTa = f["MoTa"].Replace("<p>", "").Replace("</p>", "\n");
                

                sp.NgayCapNhat = DateTime.Now;
                sp.SoLuongTon = int.Parse(f["SoLuongTon"]);
                sp.DonGia = decimal.Parse(f["DonGia"]);
                sp.MaNCC = int.Parse(f["MaNCC"]);
                sp.MaNSX = int.Parse(f["MaNSX"]);
                sp.DaXoa = false;
                sp.LuotXem = 0;
                sp.TrungBinhDanhGia = 0;
                db.SanPhams.Add(sp);
                db.SaveChanges();
                
                return RedirectToAction("Index");
            }
/*            else
            {
                ViewBag.ErrorTenSP = "Tên sản phẩm không được trống";

                return RedirectToAction("Index");
            }*/

        }

    }
        
}
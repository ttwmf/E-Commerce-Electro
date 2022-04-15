using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Electro.Models;
using PagedList;
using System.ComponentModel.DataAnnotations;
using System.Text.RegularExpressions;

namespace Electro.Areas.Admin.Controllers
{
    public class NhaCungCapController : Controller
    {
        // GET: Admin/NhaCungCap
        ElectroDbContext db = new ElectroDbContext();
        public ActionResult Index(int? page)
        {
            if (Session["Admin"] == null)
            {
                return RedirectToAction("Login", "Admin");

            }
            int iPageNum = (page ?? 1);
            var lst = db.NhaCungCaps.ToList().OrderBy(n => n.MaNCC).ToPagedList(iPageNum, 7);
            return View(lst);
        }
        public ActionResult Sua(int MaNCC)
        {

            NhaCungCap ncc = db.NhaCungCaps.SingleOrDefault(n => n.MaNCC == MaNCC);
            return View(ncc);
        }
        [HttpPost]

        public ActionResult Sua(FormCollection f)
        {

            int MaNCC = int.Parse(f["MaNCC"]);
            NhaCungCap ncc = db.NhaCungCaps.SingleOrDefault(n => n.MaNCC == MaNCC);
            ncc.TenNCC = f["TenNCC"];
            ncc.DiaChi = f["DiaChi"].Replace("<p>", "").Replace("</p>", "\n");
            ncc.Email = f["email"];
            ncc.DienThoai = f["DienThoai"];
            db.SaveChanges();
            return RedirectToAction("Index", "NhaCungCap");
        }
        public ActionResult Them()
        {

            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Them(FormCollection f)

        {

            NhaCungCap ncc = new NhaCungCap();

            List<string> ListError = new List<string>();
           
            ncc.TenNCC = f["TenNCC"];
            ncc.DiaChi = f["DiaChi"].Replace("<p>", "").Replace("</p>", "\n");
            ncc.Email = f["Email"];
            ncc.DienThoai = f["DienThoai"];

            //Check lỗi tên nha cung cấp
            if (string.IsNullOrEmpty(ncc.TenNCC))
            {
                ListError.Add("Tên nhà cung cấp không được để trống.");
            }   
            
            //Check lỗi địa chỉ
            if (string.IsNullOrEmpty(ncc.DiaChi))
            {
                ListError.Add("Địa chỉ không được để trống.");
            }

            //Check lỗi email
            string resCheckEmail = checkEmail(ncc.Email);
            if (resCheckEmail != "ok")
            {
                ListError.Add(resCheckEmail);
            }

            string resCheckSDT = IsPhoneNumber(ncc.DienThoai);
            if(resCheckSDT != "ok")
            {
                ListError.Add(resCheckSDT);
            }

            if (ListError.Count() > 0)
            {
                ViewBag.NumberOfError = ListError.Count();
                ViewBag.ListError = ListError;
                return View();

            }



            db.NhaCungCaps.Add(ncc);
            db.SaveChanges();
            return RedirectToAction("Index", "NhaCungCap");
        }

        string checkEmail(string email)
        {
            if (string.IsNullOrEmpty(email))
            {
                return "Email không được rỗng.";
            }


            if(new EmailAddressAttribute().IsValid(email))
            {
                return "ok";
            }
            else
            {

                return "Email không đúng định dạng.";
            }
        }

        public string IsPhoneNumber(string number)
        {
            if (string.IsNullOrEmpty(number))
            {

                return "Số điện thoại không được để trống.";
            }
            if (Regex.Match(number, @"(84|0[3|5|7|8|9])+([0-9]{8})\b").Success == true)
            {
                return "ok";
            }
            else
            {
                return "Số điện thoại không đúng định dạng.";
            }
            
        }


        public ActionResult ChiTiet(int MaNCC, string url)
        {
            ViewBag.Url = url;
            NhaCungCap ncc = db.NhaCungCaps.SingleOrDefault(n => n.MaNCC == MaNCC);
            if (ncc == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(ncc);

        }
    }
}
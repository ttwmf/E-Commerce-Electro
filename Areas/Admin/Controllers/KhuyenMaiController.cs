using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;
using Electro.Models;
using PagedList;

namespace Electro.Areas.Admin.Controllers
{
    public class KhuyenMaiController : Controller
    {
        // GET: Admin/KhuyenMai
        ElectroDbContext db = new ElectroDbContext();
        public ActionResult Index(int ? page)
        {
            if(Session["Admin"] == null)
            {
                return RedirectToAction("Login", "Admin");
            }
            int pageNum = page ?? 1;
            var lstKM = db.KhuyenMais.ToList().OrderBy(n => n.MaKM).ToPagedList(pageNum, 7);
            return View(lstKM);
        }

        public ActionResult ChiTietKhuyenMai(int? page, int MaKM, string url)
        {
            ViewBag.Url = url;
            ViewBag.MaKM = MaKM;
            var lstSPKM = (from ctkm in db.ChiTietKhuyenMais
                           join km in db.KhuyenMais on ctkm.MaKM equals km.MaKM
                           join sp in db.SanPhams on ctkm.MaSP equals sp.MaSP
                           where km.MaKM == MaKM
                           select new TakeEverything
                           {
                               MaSP = sp.MaSP,
                               TenSP = sp.TenSP,
                               DonGia = (decimal)sp.DonGia,
                               GiamGia = (int)ctkm.GiamGia,
                               HinhAnh = sp.HinhAnh,
                               SoLuongTon = (int)sp.SoLuongTon
                           }).OrderBy(n => n.MaSP).ToPagedList(page ?? 1, 7);
            return View(lstSPKM);
        }
        [HttpGet]
        public ActionResult ThemKhuyenMai()
        {
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemKhuyenMai(FormCollection f)
        {

            bool flagHasError = false;
            KhuyenMai km = new KhuyenMai();
            km.TenChuongTrinh = f["TenCT"];
            if (string.IsNullOrEmpty(km.TenChuongTrinh))
            {
                ViewBag.KiemTraTenKM = "Tên chương trình không được để trống.";
                flagHasError = true;
            }
            km.NoiDung = f["NoiDung"].Replace("<p>", "").Replace("</p>", "\n");

            if (string.IsNullOrEmpty(km.NoiDung))
            {
                ViewBag.KiemTraNoiDung = "Nội dung không được để trống.";
                flagHasError =true;
            }

            if (string.IsNullOrEmpty(f["NgayBatDau"]))
            {
                ViewBag.KiemTraNgayBatDau = "Vui lòng chọn ngày bắt đầu.";
                flagHasError = true;
            }
            else
            {
                DateTime value;
                if(DateTime.TryParse(f["NgayBatDau"], out value))
                {
                    km.NgayBatDau = Convert.ToDateTime(f["NgayBatDau"]);
                }
                else
                {
                    ViewBag.KiemTraNgayBatDau = "Ngày bắt đầu không hợp lệ";
                    flagHasError = true;
                }
            }


            if (string.IsNullOrEmpty(f["NgayKetThuc"]))
            {
                ViewBag.KiemTraNgayKetThuc = "Vui lòng chọn ngày kết thúc.";
                flagHasError = true;
            }
            else
            {
                DateTime value;
                if (DateTime.TryParse(f["NgayKetThuc"], out value))
                {
                    km.NgayKetThuc = Convert.ToDateTime(f["NgayKetThuc"]);
                }
                else
                {
                    ViewBag.KiemTraNgayKetThuc = "Ngày kết thúc không hợp lệ";
                    flagHasError = true;
                }
            }

            
            if(flagHasError == true)
            {
                return View();
            }

            if(km.NgayBatDau > km.NgayKetThuc)
            {
                ViewBag.KiemTraNgayKetThuc = "Ngày kết thúc không được nhỏ hơn ngày bắt đầu.";
                return View();
            }

            db.KhuyenMais.Add(km);
            db.SaveChanges();
            /*GuiThongTinKhuyenMai(km);*/
            return RedirectToAction("Index", "KhuyenMai");
        }
        public void GuiThongTinKhuyenMai(KhuyenMai km)
        {
            var listEmail = db.EmailKhuyenMais.Select(e => e.Email).ToList();
            String s = "";
            foreach (var e in listEmail)
            {
                s += e;
                s += ",";
            }
            s += "1924801030059756557@student.tdmu.edu.vn";

            EmailModel model = new EmailModel();
            model.To = s;
            model.Email = "saleelectro01@gmail.com";
            model.Password = "Thai@1234";
            model.Subject = km.TenChuongTrinh;
            model.Body = "Chào bạn , tập đoàn Electro gửi thông tin về chương \n" + km.NoiDung + "\n" +
                km.NgayBatDau + "\n" + km.NgayBatDau + "\n Tran trọng";

            using (MailMessage mm = new MailMessage(model.Email, model.To))
            {
                mm.Subject = model.Subject;
                mm.Body = model.Body;
                mm.IsBodyHtml = false;
                using (SmtpClient smtp = new SmtpClient())
                {
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential NetworkCred = new NetworkCredential(model.Email, model.Password);
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;
                    smtp.Port = 587;
                    smtp.Send(mm);
                    ViewBag.Message = "Gửi mail thành công";
                }
            }
        }






        [HttpGet]
        public ActionResult ThemMoiSanPhamKM(int MaKM, string url)
        {
            ViewBag.Url = url;
            ViewBag.MaKM = MaKM;
            var lstSP = (from sp in db.SanPhams
                         where !db.ChiTietKhuyenMais.Any(es => (es.MaSP == sp.MaSP) && es.MaKM == MaKM)
                         select sp).Where(sp => sp.DaXoa == false).OrderBy(n => n.MaSP).ToList();

            ViewBag.MaSP = new SelectList(lstSP, "MaSP", "MaSP", lstSP.First().MaSP);

            /*            var lstSP= new List<string>(){"Đang xử lý", "Đã giao", "Đang giao", "Hủy"};
                        ViewBag.MaSP = new SelectList(lstSP, "MaSP", "MaSP", "Đang xử lý");*/


            return View();

        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemMoiSanPhamKM(FormCollection f)
        {
            ChiTietKhuyenMai ctkm = new ChiTietKhuyenMai();
            ctkm.MaKM = int.Parse(f["MaKM"]);
            ctkm.MaSP = int.Parse(f["MaSP"]);
            ctkm.GiamGia = int.Parse(f["GiamGia"]);
            db.ChiTietKhuyenMais.Add(ctkm);
            db.SaveChanges();
            return RedirectToAction("ChiTietKhuyenMai", "KhuyenMai", new { MaKM = ctkm.MaKM});
        }
        public ActionResult XoaSanPham(int MaSP,int MaKM, string url)
        {
            var sp = db.ChiTietKhuyenMais.SingleOrDefault(n => n.MaSP == MaSP && n.MaKM == MaKM);
            db.ChiTietKhuyenMais.Remove(sp);
            db.SaveChanges();
            return Redirect(url);
        }
 
        [HttpGet]
        public ActionResult Sua(int MaKM, string url)
        {
            ViewBag.Url = Url;
            KhuyenMai km = db.KhuyenMais.SingleOrDefault(n => n.MaKM == MaKM);
            return View(km);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Sua(FormCollection f)
        {
            int MaKM = int.Parse(f["MaKM"]);
            KhuyenMai km = db.KhuyenMais.SingleOrDefault(n => n.MaKM == MaKM);
            km.TenChuongTrinh = f["TenCT"];
            km.NoiDung = f["NoiDung"].Replace("<p>", "").Replace("</p>", "\n");
            km.NgayBatDau = Convert.ToDateTime(f["NgayBatDau"]);
            km.NgayKetThuc = Convert.ToDateTime(f["NgayKetThuc"]);
            db.SaveChanges();
            return RedirectToAction("Index", "KhuyenMai");
        }
        public ActionResult Xoa(int MaKM, string url)
        {
            var lstSPKM = db.ChiTietKhuyenMais.Where(n => n.MaKM == MaKM);
            foreach(var item in lstSPKM)
            {
                db.ChiTietKhuyenMais.Remove(item);
            }
            db.SaveChanges();
            KhuyenMai km = db.KhuyenMais.SingleOrDefault(n => n.MaKM == MaKM);
            db.KhuyenMais.Remove(km);
            db.SaveChanges();
            return Redirect(url);
        }
    }
}
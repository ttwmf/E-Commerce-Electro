using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Electro.Models;
using PagedList.Mvc;
using PagedList;
namespace Electro.Controllers
{
    public class HomeController : Controller
    {

        ElectroDbContext db = new ElectroDbContext();
        private int LayMaKM()
        {
            var lstKM = db.KhuyenMais.Where(n => n.NgayBatDau <= DateTime.Now && n.NgayKetThuc >= DateTime.Now).OrderByDescending(n => n.MaKM);
            int MaKM = 0;
            if (lstKM.Count() > 0)
            {
                KhuyenMai km = lstKM.Take(1).Single();
                MaKM = km.MaKM;
            }
            else
            {
                MaKM = 0;
            }
            return MaKM;
        }

        private void UpdateLuotXem(int MaSP)
        {
            SanPham sp = db.SanPhams.Single(n => n.MaSP == MaSP);
            sp.LuotXem += 1;
            db.SaveChanges();
        }
        public ActionResult Index()
        {
            ViewBag.DangNhapFrom = 0;
            ViewBag.MaKM = LayMaKM();
            return View();
        }
        public ActionResult SanPhamMoiPartial()
        {
            var listSPMoi = db.SanPhams.OrderByDescending(n => n.NgayCapNhat).Take(8).ToList();
            return PartialView(listSPMoi.ToList());
        }
        public ActionResult SanPhamDanhGiaCaoPartial()
        {
            var lstDanhGia = db.SanPhams.Select(n => n).OrderByDescending(n => n.TrungBinhDanhGia);
            return PartialView(lstDanhGia);

        }
        public ActionResult SanPhamKhuyenMaiPartial(int MaKM)
        {
            var listSPKM = from ctkm in db.ChiTietKhuyenMais
                           join km in db.KhuyenMais on ctkm.MaKM equals km.MaKM
                           join sp in db.SanPhams on ctkm.MaSP equals sp.MaSP
                           where km.MaKM == MaKM
                           select new TakeEverything
                           {
                               ID = sp.MaSP,
                               TenSP = sp.TenSP,
                               SoLuongTon = (int)sp.SoLuongTon,
                               DonGia = (decimal)sp.DonGia,
                               GiamGia = (int)ctkm.GiamGia,
                               HinhAnh = sp.HinhAnh,
                               TrungBinhDanhGia = (double)sp.TrungBinhDanhGia
                           };
            return PartialView(listSPKM);

        }

        public ActionResult ChiTietSanPham(int MaSP, double ? GiaSale)
        {
            UpdateLuotXem(MaSP);
            ViewBag.GiaSale = GiaSale;
            ViewBag.SoLuongDanhGia = db.BinhLuans.Count(n => n.MaSP == MaSP);
            ViewBag.TongDanhGia = (from bl in db.BinhLuans where bl.MaSP == MaSP select bl).Sum(n => n.DanhGia);
            var ctsp = from sp in db.SanPhams where sp.MaSP == MaSP select sp;
            return View(ctsp.Single());
        }
        public ActionResult NavPartial()
        {
            return PartialView();
        }

        public ActionResult SearchPartial(int ? TongSoSanPham)
        {
            ViewBag.TongSoSanPham = TongSoSanPham ?? 0;
            return PartialView();
        }
        public ActionResult DemNguocPartial(int MaKM)
        {
            KhuyenMai km = db.KhuyenMais.SingleOrDefault(n => n.MaKM == MaKM);
            ViewBag.NgayKetThuc = km.NgayKetThuc;
            return PartialView(km);
        }
        [HttpGet]
        public ActionResult FooterPartial()
        {
            return PartialView();
        }
        [HttpPost]
        public ActionResult FooterPartial(FormCollection f)
        {
/*            var email = f["email"];
            var check = db.EmailKhuyenMais.SingleOrDefault(e => e.Email.Equals(email));
            if(check == null)
            {
                EmailKhuyenMai em = new EmailKhuyenMai();
                em.Email = email;
                db.EmailKhuyenMais.Add(em);
                ViewBag.TongTien = 40000000;
                db.SaveChanges();
            }*/
            return PartialView();
        }
    

        public ActionResult SanPhamKhuyenMai(int ? Page)
        {
            int MaKM = LayMaKM();
            int PageNum = Page ?? 1;
            var listSPKM = (from ctkm in db.ChiTietKhuyenMais
                           join km in db.KhuyenMais on ctkm.MaKM equals km.MaKM
                           join sp in db.SanPhams on ctkm.MaSP equals sp.MaSP
                           where km.MaKM == MaKM
                           select new TakeEverything
                           {
                               ID = sp.MaSP,
                               TenSP = sp.TenSP,
                               DonGia = (decimal)sp.DonGia,
                               GiamGia = (int)ctkm.GiamGia,
                               HinhAnh = sp.HinhAnh,
                               TrungBinhDanhGia = (double)sp.TrungBinhDanhGia
                           }).OrderBy(n=>n.ID);

            return View(listSPKM.ToPagedList(PageNum, 8));

        }


    }
}
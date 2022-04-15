using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using PagedList.Mvc;
using Electro.Models;

namespace Electro.Controllers
{
    public class NhaSanXuatController : Controller
    {
        ElectroDbContext db = new ElectroDbContext();
        // GET: NhaSanXuat
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
        public ActionResult LocSanPhamTheoNSX(int MaNSX, int? Page)
        {
            ViewBag.MaNSX = MaNSX;
            int PageNum = Page ?? 1;
            var kq = (from sp in db.SanPhams where sp.MaNSX == MaNSX select sp).OrderBy(n => n.MaSP).ToList();
            int MaKM = LayMaKM();
            ViewBag.SPKM = from ctkm in db.ChiTietKhuyenMais
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
                           };

            return View(kq.ToPagedList(PageNum, 8));
        }
    }
}
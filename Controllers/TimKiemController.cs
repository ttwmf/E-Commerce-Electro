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
    
    public class TimKiemController : Controller
    {
        ElectroDbContext db = new ElectroDbContext();
        // GET: TimKiem
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult KetQuaTimKiem(string TuKhoa, int? Page)
        {
            ViewBag.TuKhoa = TuKhoa;
            int PageNum = Page ?? 1;
            var kq = (from sp in db.SanPhams where sp.TenSP.Contains(TuKhoa) select sp).OrderBy(n => n.MaSP).ToList(); ;
            
            ViewBag.SPKM = from  ctkm in db.ChiTietKhuyenMais
                           join km in db.KhuyenMais on ctkm.MaKM equals km.MaKM
                           join sp in db.SanPhams on ctkm.MaSP equals sp.MaSP
                           where km.MaKM == 1
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
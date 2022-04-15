using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Electro.Models
{
    public class TakeEverything
    {
        public int ID { get; set; }
        public int MaSP { get; set; }
        public string TenSP { get; set; }
        public int GiamGia { get; set; }
        public decimal DonGia { get; set; }
        public string HinhAnh { get; set; }
        public double TrungBinhDanhGia { get; set; }
        public int SoSao { get; set; }
        public int SoLuongDanhGia { get; set; }
        public int SoLuongTon { get; set; }
        public int SoLuongTrongGioHang { get; set; }
        public string CauHinh { get; set; }
        public string text { get; set; }
        public int? SoLuongBan { get; set; }
        public decimal ThanhTien()
        {
            return this.DonGia * this.SoLuongTrongGioHang;
        }
        public TakeEverything()
        {

        }
    }
}
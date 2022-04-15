namespace Electro.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SanPham")]
    public partial class SanPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SanPham()
        {
            BinhLuans = new HashSet<BinhLuan>();
            ChiTietDonDatHangs = new HashSet<ChiTietDonDatHang>();
            ChiTietKhuyenMais = new HashSet<ChiTietKhuyenMai>();
            ChiTietPhieuNhaps = new HashSet<ChiTietPhieuNhap>();
            GioHangs = new HashSet<GioHang>();
        }

        [Key]
        public int MaSP { get; set; }

        public int? MaNCC { get; set; }

        public int? MaNSX { get; set; }

        public string TenSP { get; set; }


        public decimal? DonGia { get; set; }

        public int? SoLuongTon { get; set; }

        public DateTime? NgayCapNhat { get; set; }

        [StringLength(4000)]
        public string CauHinh { get; set; }

        [StringLength(4000)]

        public string MoTa { get; set; }


        public string HinhAnh { get; set; }

        public int? LuotXem { get; set; }

        public double? TrungBinhDanhGia { get; set; }

        public bool? DaXoa { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BinhLuan> BinhLuans { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietDonDatHang> ChiTietDonDatHangs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietKhuyenMai> ChiTietKhuyenMais { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietPhieuNhap> ChiTietPhieuNhaps { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GioHang> GioHangs { get; set; }

        public virtual NhaCungCap NhaCungCap { get; set; }

        public virtual NhaSanXuat NhaSanXuat { get; set; }
    }
}

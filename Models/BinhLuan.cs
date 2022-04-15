namespace Electro.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BinhLuan")]
    public partial class BinhLuan
    {
        [Key]
        public int MaBinhLuan { get; set; }

        [StringLength(200)]
        public string NguoiBinhLuan { get; set; }

        [StringLength(200)]
        public string Email { get; set; }

        [Required]
        [StringLength(4000)]
        public string NoiDung { get; set; }

        public int? MaSP { get; set; }

        public int? DanhGia { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayBinhLuan { get; set; }

        public virtual SanPham SanPham { get; set; }
    }
}

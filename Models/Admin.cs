namespace Electro.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Admin")]
    public partial class Admin
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Admin()
        {
            PhieuNhaps = new HashSet<PhieuNhap>();
        }

        [Key]
        public int MaAdmin { get; set; }

        [Required]
        [StringLength(200)]
        public string HoTen { get; set; }

        [StringLength(200)]
        public string TaiKhoan { get; set; }

        [StringLength(200)]
        public string matkhau { get; set; }

        [StringLength(500)]
        public string DiaChi { get; set; }

        [StringLength(200)]
        public string Email { get; set; }

        [StringLength(10)]
        public string DienThoai { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgaySinh { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhieuNhap> PhieuNhaps { get; set; }
    }
}

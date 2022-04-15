namespace Electro.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("EmailKhuyenMai")]
    public partial class EmailKhuyenMai
    {
        public int ID { get; set; }

        [Required]
        [StringLength(2000)]
        public string Email { get; set; }
    }
}

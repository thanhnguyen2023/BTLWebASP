namespace Model.Entity_Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ThongBao")]
    public partial class ThongBao
    {
        [Key]
        public int MaTB { get; set; }

        public int? MaNguoiNhan { get; set; }

        [StringLength(50)]
        public string LoaiNguoiNhan { get; set; }

        [Required]
        public string NoiDung { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayGui { get; set; }
    }
}

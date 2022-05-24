using System;
using System.Collections.Generic;

namespace HRMO.Models
{
    public partial class Thanhtoanluong
    {
        public int Id { get; set; }
        public string Manv { get; set; } = null!;
        public int Maluong { get; set; }
        public int Macong { get; set; }
        public int Thang { get; set; }
        public int Nam { get; set; }
        public decimal? Tamung { get; set; }
        public decimal? Thuong { get; set; }
        public decimal? Khautru { get; set; }
        public decimal Thuclinh { get; set; }
        public Guid Rowguid { get; set; }

        public virtual Cong MacongNavigation { get; set; } = null!;
        public virtual Luong MaluongNavigation { get; set; } = null!;
        public virtual Nhanvien ManvNavigation { get; set; } = null!;
    }
}

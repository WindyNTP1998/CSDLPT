using System;
using System.Collections.Generic;

namespace HRMO.Models
{
    public partial class Nghiviec
    {
        public int Manghi { get; set; }
        public string Manv { get; set; } = null!;
        public string Mapb { get; set; } = null!;
        public DateTime Ngaynghi { get; set; }
        public DateTime Nghiden { get; set; }
        public string Lydo { get; set; } = null!;
        public int? Chapnhan { get; set; }
        public Guid Rowguid { get; set; }

        public virtual Nhanvien ManvNavigation { get; set; } = null!;
    }
}

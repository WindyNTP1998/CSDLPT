using System;
using System.Collections.Generic;

namespace HRMO.Models
{
    public partial class Chucvu
    {
        public Chucvu()
        {
            Nhanviens = new HashSet<Nhanvien>();
        }

        public string Macv { get; set; } = null!;
        public string Tencv { get; set; } = null!;
        public Guid Rowguid { get; set; }

        public virtual ICollection<Nhanvien> Nhanviens { get; set; }
    }
}

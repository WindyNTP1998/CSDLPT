using System;
using System.Collections.Generic;

namespace HRMO.Models
{
    public partial class Phongban
    {
        public Phongban()
        {
            Nhanviens = new HashSet<Nhanvien>();
        }

        public string Mapb { get; set; } = null!;
        public string Mavp { get; set; } = null!;
        public string Tenvp { get; set; } = null!;
        public string? Mota { get; set; }
        public Guid Rowguid { get; set; }

        public virtual Vanphong MavpNavigation { get; set; } = null!;
        public virtual ICollection<Nhanvien> Nhanviens { get; set; }
    }
}

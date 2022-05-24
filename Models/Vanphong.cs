using System;
using System.Collections.Generic;

namespace HRMO.Models
{
    public partial class Vanphong
    {
        public Vanphong()
        {
            Phongbans = new HashSet<Phongban>();
        }

        public string Mavp { get; set; } = null!;
        public string Tenvp { get; set; } = null!;
        public string Diachivp { get; set; } = null!;
        public string Sdtvp { get; set; } = null!;
        public Guid Rowguid { get; set; }

        public virtual ICollection<Phongban> Phongbans { get; set; }
    }
}

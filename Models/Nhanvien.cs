namespace HRMO.Models
{
    public partial class Nhanvien
    {
        public Nhanvien()
        {
            Accounts = new HashSet<Account>();
            Congs = new HashSet<Cong>();
            Hopdongs = new HashSet<Hopdong>();
            Luongs = new HashSet<Luong>();
            Nghiviecs = new HashSet<Nghiviec>();
            Thanhtoanluongs = new HashSet<Thanhtoanluong>();
        }

        public string Manv { get; set; } = null!;
        public string Mapb { get; set; } = null!;
        public string Macv { get; set; } = null!;
        public string Hoten { get; set; } = null!;
        public DateTime? Ngaysinh { get; set; }
        public int? Gioitinh { get; set; }
        public string? Cmnd { get; set; }
        public string? Diachi { get; set; }
        public string? Dienthoai { get; set; }
        public string? Hocvan { get; set; }
        public int Trangthai { get; set; }
        public string Email { get; set; } = null!;
        public string? Sobhxh { get; set; }
        public string? Sobhyt { get; set; }
        public Guid Rowguid { get; set; }

        public virtual Chucvu MacvNavigation { get; set; } = null!;
        public virtual Phongban MapbNavigation { get; set; } = null!;
        public virtual ICollection<Account> Accounts { get; set; }
        public virtual ICollection<Cong> Congs { get; set; }
        public virtual ICollection<Hopdong> Hopdongs { get; set; }
        public virtual ICollection<Luong> Luongs { get; set; }
        public virtual ICollection<Nghiviec> Nghiviecs { get; set; }
        public virtual ICollection<Thanhtoanluong> Thanhtoanluongs { get; set; }
    }
}

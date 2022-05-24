namespace HRMO.Models
{
    public partial class Hopdong
    {
        public int Mahd { get; set; }
        public string Manv { get; set; } = null!;
        public DateTime Ngayky { get; set; }
        public DateTime? Hanhd { get; set; }
        public int Trangthai { get; set; }
        public Guid Rowguid { get; set; }

        public virtual Nhanvien ManvNavigation { get; set; } = null!;
    }
}

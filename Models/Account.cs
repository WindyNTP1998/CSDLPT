namespace HRMO.Models
{
    public partial class Account
    {
        public string Username { get; set; } = null!;
        public string Password { get; set; } = null!;
        public string Manv { get; set; } = null!;
        public int Role { get; set; }
        public string? Imageurl { get; set; }
        public Guid Rowguid { get; set; }

        public virtual Nhanvien ManvNavigation { get; set; } = null!;
    }
}

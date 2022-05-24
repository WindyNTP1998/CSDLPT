namespace HRMO.Models
{
    public partial class Luong
    {
        public Luong()
        {
            Thanhtoanluongs = new HashSet<Thanhtoanluong>();
        }

        public int Maluong { get; set; }
        public string? Manv { get; set; }
        public decimal? Mucluong { get; set; }
        public Guid Rowguid { get; set; }

        public virtual Nhanvien? ManvNavigation { get; set; }
        public virtual ICollection<Thanhtoanluong> Thanhtoanluongs { get; set; }
    }
}

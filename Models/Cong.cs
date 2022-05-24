namespace HRMO.Models
{
    public partial class Cong
    {
        public Cong()
        {
            Thanhtoanluongs = new HashSet<Thanhtoanluong>();
        }

        public int Macong { get; set; }
        public string? Manv { get; set; }
        public int? Giocongchuan { get; set; }
        public int? Giocong { get; set; }
        public int? Thang { get; set; }
        public int? Nam { get; set; }
        public Guid Rowguid { get; set; }

        public virtual Nhanvien? ManvNavigation { get; set; }
        public virtual ICollection<Thanhtoanluong> Thanhtoanluongs { get; set; }
    }
}

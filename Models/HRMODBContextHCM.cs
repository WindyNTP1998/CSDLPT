using Microsoft.EntityFrameworkCore;

namespace HRMO.Models
{
    public partial class HRMODBContextHCM : DbContext
    {

        public HRMODBContextHCM() { }

        public HRMODBContextHCM(DbContextOptions<HRMODBContextHCM> options)
            : base(options)
        {
        }

        public virtual DbSet<Account> Accounts { get; set; } = null!;
        public virtual DbSet<Chucvu> Chucvus { get; set; } = null!;
        public virtual DbSet<Cong> Congs { get; set; } = null!;
        public virtual DbSet<Hopdong> Hopdongs { get; set; } = null!;
        public virtual DbSet<Luong> Luongs { get; set; } = null!;
        public virtual DbSet<Nghiviec> Nghiviecs { get; set; } = null!;
        public virtual DbSet<Nhanvien> Nhanviens { get; set; } = null!;
        public virtual DbSet<Phongban> Phongbans { get; set; } = null!;
        public virtual DbSet<Thanhtoanluong> Thanhtoanluongs { get; set; } = null!;
        public virtual DbSet<Vanphong> Vanphongs { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Server=DESKTOP-RFS50QE\\CLIENT01;Database=HRMODB;Trusted_Connection=True;");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Account>(entity =>
            {
                entity.HasKey(e => e.Username)
                    .HasName("PK__ACCOUNT__F3DBC57373C9AF90");

                entity.ToTable("ACCOUNT");

                entity.HasIndex(e => e.Rowguid, "MSmerge_index_1125579048")
                    .IsUnique();

                entity.Property(e => e.Username)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("username");

                entity.Property(e => e.Imageurl).HasColumnName("imageurl");

                entity.Property(e => e.Manv)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("manv");

                entity.Property(e => e.Password)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("password");

                entity.Property(e => e.Role).HasColumnName("role");

                entity.Property(e => e.Rowguid)
                    .HasColumnName("rowguid")
                    .HasDefaultValueSql("(newsequentialid())");

                entity.HasOne(d => d.ManvNavigation)
                    .WithMany(p => p.Accounts)
                    .HasForeignKey(d => d.Manv)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_USER_ACT");
            });

            modelBuilder.Entity<Chucvu>(entity =>
            {
                entity.HasKey(e => e.Macv)
                    .HasName("PK__CHUCVU__7A21F8483C018CB0");

                entity.ToTable("CHUCVU");

                entity.HasIndex(e => e.Rowguid, "MSmerge_index_709577566")
                    .IsUnique();

                entity.Property(e => e.Macv)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("macv");

                entity.Property(e => e.Rowguid)
                    .HasColumnName("rowguid")
                    .HasDefaultValueSql("(newsequentialid())");

                entity.Property(e => e.Tencv)
                    .HasMaxLength(255)
                    .HasColumnName("tencv");
            });

            modelBuilder.Entity<Cong>(entity =>
            {
                entity.HasKey(e => e.Macong)
                    .HasName("PK__CONG__5F827A444C38D9F0");

                entity.ToTable("CONG");

                entity.HasIndex(e => e.Rowguid, "MSmerge_index_805577908")
                    .IsUnique();

                entity.Property(e => e.Macong).HasColumnName("macong");

                entity.Property(e => e.Giocong).HasColumnName("giocong");

                entity.Property(e => e.Giocongchuan).HasColumnName("giocongchuan");

                entity.Property(e => e.Manv)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("manv");

                entity.Property(e => e.Nam).HasColumnName("nam");

                entity.Property(e => e.Rowguid)
                    .HasColumnName("rowguid")
                    .HasDefaultValueSql("(newsequentialid())");

                entity.Property(e => e.Thang).HasColumnName("thang");

                entity.HasOne(d => d.ManvNavigation)
                    .WithMany(p => p.Congs)
                    .HasForeignKey(d => d.Manv)
                    .HasConstraintName("FK_CONG_NV");
            });

            modelBuilder.Entity<Hopdong>(entity =>
            {
                entity.HasKey(e => e.Mahd)
                    .HasName("PK__HOPDONG__7A2100DE5C7E68DB");

                entity.ToTable("HOPDONG");

                entity.HasIndex(e => e.Rowguid, "MSmerge_index_677577452")
                    .IsUnique();

                entity.Property(e => e.Mahd).HasColumnName("mahd");

                entity.Property(e => e.Hanhd)
                    .HasColumnType("date")
                    .HasColumnName("hanhd");

                entity.Property(e => e.Manv)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("manv");

                entity.Property(e => e.Ngayky)
                    .HasColumnType("date")
                    .HasColumnName("ngayky");

                entity.Property(e => e.Rowguid)
                    .HasColumnName("rowguid")
                    .HasDefaultValueSql("(newsequentialid())");

                entity.Property(e => e.Trangthai).HasColumnName("trangthai");

                entity.HasOne(d => d.ManvNavigation)
                    .WithMany(p => p.Hopdongs)
                    .HasForeignKey(d => d.Manv)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_HD_NV");
            });

            modelBuilder.Entity<Luong>(entity =>
            {
                entity.HasKey(e => e.Maluong)
                    .HasName("PK__LUONG__D42D7FA2975D38D4");

                entity.ToTable("LUONG");

                entity.HasIndex(e => e.Rowguid, "MSmerge_index_773577794")
                    .IsUnique();

                entity.Property(e => e.Maluong).HasColumnName("maluong");

                entity.Property(e => e.Manv)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("manv");

                entity.Property(e => e.Mucluong)
                    .HasColumnType("money")
                    .HasColumnName("mucluong");

                entity.Property(e => e.Rowguid)
                    .HasColumnName("rowguid")
                    .HasDefaultValueSql("(newsequentialid())");

                entity.HasOne(d => d.ManvNavigation)
                    .WithMany(p => p.Luongs)
                    .HasForeignKey(d => d.Manv)
                    .HasConstraintName("FK_LUONG_NV");
            });

            modelBuilder.Entity<Nghiviec>(entity =>
            {
                entity.HasKey(e => e.Manghi)
                    .HasName("PK__NGHIVIEC__3B6681B1459F1795");

                entity.ToTable("NGHIVIEC");

                entity.HasIndex(e => e.Rowguid, "MSmerge_index_917578307")
                    .IsUnique();

                entity.Property(e => e.Manghi).HasColumnName("manghi");

                entity.Property(e => e.Chapnhan)
                    .HasColumnName("chapnhan")
                    .HasDefaultValueSql("((0))");

                entity.Property(e => e.Lydo).HasColumnName("lydo");

                entity.Property(e => e.Manv)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("manv");

                entity.Property(e => e.Mapb)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("mapb");

                entity.Property(e => e.Ngaynghi)
                    .HasColumnType("date")
                    .HasColumnName("ngaynghi");

                entity.Property(e => e.Nghiden)
                    .HasColumnType("date")
                    .HasColumnName("nghiden");

                entity.Property(e => e.Rowguid)
                    .HasColumnName("rowguid")
                    .HasDefaultValueSql("(newsequentialid())");

                entity.HasOne(d => d.ManvNavigation)
                    .WithMany(p => p.Nghiviecs)
                    .HasForeignKey(d => d.Manv)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_NGHI_NV");
            });

            modelBuilder.Entity<Nhanvien>(entity =>
            {
                entity.HasKey(e => e.Manv)
                    .HasName("PK__NHANVIEN__7A21B37D6CA456D2");

                entity.ToTable("NHANVIEN");

                entity.HasIndex(e => e.Rowguid, "MSmerge_index_613577224")
                    .IsUnique();

                entity.Property(e => e.Manv)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("manv");

                entity.Property(e => e.Cmnd)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("cmnd");

                entity.Property(e => e.Diachi)
                    .HasMaxLength(255)
                    .HasColumnName("diachi");

                entity.Property(e => e.Dienthoai)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("dienthoai");

                entity.Property(e => e.Email)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("email");

                entity.Property(e => e.Gioitinh).HasColumnName("gioitinh");

                entity.Property(e => e.Hocvan)
                    .HasMaxLength(255)
                    .HasColumnName("hocvan");

                entity.Property(e => e.Hoten)
                    .HasMaxLength(255)
                    .HasColumnName("hoten");

                entity.Property(e => e.Macv)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("macv");

                entity.Property(e => e.Mapb)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("mapb");

                entity.Property(e => e.Ngaysinh)
                    .HasColumnType("date")
                    .HasColumnName("ngaysinh");

                entity.Property(e => e.Rowguid)
                    .HasColumnName("rowguid")
                    .HasDefaultValueSql("(newsequentialid())");

                entity.Property(e => e.Sobhxh)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("sobhxh");

                entity.Property(e => e.Sobhyt)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("sobhyt");

                entity.Property(e => e.Trangthai).HasColumnName("trangthai");

                entity.HasOne(d => d.MacvNavigation)
                    .WithMany(p => p.Nhanviens)
                    .HasForeignKey(d => d.Macv)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_NV_CV");

                entity.HasOne(d => d.MapbNavigation)
                    .WithMany(p => p.Nhanviens)
                    .HasForeignKey(d => d.Mapb)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_NV_PB");
            });

            modelBuilder.Entity<Phongban>(entity =>
            {
                entity.HasKey(e => e.Mapb)
                    .HasName("PK__PHONGBAN__7A21C3D64E2AA918");

                entity.ToTable("PHONGBAN");

                entity.HasIndex(e => e.Rowguid, "MSmerge_index_741577680")
                    .IsUnique();

                entity.Property(e => e.Mapb)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("mapb");

                entity.Property(e => e.Mavp)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("mavp");

                entity.Property(e => e.Mota)
                    .HasMaxLength(255)
                    .HasColumnName("mota");

                entity.Property(e => e.Rowguid)
                    .HasColumnName("rowguid")
                    .HasDefaultValueSql("(newsequentialid())");

                entity.Property(e => e.Tenvp)
                    .HasMaxLength(255)
                    .HasColumnName("tenvp");

                entity.HasOne(d => d.MavpNavigation)
                    .WithMany(p => p.Phongbans)
                    .HasForeignKey(d => d.Mavp)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PB_VP");
            });

            modelBuilder.Entity<Thanhtoanluong>(entity =>
            {
                entity.ToTable("THANHTOANLUONG");

                entity.HasIndex(e => e.Rowguid, "MSmerge_index_837578022")
                    .IsUnique();

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Khautru)
                    .HasColumnType("money")
                    .HasColumnName("khautru")
                    .HasDefaultValueSql("((0))");

                entity.Property(e => e.Macong).HasColumnName("macong");

                entity.Property(e => e.Maluong).HasColumnName("maluong");

                entity.Property(e => e.Manv)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("manv");

                entity.Property(e => e.Nam).HasColumnName("nam");

                entity.Property(e => e.Rowguid)
                    .HasColumnName("rowguid")
                    .HasDefaultValueSql("(newsequentialid())");

                entity.Property(e => e.Tamung)
                    .HasColumnType("money")
                    .HasColumnName("tamung")
                    .HasDefaultValueSql("((0))");

                entity.Property(e => e.Thang).HasColumnName("thang");

                entity.Property(e => e.Thuclinh)
                    .HasColumnType("money")
                    .HasColumnName("thuclinh");

                entity.Property(e => e.Thuong)
                    .HasColumnType("money")
                    .HasColumnName("thuong")
                    .HasDefaultValueSql("((0))");

                entity.HasOne(d => d.MacongNavigation)
                    .WithMany(p => p.Thanhtoanluongs)
                    .HasForeignKey(d => d.Macong)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TTL_CONG");

                entity.HasOne(d => d.MaluongNavigation)
                    .WithMany(p => p.Thanhtoanluongs)
                    .HasForeignKey(d => d.Maluong)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TTL_LUONG");

                entity.HasOne(d => d.ManvNavigation)
                    .WithMany(p => p.Thanhtoanluongs)
                    .HasForeignKey(d => d.Manv)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TTL_NV");
            });

            modelBuilder.Entity<Vanphong>(entity =>
            {
                entity.HasKey(e => e.Mavp)
                    .HasName("PK__VANPHONG__7A208E5197BA43A1");

                entity.ToTable("VANPHONG");

                entity.HasIndex(e => e.Rowguid, "MSmerge_index_581577110")
                    .IsUnique();

                entity.Property(e => e.Mavp)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("mavp");

                entity.Property(e => e.Diachivp)
                    .HasMaxLength(255)
                    .HasColumnName("diachivp");

                entity.Property(e => e.Rowguid)
                    .HasColumnName("rowguid")
                    .HasDefaultValueSql("(newsequentialid())");

                entity.Property(e => e.Sdtvp)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("sdtvp");

                entity.Property(e => e.Tenvp)
                    .HasMaxLength(255)
                    .HasColumnName("tenvp");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}

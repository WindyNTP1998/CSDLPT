USE [HRM]
GO
/****** Object:  Table [dbo].[ACCOUNT]    Script Date: 5/25/2022 4:09:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACCOUNT](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[manv] [varchar](20) NULL,
	[role] [int] NOT NULL,
	[imageurl] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHUCVU]    Script Date: 5/25/2022 4:09:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUCVU](
	[macv] [varchar](20) NOT NULL,
	[tencv] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[macv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONG]    Script Date: 5/25/2022 4:09:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONG](
	[macong] [int] IDENTITY(1,1) NOT NULL,
	[manv] [varchar](20) NULL,
	[giocongchuan] [int] NULL,
	[giocong] [int] NULL,
	[thang] [int] NULL,
	[nam] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[macong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOPDONG]    Script Date: 5/25/2022 4:09:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOPDONG](
	[mahd] [int] IDENTITY(1,1) NOT NULL,
	[manv] [varchar](20) NOT NULL,
	[ngayky] [date] NOT NULL,
	[hanhd] [date] NULL,
	[trangthai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LUONG]    Script Date: 5/25/2022 4:09:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LUONG](
	[maluong] [int] IDENTITY(1,1) NOT NULL,
	[manv] [varchar](20) NULL,
	[mucluong] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[maluong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGHIVIEC]    Script Date: 5/25/2022 4:09:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGHIVIEC](
	[manghi] [int] IDENTITY(1,1) NOT NULL,
	[manv] [varchar](20) NOT NULL,
	[mapb] [varchar](20) NOT NULL,
	[ngaynghi] [date] NULL,
	[nghiden] [date] NULL,
	[lydo] [nvarchar](max) NULL,
	[chapnhan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[manghi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 5/25/2022 4:09:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[manv] [varchar](20) NOT NULL,
	[mapb] [varchar](20) NOT NULL,
	[macv] [varchar](20) NOT NULL,
	[hoten] [nvarchar](255) NOT NULL,
	[ngaysinh] [date] NULL,
	[gioitinh] [int] NULL,
	[cmnd] [varchar](20) NULL,
	[diachi] [nvarchar](255) NULL,
	[dienthoai] [varchar](20) NULL,
	[hocvan] [nvarchar](255) NULL,
	[trangthai] [int] NOT NULL,
	[email] [varchar](255) NOT NULL,
	[sobhxh] [varchar](20) NULL,
	[sobhyt] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHONGBAN]    Script Date: 5/25/2022 4:09:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONGBAN](
	[mapb] [varchar](20) NOT NULL,
	[mavp] [varchar](20) NOT NULL,
	[tenvp] [nvarchar](255) NOT NULL,
	[mota] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[mapb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THANHTOANLUONG]    Script Date: 5/25/2022 4:09:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THANHTOANLUONG](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[manv] [varchar](20) NOT NULL,
	[maluong] [int] NOT NULL,
	[macong] [int] NOT NULL,
	[thang] [int] NULL,
	[nam] [int] NULL,
	[tamung] [money] NULL,
	[thuong] [money] NULL,
	[khautru] [money] NULL,
	[thuclinh] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VANPHONG]    Script Date: 5/25/2022 4:09:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VANPHONG](
	[mavp] [varchar](20) NOT NULL,
	[tenvp] [nvarchar](255) NOT NULL,
	[diachivp] [nvarchar](255) NOT NULL,
	[sdtvp] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mavp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ACCOUNT] ON 

INSERT [dbo].[ACCOUNT] ([id], [username], [password], [manv], [role], [imageurl]) VALUES (1, N'Admin', N'0EF3E419B0BB5196187E01D2B9BA4292', NULL, 0, NULL)
INSERT [dbo].[ACCOUNT] ([id], [username], [password], [manv], [role], [imageurl]) VALUES (2, N'dung.nguyen', N'E10ADC3949BA59ABBE56E057F20F883E', N'001001', 2, NULL)
INSERT [dbo].[ACCOUNT] ([id], [username], [password], [manv], [role], [imageurl]) VALUES (3, N'huong.nguyen', N'E10ADC3949BA59ABBE56E057F20F883E', N'002005', 1, NULL)
INSERT [dbo].[ACCOUNT] ([id], [username], [password], [manv], [role], [imageurl]) VALUES (4, N'nhung.bui', N'E10ADC3949BA59ABBE56E057F20F883E', N'001004', 1, NULL)
INSERT [dbo].[ACCOUNT] ([id], [username], [password], [manv], [role], [imageurl]) VALUES (5, N'phong.nguyen', N'E10ADC3949BA59ABBE56E057F20F883E', N'001002', 2, NULL)
INSERT [dbo].[ACCOUNT] ([id], [username], [password], [manv], [role], [imageurl]) VALUES (6, N'duy.nguyen', N'123456', N'002006', 2, NULL)
INSERT [dbo].[ACCOUNT] ([id], [username], [password], [manv], [role], [imageurl]) VALUES (7, N'hien.mai', N'Orient@123', N'001010', 2, N'')
INSERT [dbo].[ACCOUNT] ([id], [username], [password], [manv], [role], [imageurl]) VALUES (8, N'duy.nguyen', N'123456', N'002006', 2, NULL)
SET IDENTITY_INSERT [dbo].[ACCOUNT] OFF
GO
INSERT [dbo].[CHUCVU] ([macv], [tencv]) VALUES (N'ACCT', N'Accounting')
INSERT [dbo].[CHUCVU] ([macv], [tencv]) VALUES (N'BO', N'Back Office')
INSERT [dbo].[CHUCVU] ([macv], [tencv]) VALUES (N'DH', N'Department of health')
INSERT [dbo].[CHUCVU] ([macv], [tencv]) VALUES (N'HR', N'Human Resource')
INSERT [dbo].[CHUCVU] ([macv], [tencv]) VALUES (N'HRIntern', N'Human Resource Intern')
INSERT [dbo].[CHUCVU] ([macv], [tencv]) VALUES (N'Intern', N'Software Intership')
INSERT [dbo].[CHUCVU] ([macv], [tencv]) VALUES (N'IT', N'It Support')
INSERT [dbo].[CHUCVU] ([macv], [tencv]) VALUES (N'JE', N'Junior Developer')
INSERT [dbo].[CHUCVU] ([macv], [tencv]) VALUES (N'PM', N'Project Manager')
INSERT [dbo].[CHUCVU] ([macv], [tencv]) VALUES (N'PO', N'Product Owner')
INSERT [dbo].[CHUCVU] ([macv], [tencv]) VALUES (N'QC', N'Quality Control')
INSERT [dbo].[CHUCVU] ([macv], [tencv]) VALUES (N'SA', N'Solution Architect')
INSERT [dbo].[CHUCVU] ([macv], [tencv]) VALUES (N'SE', N'Software Engine')
GO
SET IDENTITY_INSERT [dbo].[CONG] ON 

INSERT [dbo].[CONG] ([macong], [manv], [giocongchuan], [giocong], [thang], [nam]) VALUES (1, N'001001', 176, 176, 4, 2022)
INSERT [dbo].[CONG] ([macong], [manv], [giocongchuan], [giocong], [thang], [nam]) VALUES (2, N'001002', 176, 175, 4, 2022)
INSERT [dbo].[CONG] ([macong], [manv], [giocongchuan], [giocong], [thang], [nam]) VALUES (3, N'001003', 176, 176, 4, 2022)
INSERT [dbo].[CONG] ([macong], [manv], [giocongchuan], [giocong], [thang], [nam]) VALUES (4, N'001004', 176, 176, 4, 2022)
INSERT [dbo].[CONG] ([macong], [manv], [giocongchuan], [giocong], [thang], [nam]) VALUES (5, N'002005', 176, 176, 4, 2022)
INSERT [dbo].[CONG] ([macong], [manv], [giocongchuan], [giocong], [thang], [nam]) VALUES (6, N'001010', 176, 176, 4, 2022)
INSERT [dbo].[CONG] ([macong], [manv], [giocongchuan], [giocong], [thang], [nam]) VALUES (7, N'002006', 176, 176, 4, 2022)
INSERT [dbo].[CONG] ([macong], [manv], [giocongchuan], [giocong], [thang], [nam]) VALUES (8, N'001001', 160, 165, 5, 2022)
INSERT [dbo].[CONG] ([macong], [manv], [giocongchuan], [giocong], [thang], [nam]) VALUES (10, N'001002', 160, 155, 5, 2022)
SET IDENTITY_INSERT [dbo].[CONG] OFF
GO
SET IDENTITY_INSERT [dbo].[HOPDONG] ON 

INSERT [dbo].[HOPDONG] ([mahd], [manv], [ngayky], [hanhd], [trangthai]) VALUES (1, N'001001', CAST(N'2021-10-01' AS Date), CAST(N'2023-10-01' AS Date), 1)
INSERT [dbo].[HOPDONG] ([mahd], [manv], [ngayky], [hanhd], [trangthai]) VALUES (2, N'001002', CAST(N'2022-01-01' AS Date), CAST(N'2023-01-01' AS Date), 1)
INSERT [dbo].[HOPDONG] ([mahd], [manv], [ngayky], [hanhd], [trangthai]) VALUES (3, N'001003', CAST(N'2021-10-01' AS Date), CAST(N'2022-10-01' AS Date), 1)
INSERT [dbo].[HOPDONG] ([mahd], [manv], [ngayky], [hanhd], [trangthai]) VALUES (4, N'001004', CAST(N'2021-01-01' AS Date), CAST(N'2023-10-01' AS Date), 1)
INSERT [dbo].[HOPDONG] ([mahd], [manv], [ngayky], [hanhd], [trangthai]) VALUES (5, N'002005', CAST(N'2019-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
INSERT [dbo].[HOPDONG] ([mahd], [manv], [ngayky], [hanhd], [trangthai]) VALUES (6, N'001010', CAST(N'2019-03-01' AS Date), NULL, 1)
INSERT [dbo].[HOPDONG] ([mahd], [manv], [ngayky], [hanhd], [trangthai]) VALUES (7, N'002006', CAST(N'2022-01-30' AS Date), NULL, 1)
INSERT [dbo].[HOPDONG] ([mahd], [manv], [ngayky], [hanhd], [trangthai]) VALUES (8, N'001001', CAST(N'2018-01-01' AS Date), CAST(N'2021-09-30' AS Date), 0)
INSERT [dbo].[HOPDONG] ([mahd], [manv], [ngayky], [hanhd], [trangthai]) VALUES (9, N'001002', CAST(N'2019-01-01' AS Date), CAST(N'2020-12-31' AS Date), 0)
SET IDENTITY_INSERT [dbo].[HOPDONG] OFF
GO
SET IDENTITY_INSERT [dbo].[LUONG] ON 

INSERT [dbo].[LUONG] ([maluong], [manv], [mucluong]) VALUES (1, N'001001', 1800.0000)
INSERT [dbo].[LUONG] ([maluong], [manv], [mucluong]) VALUES (2, N'001002', 900.0000)
INSERT [dbo].[LUONG] ([maluong], [manv], [mucluong]) VALUES (3, N'001003', 1000.0000)
INSERT [dbo].[LUONG] ([maluong], [manv], [mucluong]) VALUES (4, N'001004', 850.0000)
INSERT [dbo].[LUONG] ([maluong], [manv], [mucluong]) VALUES (5, N'002005', 799.0000)
INSERT [dbo].[LUONG] ([maluong], [manv], [mucluong]) VALUES (6, N'001010', 1000.0000)
INSERT [dbo].[LUONG] ([maluong], [manv], [mucluong]) VALUES (7, N'002006', 800.0000)
SET IDENTITY_INSERT [dbo].[LUONG] OFF
GO
INSERT [dbo].[NHANVIEN] ([manv], [mapb], [macv], [hoten], [ngaysinh], [gioitinh], [cmnd], [diachi], [dienthoai], [hocvan], [trangthai], [email], [sobhxh], [sobhyt]) VALUES (N'001001', N'Rc', N'PM', N'Tran Manh Dung', CAST(N'1990-01-01' AS Date), 0, N'123456789', N'123 Khu pho A', N'01234567890', N'Thac Si', 1, N'dung.tran@osd.com', N'123123123', N'13123123312')
INSERT [dbo].[NHANVIEN] ([manv], [mapb], [macv], [hoten], [ngaysinh], [gioitinh], [cmnd], [diachi], [dienthoai], [hocvan], [trangthai], [email], [sobhxh], [sobhyt]) VALUES (N'001002', N'Rc', N'SE', N'Nguyen Thanh Phong', CAST(N'1998-01-01' AS Date), 0, N'123123123', N'19 Nguyễn Hữu Thọ', N'0123123123', N'Cu Nhan', 1, N'phong.nguyen@osd.com', N'123123132', N'12312312313')
INSERT [dbo].[NHANVIEN] ([manv], [mapb], [macv], [hoten], [ngaysinh], [gioitinh], [cmnd], [diachi], [dienthoai], [hocvan], [trangthai], [email], [sobhxh], [sobhyt]) VALUES (N'001003', N'Rc', N'PM', N'Nguyen Van A', CAST(N'1990-01-01' AS Date), 0, N'123456789', N'123 Khu pho A', N'01234567890', N'Thac Si', 1, N'a.nguyen@osd.com', N'123123124', N'13123123311')
INSERT [dbo].[NHANVIEN] ([manv], [mapb], [macv], [hoten], [ngaysinh], [gioitinh], [cmnd], [diachi], [dienthoai], [hocvan], [trangthai], [email], [sobhxh], [sobhyt]) VALUES (N'001004', N'HRH', N'HR', N'Bui Tuyet Nhung', CAST(N'1992-03-02' AS Date), 1, N'131313332', N'123 Duong so 345', N'01312313333', N'Cu Nhan', 1, N'nhung.bui@osd.com', N'123321132', N'11112332134')
INSERT [dbo].[NHANVIEN] ([manv], [mapb], [macv], [hoten], [ngaysinh], [gioitinh], [cmnd], [diachi], [dienthoai], [hocvan], [trangthai], [email], [sobhxh], [sobhyt]) VALUES (N'001010', N'Rc', N'SE', N'Mai Vinh Hien', NULL, NULL, NULL, NULL, NULL, NULL, 2, N'hien.mai@osd.com', NULL, NULL)
INSERT [dbo].[NHANVIEN] ([manv], [mapb], [macv], [hoten], [ngaysinh], [gioitinh], [cmnd], [diachi], [dienthoai], [hocvan], [trangthai], [email], [sobhxh], [sobhyt]) VALUES (N'002005', N'HRD', N'HR', N'Nguyen Thi Huong', CAST(N'1992-08-14' AS Date), 1, N'131212321', N'ABC Duong XYZ', N'0123474849', N'Cao Dang', 1, N'huong.nguyen@osd.com', N'123123222', N'12312312322')
INSERT [dbo].[NHANVIEN] ([manv], [mapb], [macv], [hoten], [ngaysinh], [gioitinh], [cmnd], [diachi], [dienthoai], [hocvan], [trangthai], [email], [sobhxh], [sobhyt]) VALUES (N'002006', N'HRD', N'SE', N'Nguyen Nhat Duy', NULL, NULL, NULL, NULL, NULL, NULL, 2, N'duy.nguyen@osd.com', NULL, NULL)
GO
INSERT [dbo].[PHONGBAN] ([mapb], [mavp], [tenvp], [mota]) VALUES (N'BT', N'HCM', N'Braco Talent HCM', NULL)
INSERT [dbo].[PHONGBAN] ([mapb], [mavp], [tenvp], [mota]) VALUES (N'Dekra', N'DN', N'Neurond Danang - Dekra', NULL)
INSERT [dbo].[PHONGBAN] ([mapb], [mavp], [tenvp], [mota]) VALUES (N'HRD', N'DN', N'HR Đà Nẵng', NULL)
INSERT [dbo].[PHONGBAN] ([mapb], [mavp], [tenvp], [mota]) VALUES (N'HRH', N'HCM', N'HR HCM', NULL)
INSERT [dbo].[PHONGBAN] ([mapb], [mavp], [tenvp], [mota]) VALUES (N'NTUC', N'DN', N'Orient Danang - NTUC', NULL)
INSERT [dbo].[PHONGBAN] ([mapb], [mavp], [tenvp], [mota]) VALUES (N'Pool', N'HCM', N'HCM - Pool', NULL)
INSERT [dbo].[PHONGBAN] ([mapb], [mavp], [tenvp], [mota]) VALUES (N'Rc', N'HCM', N'Raccoon', NULL)
GO
INSERT [dbo].[VANPHONG] ([mavp], [tenvp], [diachivp], [sdtvp]) VALUES (N'DN', N'Đà Nẵng', N'11th floor, 220 Nguyen Huu Tho Street Hoa Cuong Bac Ward, Hải Châu, Đà Nẵng 550000', N'01234567891')
INSERT [dbo].[VANPHONG] ([mavp], [tenvp], [diachivp], [sdtvp]) VALUES (N'HCM', N'Hồ Chí Minh', N'364 Đ. Cộng Hòa, Phường 13, Tân Bình, Thành phố Hồ Chí Minh', N'01234567890')
GO
ALTER TABLE [dbo].[NGHIVIEC] ADD  DEFAULT ((0)) FOR [chapnhan]
GO
ALTER TABLE [dbo].[THANHTOANLUONG] ADD  DEFAULT ((0)) FOR [tamung]
GO
ALTER TABLE [dbo].[THANHTOANLUONG] ADD  DEFAULT ((0)) FOR [thuong]
GO
ALTER TABLE [dbo].[THANHTOANLUONG] ADD  DEFAULT ((0)) FOR [khautru]
GO
ALTER TABLE [dbo].[ACCOUNT]  WITH CHECK ADD  CONSTRAINT [FK_USER_ACT] FOREIGN KEY([manv])
REFERENCES [dbo].[NHANVIEN] ([manv])
GO
ALTER TABLE [dbo].[ACCOUNT] CHECK CONSTRAINT [FK_USER_ACT]
GO
ALTER TABLE [dbo].[CONG]  WITH CHECK ADD  CONSTRAINT [FK_CONG_NV] FOREIGN KEY([manv])
REFERENCES [dbo].[NHANVIEN] ([manv])
GO
ALTER TABLE [dbo].[CONG] CHECK CONSTRAINT [FK_CONG_NV]
GO
ALTER TABLE [dbo].[HOPDONG]  WITH CHECK ADD  CONSTRAINT [FK_HD_NV] FOREIGN KEY([manv])
REFERENCES [dbo].[NHANVIEN] ([manv])
GO
ALTER TABLE [dbo].[HOPDONG] CHECK CONSTRAINT [FK_HD_NV]
GO
ALTER TABLE [dbo].[LUONG]  WITH CHECK ADD  CONSTRAINT [FK_LUONG_NV] FOREIGN KEY([manv])
REFERENCES [dbo].[NHANVIEN] ([manv])
GO
ALTER TABLE [dbo].[LUONG] CHECK CONSTRAINT [FK_LUONG_NV]
GO
ALTER TABLE [dbo].[NGHIVIEC]  WITH CHECK ADD  CONSTRAINT [FK_NGHI_NV] FOREIGN KEY([manv])
REFERENCES [dbo].[NHANVIEN] ([manv])
GO
ALTER TABLE [dbo].[NGHIVIEC] CHECK CONSTRAINT [FK_NGHI_NV]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NV_CV] FOREIGN KEY([macv])
REFERENCES [dbo].[CHUCVU] ([macv])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NV_CV]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NV_PB] FOREIGN KEY([mapb])
REFERENCES [dbo].[PHONGBAN] ([mapb])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NV_PB]
GO
ALTER TABLE [dbo].[PHONGBAN]  WITH CHECK ADD  CONSTRAINT [FK_PB_VP] FOREIGN KEY([mavp])
REFERENCES [dbo].[VANPHONG] ([mavp])
GO
ALTER TABLE [dbo].[PHONGBAN] CHECK CONSTRAINT [FK_PB_VP]
GO
ALTER TABLE [dbo].[THANHTOANLUONG]  WITH CHECK ADD  CONSTRAINT [FK_TTL_CONG] FOREIGN KEY([macong])
REFERENCES [dbo].[CONG] ([macong])
GO
ALTER TABLE [dbo].[THANHTOANLUONG] CHECK CONSTRAINT [FK_TTL_CONG]
GO
ALTER TABLE [dbo].[THANHTOANLUONG]  WITH CHECK ADD  CONSTRAINT [FK_TTL_LUONG] FOREIGN KEY([maluong])
REFERENCES [dbo].[LUONG] ([maluong])
GO
ALTER TABLE [dbo].[THANHTOANLUONG] CHECK CONSTRAINT [FK_TTL_LUONG]
GO
ALTER TABLE [dbo].[THANHTOANLUONG]  WITH CHECK ADD  CONSTRAINT [FK_TTL_NV] FOREIGN KEY([manv])
REFERENCES [dbo].[NHANVIEN] ([manv])
GO
ALTER TABLE [dbo].[THANHTOANLUONG] CHECK CONSTRAINT [FK_TTL_NV]
GO

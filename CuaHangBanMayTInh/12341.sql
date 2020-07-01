USE [master]
GO
/****** Object:  Database [MuaBanXeDap]    Script Date: 6/30/2020 10:53:19 PM ******/
Drop DataBase [MuaBanXeDap]
CREATE DATABASE [MuaBanXeDap]

GO

USE [MuaBanXeDap]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 6/30/2020 10:53:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[maChiTietDonHang] [nvarchar](20) NOT NULL,
	[soLuong] [int] NULL,
	[thanhTien] [bigint] NULL,
	[tenKH] [nvarchar](100) NULL,
	[SDT] [int] NULL,
	[gmail] [nchar](50) NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[maChiTietDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 6/30/2020 10:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[maDonHang] [nvarchar](20) NOT NULL,
	[maKH] [nvarchar](20) NOT NULL,
	[maGioHang] [nvarchar](20) NULL,
	[trangThai] [nvarchar](20) NULL,
	[maNV] [nvarchar](20) NULL,
 CONSTRAINT [PK_DonHang_1] PRIMARY KEY CLUSTERED 
(
	[maDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 6/30/2020 10:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[maMayTinh] [nvarchar](20) NULL,
	[maDonHang] [nvarchar](20) NULL,
	[soLuong] [int] NULL,
	[donGia] [bigint] NULL,
	[ngayTao] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/30/2020 10:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKH] [nvarchar](20) NOT NULL,
	[tenKH] [nvarchar](100) NULL,
	[tenDangNhap] [nchar](50) NULL,
	[matKhau] [nchar](50) NULL,
	[gmail] [nchar](50) NULL,
	[SDT] [int] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiMayTinh]    Script Date: 6/30/2020 10:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiMayTinh](
	[maLoai] [nvarchar](20) NOT NULL,
	[tenLoai] [nvarchar](20) NULL,
	[ghiChu] [nchar](100) NULL,
 CONSTRAINT [PK_LoaiMayTinh] PRIMARY KEY CLUSTERED 
(
	[maLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MayTinh]    Script Date: 6/30/2020 10:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MayTinh](
	[maMayTinh] [nvarchar](20) NOT NULL,
	[tenMayTinh] [nvarchar](50) NULL,
	[maLoai] [nvarchar](20) NULL,
	[namSanXuat] [int] NULL,
	[Gia] [bigint] NULL,
 CONSTRAINT [PK_MayTinh] PRIMARY KEY CLUSTERED 
(
	[maMayTinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/30/2020 10:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNV] [nvarchar](20) NOT NULL,
	[tenNV] [nvarchar](100) NULL,
	[diaChi] [nvarchar](100) NULL,
	[SDT] [int] NULL,
	[matKhau] [nchar](20) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [tenDangNhap], [matKhau], [gmail], [SDT]) VALUES (N'KH001', N'Nguyen Hoang Anh', N'username1                                         ', N'username1                                         ', NULL, 23133213)
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [tenDangNhap], [matKhau], [gmail], [SDT]) VALUES (N'KH002', N'NGuyen Tien Anh', N'username2                                         ', N'username2                                         ', N'                                                  ', 241244123)
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [tenDangNhap], [matKhau], [gmail], [SDT]) VALUES (N'KH003', N'Bui Tien Toan', N'username3                                         ', N'username3                                         ', NULL, 12333213)
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [tenDangNhap], [matKhau], [gmail], [SDT]) VALUES (N'KH004', N'Hoang Thai Bao', N'username4                                         ', N'username4                                         ', NULL, 543413451)
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [tenDangNhap], [matKhau], [gmail], [SDT]) VALUES (N'KH005', N'Vo Nguyen Tu', N'username5                                         ', N'username5                                         ', NULL, 456345435)
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [tenDangNhap], [matKhau], [gmail], [SDT]) VALUES (N'KH006', N'Tran Hoang Vu ', N'username6                                         ', N'username6                                         ', NULL, 345355522)
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [tenDangNhap], [matKhau], [gmail], [SDT]) VALUES (N'KH007', N'Tien Anh Thanh', N'username7                                         ', N'username7                                         ', NULL, 346342425)
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [tenDangNhap], [matKhau], [gmail], [SDT]) VALUES (N'KH008', N'Nguyen Chien Anh', N'username8                                         ', N'username8                                         ', NULL, 392134421)
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [tenDangNhap], [matKhau], [gmail], [SDT]) VALUES (N'KH009', N'Le Huong Trang', N'username9                                         ', N'username9                                         ', NULL, 434222139)
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [tenDangNhap], [matKhau], [gmail], [SDT]) VALUES (N'KH010', N'Hoang Van Tu Anh', N'username10                                        ', N'username10                                        ', NULL, 654456001)
INSERT [dbo].[LoaiMayTinh] ([maLoai], [tenLoai], [ghiChu]) VALUES (N'LMT001', N'Card Màn Hình', NULL)
INSERT [dbo].[LoaiMayTinh] ([maLoai], [tenLoai], [ghiChu]) VALUES (N'LMT002', N'Chipset CPU', NULL)
INSERT [dbo].[LoaiMayTinh] ([maLoai], [tenLoai], [ghiChu]) VALUES (N'LMT003', N'Gear', NULL)
INSERT [dbo].[LoaiMayTinh] ([maLoai], [tenLoai], [ghiChu]) VALUES (N'LMT004', N'Bộ Nhớ Ngoài', NULL)
INSERT [dbo].[MayTinh] ([maMayTinh], [tenMayTinh], [maLoai], [namSanXuat], [Gia]) VALUES (N'MT001', N'Chuot May Tinh ABC', N'LMT003', 2019, 300000)
INSERT [dbo].[MayTinh] ([maMayTinh], [tenMayTinh], [maLoai], [namSanXuat], [Gia]) VALUES (N'MT002', N'Ban Phim May Tinh', N'LMT001', 2018, 299000)
INSERT [dbo].[MayTinh] ([maMayTinh], [tenMayTinh], [maLoai], [namSanXuat], [Gia]) VALUES (N'MT003', N'Chip intel I5 103000', N'LMT002', 2020, 8999000)
INSERT [dbo].[MayTinh] ([maMayTinh], [tenMayTinh], [maLoai], [namSanXuat], [Gia]) VALUES (N'MT004', N'Chip Ryzen 7 3900X', N'LMT002', 2019, 23999000)
INSERT [dbo].[MayTinh] ([maMayTinh], [tenMayTinh], [maLoai], [namSanXuat], [Gia]) VALUES (N'MT006', N'Card do hoa GTX 1060', N'LMT001', 2016, 6999000)
INSERT [dbo].[MayTinh] ([maMayTinh], [tenMayTinh], [maLoai], [namSanXuat], [Gia]) VALUES (N'MT007', N'Card do hoa GTX 1050TI', N'LMT001', 2016, 3999000)
INSERT [dbo].[MayTinh] ([maMayTinh], [tenMayTinh], [maLoai], [namSanXuat], [Gia]) VALUES (N'MT008', N'Card do hoa RX 580', N'LMT001', 2016, 7499000)
INSERT [dbo].[MayTinh] ([maMayTinh], [tenMayTinh], [maLoai], [namSanXuat], [Gia]) VALUES (N'MT009', N'main Z490', N'LMT003', 2019, 3999000)
INSERT [dbo].[MayTinh] ([maMayTinh], [tenMayTinh], [maLoai], [namSanXuat], [Gia]) VALUES (N'MT010', N'Tai Nghe bluetool', N'LMT003', 2014, 1199000)
INSERT [dbo].[MayTinh] ([maMayTinh], [tenMayTinh], [maLoai], [namSanXuat], [Gia]) VALUES (N'MT011', N'Quat Tan Nhiet ', N'LMT003', 2013, 390000)
INSERT [dbo].[MayTinh] ([maMayTinh], [tenMayTinh], [maLoai], [namSanXuat], [Gia]) VALUES (N'MT012', N'Ram DDR3 4GB', N'LMT004', 2016, 500000)
INSERT [dbo].[MayTinh] ([maMayTinh], [tenMayTinh], [maLoai], [namSanXuat], [Gia]) VALUES (N'MT013', N'Ram DDR4 8GB', N'LMT004', 2018, 1200000)
INSERT [dbo].[MayTinh] ([maMayTinh], [tenMayTinh], [maLoai], [namSanXuat], [Gia]) VALUES (N'MT014', N'O Cung 500GB', N'LMT004', 2015, 600000)
INSERT [dbo].[MayTinh] ([maMayTinh], [tenMayTinh], [maLoai], [namSanXuat], [Gia]) VALUES (N'MT015', N'O Cung HHD 1TB', N'LMT004', 2015, 1150000)
INSERT [dbo].[MayTinh] ([maMayTinh], [tenMayTinh], [maLoai], [namSanXuat], [Gia]) VALUES (N'MT016', N'O Cung SSD 500GB', N'LMT004', 2017, 1500000)
INSERT [dbo].[MayTinh] ([maMayTinh], [tenMayTinh], [maLoai], [namSanXuat], [Gia]) VALUES (N'MT017', N'Tai Nghe Không Dây ', N'LMT003', 2018, 300000)
INSERT [dbo].[MayTinh] ([maMayTinh], [tenMayTinh], [maLoai], [namSanXuat], [Gia]) VALUES (N'MT018', N'main H470', N'LMT003', 2020, 6999000)
INSERT [dbo].[MayTinh] ([maMayTinh], [tenMayTinh], [maLoai], [namSanXuat], [Gia]) VALUES (N'MT019', N'Chip Ryzen 5 3400', N'LMT002', 2017, 4999000)
INSERT [dbo].[MayTinh] ([maMayTinh], [tenMayTinh], [maLoai], [namSanXuat], [Gia]) VALUES (N'MT020', N'Vỏ Cây FDAC', N'LMT003', 2015, 990000)
INSERT [dbo].[MayTinh] ([maMayTinh], [tenMayTinh], [maLoai], [namSanXuat], [Gia]) VALUES (N'MT021', N'Tản Nhiệt Nước KOJA', N'LMT003', 2012, 999000)
INSERT [dbo].[NhanVien] ([maNV], [tenNV], [diaChi], [SDT], [matKhau]) VALUES (N'NV001', N'NGuyen Hoang Tien Minh', NULL, 234213124, N'NV001               ')
INSERT [dbo].[NhanVien] ([maNV], [tenNV], [diaChi], [SDT], [matKhau]) VALUES (N'NV002', N'Bui Van Anh Tai', NULL, 532621136, NULL)
INSERT [dbo].[NhanVien] ([maNV], [tenNV], [diaChi], [SDT], [matKhau]) VALUES (N'NV003', N'Tran The Minh', NULL, 887345002, N'NV003               ')
INSERT [dbo].[NhanVien] ([maNV], [tenNV], [diaChi], [SDT], [matKhau]) VALUES (N'NV004', N'Vo Sy Hoang', NULL, 242423441, NULL)
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_ChiTietDonHang] FOREIGN KEY([maDonHang])
REFERENCES [dbo].[ChiTietDonHang] ([maChiTietDonHang])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_ChiTietDonHang]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([maKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_NhanVien] FOREIGN KEY([maNV])
REFERENCES [dbo].[NhanVien] ([maNV])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_NhanVien]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_DonHang] FOREIGN KEY([maDonHang])
REFERENCES [dbo].[DonHang] ([maDonHang])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_DonHang]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_MayTinh] FOREIGN KEY([maMayTinh])
REFERENCES [dbo].[MayTinh] ([maMayTinh])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_MayTinh]
GO
ALTER TABLE [dbo].[MayTinh]  WITH CHECK ADD  CONSTRAINT [FK_MayTinh_LoaiMayTinh] FOREIGN KEY([maLoai])
REFERENCES [dbo].[LoaiMayTinh] ([maLoai])
GO
ALTER TABLE [dbo].[MayTinh] CHECK CONSTRAINT [FK_MayTinh_LoaiMayTinh]
GO
USE [master]
GO
ALTER DATABASE [MuaBanXeDap] SET  READ_WRITE 
GO

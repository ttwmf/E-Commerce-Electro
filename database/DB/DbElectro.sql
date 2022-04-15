USE [Electro]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 12/18/2021 9:41:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[MaAdmin] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](200) NOT NULL,
	[TaiKhoan] [varchar](200) NULL,
	[matkhau] [varchar](200) NULL,
	[DiaChi] [nvarchar](500) NULL,
	[Email] [varchar](200) NULL,
	[DienThoai] [varchar](10) NULL,
	[NgaySinh] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 12/18/2021 9:41:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[NguoiBinhLuan] [nvarchar](200) NULL,
	[Email] [varchar](200) NULL,
	[NoiDung] [nvarchar](4000) NOT NULL,
	[MaSP] [int] NULL,
	[DanhGia] [int] NULL,
	[NgayBinhLuan] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonDatHang]    Script Date: 12/18/2021 9:41:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonDatHang](
	[MaDDH] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[TenSP] [nvarchar](200) NULL,
	[SoLuong] [int] NULL,
	[DonGiaBan] [money] NULL,
	[DaXoa] [bit] NULL,
 CONSTRAINT [PK_CTDDH] PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietKhuyenMai]    Script Date: 12/18/2021 9:41:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietKhuyenMai](
	[MaKM] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[GiamGia] [int] NULL,
 CONSTRAINT [PK_CTKM] PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 12/18/2021 9:41:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaPN] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[TenSP] [nvarchar](200) NULL,
	[DonGiaNhap] [money] NOT NULL,
	[SoLuongNhap] [int] NULL,
 CONSTRAINT [PK_CTPN] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 12/18/2021 9:41:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDDH] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [date] NULL,
	[MaKH] [int] NULL,
	[Hoten] [nvarchar](400) NULL,
	[DiaChiGiaoHang] [nvarchar](400) NULL,
	[DienThoai] [varchar](10) NULL,
	[Email] [varchar](200) NULL,
	[PhuongThucThanhToan] [nvarchar](200) NULL,
	[TongTien] [money] NULL,
	[TinhTrang] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailKhuyenMai]    Script Date: 12/18/2021 9:41:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailKhuyenMai](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](2000) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 12/18/2021 9:41:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[MaKH] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_CTGH] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/18/2021 9:41:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](200) NOT NULL,
	[TaiKhoan] [varchar](200) NOT NULL,
	[MatKhau] [varchar](200) NOT NULL,
	[DiaChi] [nvarchar](200) NULL,
	[Email] [varchar](200) NULL,
	[DienThoai] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 12/18/2021 9:41:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaKM] [int] IDENTITY(1,1) NOT NULL,
	[TenChuongTrinh] [nvarchar](4000) NOT NULL,
	[NoiDung] [nvarchar](4000) NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 12/18/2021 9:41:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](200) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[Email] [varchar](200) NULL,
	[DienThoai] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 12/18/2021 9:41:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](200) NULL,
	[ThongTin] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 12/18/2021 9:41:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [int] NULL,
	[NgayNhap] [date] NULL,
	[NguoiNhap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/18/2021 9:41:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [int] NULL,
	[MaNSX] [int] NULL,
	[TenSP] [nvarchar](200) NOT NULL,
	[DonGia] [money] NULL,
	[SoLuongTon] [int] NULL,
	[NgayCapNhat] [date] NULL,
	[CauHinh] [nvarchar](4000) NULL,
	[MoTa] [nvarchar](4000) NULL,
	[HinhAnh] [nvarchar](500) NULL,
	[LuotXem] [int] NULL,
	[TrungBinhDanhGia] [float] NULL,
	[DaXoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 
GO
INSERT [dbo].[Admin] ([MaAdmin], [HoTen], [TaiKhoan], [matkhau], [DiaChi], [Email], [DienThoai], [NgaySinh]) VALUES (1, N'Hoàng Quang Thái', N'admin', N'1234', N'33 Lê Hồng Phong', N'hoangquangthai57@gmail.com', N'0967823093', CAST(N'1993-06-04' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[BinhLuan] ON 
GO
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NguoiBinhLuan], [Email], [NoiDung], [MaSP], [DanhGia], [NgayBinhLuan]) VALUES (1, N'Khá Bảnh', N'khabanh@gmail.com', N'Good', 2, 4, CAST(N'2021-07-28' AS Date))
GO
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NguoiBinhLuan], [Email], [NoiDung], [MaSP], [DanhGia], [NgayBinhLuan]) VALUES (2, N'Quang Trung', N'qtrung@gmail.com', N'Rất tốt', 2, 5, CAST(N'2021-07-28' AS Date))
GO
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NguoiBinhLuan], [Email], [NoiDung], [MaSP], [DanhGia], [NgayBinhLuan]) VALUES (3, N'Khá Bảnh', N'khabanh@gmail.com', N'Good', 5, 5, CAST(N'2021-07-28' AS Date))
GO
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NguoiBinhLuan], [Email], [NoiDung], [MaSP], [DanhGia], [NgayBinhLuan]) VALUES (4, N'Quang Trung', N'qtrung@gmail.com', N'Bad', 5, 1, CAST(N'2021-07-28' AS Date))
GO
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NguoiBinhLuan], [Email], [NoiDung], [MaSP], [DanhGia], [NgayBinhLuan]) VALUES (5, N'Quang Thai', N'hqthai@tdmu.edu.vn', N'Ok', 5, 4, CAST(N'2021-07-28' AS Date))
GO
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NguoiBinhLuan], [Email], [NoiDung], [MaSP], [DanhGia], [NgayBinhLuan]) VALUES (6, N'Khá Bảnh', N'khabanh@gmail.com', N'Tốt', 6, 5, CAST(N'2021-07-31' AS Date))
GO
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NguoiBinhLuan], [Email], [NoiDung], [MaSP], [DanhGia], [NgayBinhLuan]) VALUES (7, N'Quang Trung', N'qtrung@gmail.com', N'Bad', 6, 1, CAST(N'2021-07-31' AS Date))
GO
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NguoiBinhLuan], [Email], [NoiDung], [MaSP], [DanhGia], [NgayBinhLuan]) VALUES (8, N'Khá Bảnh', N'khabanh@gmail.com', N'good', 6, 5, CAST(N'2021-07-31' AS Date))
GO
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NguoiBinhLuan], [Email], [NoiDung], [MaSP], [DanhGia], [NgayBinhLuan]) VALUES (9, N'Quang Trung', N'khabanh@gmail.com', N'xxxx', 5, 1, CAST(N'2021-07-31' AS Date))
GO
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NguoiBinhLuan], [Email], [NoiDung], [MaSP], [DanhGia], [NgayBinhLuan]) VALUES (10, N'Khá Bảnh', N'khabanh@gmail.com', N'asdasdas', 20, 4, CAST(N'2021-12-17' AS Date))
GO
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGiaBan], [DaXoa]) VALUES (1, 1, N'ASUS ROG STRIX SCAR G15 G533QM - HF089T', 1, 34000000.0000, NULL)
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGiaBan], [DaXoa]) VALUES (1, 2, N'LAPTOP ASUS Siêu Vip Pro', 2, 28000000.0000, NULL)
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGiaBan], [DaXoa]) VALUES (3, 1, N'ASUS ROG STRIX SCAR G15 G533QM - HF089T', 1, 40000000.0000, NULL)
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGiaBan], [DaXoa]) VALUES (3, 4, N'ASUS ROG STRIX SCAR G15 G533QM - HF089T', 1, 40000000.0000, NULL)
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGiaBan], [DaXoa]) VALUES (4, 1, N'ASUS ROG STRIX SCAR G15 G533QM - HF089T', 17, 40000000.0000, NULL)
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGiaBan], [DaXoa]) VALUES (5, 31, N'Laptop ACER', 4, 12000000.0000, NULL)
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGiaBan], [DaXoa]) VALUES (5, 41, N'Laptop LG', 4, 12000000.0000, NULL)
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGiaBan], [DaXoa]) VALUES (6, 31, N'Laptop ACER', 3, 12000000.0000, NULL)
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGiaBan], [DaXoa]) VALUES (11, 10, N'ASUS ROG STRIX SCAR G15 G533QM - HF089T', 57, 40000000.0000, NULL)
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGiaBan], [DaXoa]) VALUES (12, 12, N'Toshiba Gramer', 1, 19000000.0000, NULL)
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGiaBan], [DaXoa]) VALUES (13, 12, N'Toshiba Gramer', 1, 19000000.0000, NULL)
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGiaBan], [DaXoa]) VALUES (13, 18, N'Toshiba Gramer', 16, 22000000.0000, NULL)
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGiaBan], [DaXoa]) VALUES (14, 12, N'Toshiba Gramer', 1, 19000000.0000, NULL)
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGiaBan], [DaXoa]) VALUES (15, 12, N'Toshiba Gramer', 1, 19000000.0000, NULL)
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGiaBan], [DaXoa]) VALUES (16, 12, N'Toshiba Gramer', 1, 19000000.0000, NULL)
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGiaBan], [DaXoa]) VALUES (17, 12, N'Toshiba Gramer', 1, 19000000.0000, NULL)
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGiaBan], [DaXoa]) VALUES (18, 12, N'Toshiba Gramer', 1, 19000000.0000, NULL)
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGiaBan], [DaXoa]) VALUES (19, 12, N'Toshiba Gramer', 2, 19000000.0000, NULL)
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGiaBan], [DaXoa]) VALUES (20, 12, N'Toshiba Gramer', 2, 19000000.0000, NULL)
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGiaBan], [DaXoa]) VALUES (21, 12, N'Toshiba Gramer', 1, 19000000.0000, NULL)
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGiaBan], [DaXoa]) VALUES (22, 12, N'Toshiba Gramer', 1, 19000000.0000, NULL)
GO
INSERT [dbo].[ChiTietKhuyenMai] ([MaKM], [MaSP], [GiamGia]) VALUES (16, 3, 1)
GO
INSERT [dbo].[ChiTietKhuyenMai] ([MaKM], [MaSP], [GiamGia]) VALUES (18, 3, 15)
GO
INSERT [dbo].[ChiTietKhuyenMai] ([MaKM], [MaSP], [GiamGia]) VALUES (18, 10, 22)
GO
INSERT [dbo].[ChiTietKhuyenMai] ([MaKM], [MaSP], [GiamGia]) VALUES (18, 12, 20)
GO
INSERT [dbo].[ChiTietKhuyenMai] ([MaKM], [MaSP], [GiamGia]) VALUES (18, 18, 10)
GO
INSERT [dbo].[ChiTietKhuyenMai] ([MaKM], [MaSP], [GiamGia]) VALUES (18, 20, 15)
GO
SET IDENTITY_INSERT [dbo].[DonDatHang] ON 
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayLap], [MaKH], [Hoten], [DiaChiGiaoHang], [DienThoai], [Email], [PhuongThucThanhToan], [TongTien], [TinhTrang]) VALUES (1, CAST(N'2021-07-28' AS Date), 1, N'Hoàng Quang Thái', N'06 Trần Văn Ơn', N'0967823093', N'hqthai@gmail.com', N'Chuyển khoản', 90000000.0000, N'Đã giao')
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayLap], [MaKH], [Hoten], [DiaChiGiaoHang], [DienThoai], [Email], [PhuongThucThanhToan], [TongTien], [TinhTrang]) VALUES (3, CAST(N'2021-07-31' AS Date), 1, N'Hoàng Quang Thái', N'06 Trần Văn Ơn', N'0967823093', N'hqthai@gmail.com', N'Chuyển khoản', 80000000.0000, N'Đang giao')
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayLap], [MaKH], [Hoten], [DiaChiGiaoHang], [DienThoai], [Email], [PhuongThucThanhToan], [TongTien], [TinhTrang]) VALUES (4, CAST(N'2021-07-31' AS Date), 1, N'Hoàng Quang Thái', N'12 Lê Hồng Phong', N'0967823093', N'hqthai@gmail.com', N'Thanh toán khi nhận hàng', 578000000.0000, N'Hủy')
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayLap], [MaKH], [Hoten], [DiaChiGiaoHang], [DienThoai], [Email], [PhuongThucThanhToan], [TongTien], [TinhTrang]) VALUES (5, CAST(N'2021-07-31' AS Date), NULL, N'Khá Bảnh', N'123 AAA', N'0967888888', N'khabanh@gmail.com', N'Chuyển khoản', 96000000.0000, N'Hủy')
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayLap], [MaKH], [Hoten], [DiaChiGiaoHang], [DienThoai], [Email], [PhuongThucThanhToan], [TongTien], [TinhTrang]) VALUES (6, CAST(N'2021-08-01' AS Date), NULL, N'Khá Bảnh', N'123 AAA', N'123456', N'khabanh@gmail.com', N'Chuyển khoản', 36000000.0000, N'Đã giao')
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayLap], [MaKH], [Hoten], [DiaChiGiaoHang], [DienThoai], [Email], [PhuongThucThanhToan], [TongTien], [TinhTrang]) VALUES (10, CAST(N'2021-12-06' AS Date), 1, N'Hoàng Quang Thái', N'12 Lê Hồng Phong', N'0967823093', N'hqthai@gmail.com', N'Đã chuyển khoản', 1809600000.0000, NULL)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayLap], [MaKH], [Hoten], [DiaChiGiaoHang], [DienThoai], [Email], [PhuongThucThanhToan], [TongTien], [TinhTrang]) VALUES (11, CAST(N'2021-12-06' AS Date), 1, N'Hoàng Quang Thái', N'12 Lê Hồng Phong', N'0967823093', N'hqthai@gmail.com', N'Đã chuyển khoản', 1778400000.0000, NULL)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayLap], [MaKH], [Hoten], [DiaChiGiaoHang], [DienThoai], [Email], [PhuongThucThanhToan], [TongTien], [TinhTrang]) VALUES (12, CAST(N'2021-12-06' AS Date), 1, N'Hoàng Quang Thái', N'12 Lê Hồng Phong', N'0967823093', N'hoangquangthai57@gmail.com', N'Đã chuyển khoản', 15200000.0000, NULL)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayLap], [MaKH], [Hoten], [DiaChiGiaoHang], [DienThoai], [Email], [PhuongThucThanhToan], [TongTien], [TinhTrang]) VALUES (13, CAST(N'2021-12-06' AS Date), 1, N'Hoàng Quang Thái', N'12 Lê Hồng Phong', N'0967823093', N'hqthai@gmail.com', N'Đã chuyển khoản', 332000000.0000, NULL)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayLap], [MaKH], [Hoten], [DiaChiGiaoHang], [DienThoai], [Email], [PhuongThucThanhToan], [TongTien], [TinhTrang]) VALUES (14, CAST(N'2021-12-06' AS Date), 1, N'Hoàng Quang Thái', N'12 Lê Hồng Phong', N'0967823093', N'hoangquangthai57@gmail.com', N'Đã chuyển khoản', 15200000.0000, NULL)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayLap], [MaKH], [Hoten], [DiaChiGiaoHang], [DienThoai], [Email], [PhuongThucThanhToan], [TongTien], [TinhTrang]) VALUES (15, CAST(N'2021-12-06' AS Date), 1, N'Hoàng Quang Thái', N'12 Lê Hồng Phong', N'0967823093', N'hqthai@gmail.com', N'Đã chuyển khoản', 15200000.0000, NULL)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayLap], [MaKH], [Hoten], [DiaChiGiaoHang], [DienThoai], [Email], [PhuongThucThanhToan], [TongTien], [TinhTrang]) VALUES (16, CAST(N'2021-12-06' AS Date), 1, N'Hoàng Quang Thái', N'12 Lê Hồng Phong', N'0967823093', N'hoangquangthai57@gmail.com', N'Đã chuyển khoản', 15200000.0000, NULL)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayLap], [MaKH], [Hoten], [DiaChiGiaoHang], [DienThoai], [Email], [PhuongThucThanhToan], [TongTien], [TinhTrang]) VALUES (17, CAST(N'2021-12-06' AS Date), 1, N'Hoàng Quang Thái', N'12 Lê Hồng Phong', N'0967823093', N'hoangquangthai57@gmail.com', N'Đã chuyển khoản', 15200000.0000, NULL)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayLap], [MaKH], [Hoten], [DiaChiGiaoHang], [DienThoai], [Email], [PhuongThucThanhToan], [TongTien], [TinhTrang]) VALUES (18, CAST(N'2021-12-06' AS Date), 1, N'Hoàng Quang Thái', N'12 Lê Hồng Phong', N'0967823093', N'hoangquangthai57@gmail.com', N'Đã chuyển khoản', 15200000.0000, NULL)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayLap], [MaKH], [Hoten], [DiaChiGiaoHang], [DienThoai], [Email], [PhuongThucThanhToan], [TongTien], [TinhTrang]) VALUES (19, CAST(N'2021-12-06' AS Date), 1, N'Hoàng Quang Thái', N'12 Lê Hồng Phong', N'0967823093', N'hoangquangthai57@gmail.com', N'Đã chuyển khoản', 30400000.0000, NULL)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayLap], [MaKH], [Hoten], [DiaChiGiaoHang], [DienThoai], [Email], [PhuongThucThanhToan], [TongTien], [TinhTrang]) VALUES (20, CAST(N'2021-12-06' AS Date), 1, N'Hoàng Quang Thái', N'12 Lê Hồng Phong', N'0967823093', N'hoangquangthai57@gmail.com', N'Đã chuyển khoản', 30400000.0000, NULL)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayLap], [MaKH], [Hoten], [DiaChiGiaoHang], [DienThoai], [Email], [PhuongThucThanhToan], [TongTien], [TinhTrang]) VALUES (21, CAST(N'2021-12-06' AS Date), 1, N'Hoàng Quang Thái', N'12 Lê Hồng Phong', N'0967823093', N'hoangquangthai57@gmail.com', N'Đã chuyển khoản', 15200000.0000, NULL)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayLap], [MaKH], [Hoten], [DiaChiGiaoHang], [DienThoai], [Email], [PhuongThucThanhToan], [TongTien], [TinhTrang]) VALUES (22, CAST(N'2021-12-06' AS Date), 1, N'Hoàng Quang Thái', N'12 Lê Hồng Phong', N'0967823093', N'hoangquangthai57@gmail.com', N'Đã chuyển khoản', 15200000.0000, NULL)
GO
SET IDENTITY_INSERT [dbo].[DonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[EmailKhuyenMai] ON 
GO
INSERT [dbo].[EmailKhuyenMai] ([ID], [Email]) VALUES (1, N'1923801030059@student.tdmu.edu.vn')
GO
INSERT [dbo].[EmailKhuyenMai] ([ID], [Email]) VALUES (2, N'1923801030145@student.tdmu.edu.vn')
GO
SET IDENTITY_INSERT [dbo].[EmailKhuyenMai] OFF
GO
INSERT [dbo].[GioHang] ([MaKH], [MaSP], [SoLuong]) VALUES (1, 6, 2)
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [DiaChi], [Email], [DienThoai]) VALUES (1, N'Hoàng Quang Thái', N'hqthai', N'1234', N'12 Lê Hồng Phong', N'hoangquangthai57@gmail.com', N'0967823093')
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [DiaChi], [Email], [DienThoai]) VALUES (2, N'Hoàng Lê Vương', N'hlvuong', N'1234', N'15 Tuệ Tĩnh', N'vuongle@tdmu.edu.vn', N'0968541235')
GO
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhuyenMai] ON 
GO
INSERT [dbo].[KhuyenMai] ([MaKM], [TenChuongTrinh], [NoiDung], [NgayBatDau], [NgayKetThuc]) VALUES (16, N'Mừng quốc khánh', N'Kỷ niệm 76 năm ngày quốc khánh Việt Nam', CAST(N'2021-08-30' AS Date), CAST(N'2021-09-07' AS Date))
GO
INSERT [dbo].[KhuyenMai] ([MaKM], [TenChuongTrinh], [NoiDung], [NgayBatDau], [NgayKetThuc]) VALUES (17, N'Mùa hè sôi động', N'Rộn ràng mùa hè', CAST(N'2021-05-05' AS Date), CAST(N'2021-05-10' AS Date))
GO
INSERT [dbo].[KhuyenMai] ([MaKM], [TenChuongTrinh], [NoiDung], [NgayBatDau], [NgayKetThuc]) VALUES (18, N'Mừng hết dịch Covid-19', N'Mừng hết dịch Covid-19
', CAST(N'2021-12-17' AS Date), CAST(N'2021-12-30' AS Date))
GO
SET IDENTITY_INSERT [dbo].[KhuyenMai] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [DienThoai]) VALUES (1, N'Sài Gòn KTS', N'154 Lê Hồng Phong', N'rvasic0@smugmug.com', N'2369085115')
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [DienThoai]) VALUES (2, N'Việt Sơn Group', N'240 Lê Lai, Q1, HCM', N'ccobley1@addtoany.com', N'2861951836')
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [DienThoai]) VALUES (3, N'LG Đế Minh', N'06 Trần Văn Ơn', N'abriscow2@360.cn', N'4852066753')
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [DienThoai]) VALUES (4, N'Apple VN', N'154 Lê Hồng Phong', N'strouel3@reverbnation.com', N'1374929060')
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [DienThoai]) VALUES (5, N'Đại Nam Group', N'06 Trần Văn Ơn', N'twaring4@army.mil', N'2032514439')
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (1, N'Asus', N'Thương hiệu laptop nổi tiếng đến từ châu Âu')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (2, N'Toshiba', N'Thương hiệu laptop nổi tiếng đến từ châu Âu')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (3, N'Dell', N'Thương hiệu laptop cao cấp')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (4, N'Acer', N'Thương hiệu laptop cao cấp')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (5, N'HP', N'Thương hiệu laptop nổi tiếng đến từ châu Âu')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (6, N'LG', N'Thương hiệu laptop nổi tiếng đến từ châu Âu')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (7, N'Apple', N'Thương hiệu laptop nổi tiếng đến từ châu Âu')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (8, N'Lenovo', N'Thương hiệu laptop cao cấp')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (9, N'Razer', N'Thương hiệu laptop nổi tiếng đến từ châu Âu')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (10, N'MSI', N'Thương hiệu laptop nổi tiếng đến từ châu Âu')
GO
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (1, 2, 1, N'ASUS ROG STRIX SCAR G15 G533QM - HF089T', 40000000.0000, 20, CAST(N'2021-08-05' AS Date), N'R9-5900HX  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB  15.6 FHD IPS 300Hz  Win10', N'R9-5900HX 16GB DDR4 SSD 1TB PCIe VGA RTX 3060 6GB 15.6 FHD IPS 300Hz Win10/n', N'asus02.png', 85, 0, 1)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (2, 3, 1, N'LAPTOP ASUS Siêu Vip Pro', 40000000.0000, 14, CAST(N'2021-08-05' AS Date), N'R9-5900HX  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB  15.6 FHD IPS 300Hz  Win10', N'R9-5900HX 16GB DDR4 SSD 1TB PCIe VGA RTX 3060 6GB 15.6 FHD IPS 300Hz Win10/n', N'lg01.png', 113, 4, 1)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (3, 3, 1, N'LAPTOP ASUS ROG STRIX G15 G513QE - HN010T (Gray)', 40000000.0000, 0, CAST(N'2021-08-05' AS Date), N'R9-5900HX  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB  15.6 FHD IPS 300Hz  Win10', N'R9-5900HX 16GB DDR4 SSD 1TB PCIe VGA RTX 3060 6GB 15.6 FHD IPS 300Hz Win10/n', N'asus02.png', 54, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (4, 5, 1, N'ASUS ROG STRIX SCAR G15 G533QM - HF089T', 40000000.0000, 82, CAST(N'2020-08-26' AS Date), N'R9-5900HX  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB  15.6 FHD IPS 300Hz  Win10', N'Giữa năm 2020, Asus ROG STRIX SCAR G15 G533  ra mắt với hàng loạt cải tiến về công nghệ. Chiến games ở đẳng cấp cao nhất với Windows 10 trên ROG Strix SCAR 15. Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'asus02.png', 36, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (5, 5, 1, N'ASUS ROG STRIX SCAR G15 G533QM - HF089T', 40000000.0000, 0, CAST(N'2021-05-28' AS Date), N'R9-5900HX  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB  15.6 FHD IPS 300Hz  Win10', N'Giữa năm 2020, Asus ROG STRIX SCAR G15 G533  ra mắt với hàng loạt cải tiến về công nghệ. Chiến games ở đẳng cấp cao nhất với Windows 10 trên ROG Strix SCAR 15. Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'asus02.png', 67, 2, 1)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (6, 4, 1, N'LAPTOP ASUS ROG STRIX G15 G513QE - HN010T (Gray)', 40000000.0000, 5, CAST(N'2021-08-05' AS Date), N'R9-5900HX  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB  15.6 FHD IPS 300Hz  Win10', N'R9-5900HX 16GB DDR4 SSD 1TB PCIe VGA RTX 3060 6GB 15.6 FHD IPS 300Hz Win10/n', N'asus01.png', 76, 3, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (7, 5, 1, N'ASUS ROG STRIX SCAR G15 G533QM - HF089T', 40000000.0000, 52, CAST(N'2020-07-28' AS Date), N'R9-5900HX  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB  15.6 FHD IPS 300Hz  Win10', N'Giữa năm 2020, Asus ROG STRIX SCAR G15 G533  ra mắt với hàng loạt cải tiến về công nghệ. Chiến games ở đẳng cấp cao nhất với Windows 10 trên ROG Strix SCAR 15. Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'asus02.png', 10, 0, 1)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (8, 3, 1, N'ASUS ROG STRIX SCAR G15 G533QM - HF089T', 40000000.0000, 80, CAST(N'2020-10-13' AS Date), N'R9-5900HX  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB  15.6 FHD IPS 300Hz  Win10', N'Giữa năm 2020, Asus ROG STRIX SCAR G15 G533  ra mắt với hàng loạt cải tiến về công nghệ. Chiến games ở đẳng cấp cao nhất với Windows 10 trên ROG Strix SCAR 15. Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'asus02.png', 53, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (9, 4, 1, N'ASUS ROG STRIX SCAR G15 G533QM - HF089T', 40000000.0000, 57, CAST(N'2021-02-07' AS Date), N'R9-5900HX  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB  15.6 FHD IPS 300Hz  Win10', N'Giữa năm 2020, Asus ROG STRIX SCAR G15 G533  ra mắt với hàng loạt cải tiến về công nghệ. Chiến games ở đẳng cấp cao nhất với Windows 10 trên ROG Strix SCAR 15. Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'asus01.png', 57, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (10, 1, 1, N'ASUS ROG STRIX SCAR G15 G533QM - HF089T', 40000000.0000, 0, CAST(N'2020-12-13' AS Date), N'R9-5900HX  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB  15.6 FHD IPS 300Hz  Win10', N'Giữa năm 2020, Asus ROG STRIX SCAR G15 G533  ra mắt với hàng loạt cải tiến về công nghệ. Chiến games ở đẳng cấp cao nhất với Windows 10 trên ROG Strix SCAR 15. Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'asus02.png', 76, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (11, 1, 2, N'Toshiba Gramer', 22000000.0000, 6, CAST(N'2020-11-23' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'toshiba01.png', 18, 0, 1)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (12, 3, 2, N'Toshiba Gramer', 19000000.0000, 18, CAST(N'2021-03-23' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'toshiba02.png', 97, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (13, 5, 2, N'Toshiba Gramer', 22000000.0000, 54, CAST(N'2020-09-16' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'toshiba02.png', 59, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (14, 1, 2, N'Toshiba Evovi', 22000000.0000, 4, CAST(N'2021-06-10' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'toshiba01.png', 100, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (15, 5, 2, N'Toshiba Evovi', 19000000.0000, 0, CAST(N'2021-06-17' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'toshiba02.png', 80, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (16, 4, 2, N'Toshiba Gramer', 12000000.0000, 2, CAST(N'2021-03-30' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'toshiba02.png', 65, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (17, 4, 2, N'Toshiba Gramer', 12000000.0000, 23, CAST(N'2021-04-25' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'toshiba02.png', 66, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (18, 3, 2, N'Toshiba Gramer', 22000000.0000, 0, CAST(N'2020-10-18' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'toshiba01.png', 38, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (19, 3, 2, N'Toshiba Evovi', 12000000.0000, 98, CAST(N'2021-02-13' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'toshiba01.png', 55, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (20, 4, 2, N'Toshiba Gramer', 22000000.0000, 85, CAST(N'2020-08-27' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'toshiba01.png', 89, 4, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (21, 5, 3, N'Laptop Dell', 12000000.0000, 50, CAST(N'2021-06-29' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'dell02.png', 61, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (22, 2, 3, N'Laptop Dell', 22000000.0000, 40, CAST(N'2021-01-29' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'dell02.png', 35, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (23, 4, 3, N'Laptop Dell', 22000000.0000, 28, CAST(N'2020-07-21' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'dell01.png', 66, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (24, 3, 3, N'Laptop Dell', 12000000.0000, 99, CAST(N'2021-06-12' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'dell02.png', 81, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (25, 5, 3, N'Laptop Dell', 19000000.0000, 13, CAST(N'2021-03-10' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'dell02.png', 26, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (26, 5, 3, N'Laptop Dell', 12000000.0000, 61, CAST(N'2020-09-18' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'dell01.png', 28, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (27, 4, 3, N'Laptop Dell', 12000000.0000, 75, CAST(N'2020-09-10' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'dell02.png', 42, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (28, 1, 3, N'Laptop Dell', 19000000.0000, 6, CAST(N'2021-05-31' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'dell02.png', 54, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (29, 4, 3, N'Laptop Dell', 12000000.0000, 11, CAST(N'2021-01-21' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'dell02.png', 66, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (30, 2, 3, N'Laptop Dell', 12000000.0000, 56, CAST(N'2021-03-09' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'dell02.png', 44, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (31, 5, 4, N'Laptop ACER', 12000000.0000, 41, CAST(N'2021-06-29' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'acer01.png', 68, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (32, 2, 4, N'Laptop ACER', 22000000.0000, 40, CAST(N'2021-01-29' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'acer01.png', 34, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (33, 4, 4, N'Laptop ACER', 22000000.0000, 28, CAST(N'2020-07-21' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'acer02.png', 66, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (34, 3, 4, N'Laptop ACER', 12000000.0000, 99, CAST(N'2021-06-12' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'acer02.png', 81, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (35, 5, 4, N'Laptop ACER', 19000000.0000, 13, CAST(N'2021-03-10' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'acer01.png', 26, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (36, 5, 5, N'Laptop HP', 12000000.0000, 61, CAST(N'2020-09-18' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'hp01.png', 28, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (37, 4, 5, N'Laptop HP', 12000000.0000, 75, CAST(N'2020-09-10' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'hp01.png', 42, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (38, 1, 5, N'Laptop HP', 19000000.0000, 6, CAST(N'2021-05-31' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'hp01.png', 54, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (39, 4, 5, N'Laptop HP', 12000000.0000, 11, CAST(N'2021-01-21' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'hp01.png', 66, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (40, 2, 5, N'Laptop HP', 12000000.0000, 56, CAST(N'2021-03-09' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'hp01.png', 44, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (41, 5, 6, N'Laptop LG', 12000000.0000, 44, CAST(N'2021-06-29' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'lg01.png', 63, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (42, 2, 6, N'Laptop LG', 22000000.0000, 40, CAST(N'2021-01-29' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'lg01.png', 34, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (43, 4, 6, N'Laptop LG', 22000000.0000, 28, CAST(N'2020-07-21' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'lg01.png', 67, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (44, 3, 6, N'Laptop LG', 12000000.0000, 99, CAST(N'2021-06-12' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'lg01.png', 81, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (45, 5, 6, N'Laptop LG', 19000000.0000, 13, CAST(N'2021-03-10' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'lg01.png', 26, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (46, 5, 7, N'Laptop APPLE', 12000000.0000, 61, CAST(N'2020-09-18' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'apple01.png', 28, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (47, 4, 7, N'Laptop APPLE', 12000000.0000, 75, CAST(N'2020-09-10' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'apple01.png', 42, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (48, 1, 7, N'Laptop APPLE', 19000000.0000, 6, CAST(N'2021-05-31' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'apple01.png', 56, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (49, 4, 7, N'Laptop APPLE', 12000000.0000, 11, CAST(N'2021-01-21' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'apple01.png', 68, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (50, 2, 7, N'Laptop APPLE', 12000000.0000, 56, CAST(N'2021-03-09' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'apple01.png', 45, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (51, 5, 10, N'Laptop MSI', 12000000.0000, 50, CAST(N'2021-06-29' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'msi01.png', 61, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (52, 2, 10, N'Laptop MSI', 22000000.0000, 40, CAST(N'2021-01-29' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'msi01.png', 34, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (53, 4, 10, N'Laptop MSI', 22000000.0000, 28, CAST(N'2020-07-21' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'msi01.png', 66, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (54, 3, 10, N'Laptop MSI', 12000000.0000, 99, CAST(N'2021-06-12' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'msi01.png', 81, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (55, 5, 10, N'Laptop MSI', 19000000.0000, 13, CAST(N'2021-03-10' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'msi01.png', 26, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (56, 5, 10, N'Laptop MSI', 12000000.0000, 61, CAST(N'2020-09-18' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'msi02.png', 28, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (57, 4, 10, N'Laptop MSI', 12000000.0000, 75, CAST(N'2020-09-10' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'msi02.png', 42, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (58, 1, 10, N'Laptop MSI', 19000000.0000, 6, CAST(N'2021-05-31' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'msi02.png', 54, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (59, 4, 10, N'Laptop MSI', 12000000.0000, 11, CAST(N'2021-01-21' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'msi02.png', 66, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (60, 2, 10, N'Laptop MSI', 12000000.0000, 56, CAST(N'2021-03-09' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'msi02.png', 44, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (61, 5, 4, N'LAPTOP ASUS Siêu Vip Pro Hahaha', 200000000.0000, 20, CAST(N'2021-12-06' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'apple01.png', 44, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (62, 4, 4, N'aaaaaaaaaaa', 123.0000, 123, CAST(N'2021-12-06' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'apple01.png', 44, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (77, 3, 6, N'LAPTOP ASUS Siêu Vip Pro Hahaha 1231', 1234.0000, 123, CAST(N'2021-12-06' AS Date), N'LAPTOP ASUS Si&ecirc;u Vip Pro Hahaha 1231/n', N'LAPTOP ASUS Si&ecirc;u Vip Pro Hahaha 1231/n', N'hp01.png', 44, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (79, 5, 4, N'LAPTOP ASUS Siêu Vip Pro', 12000000.0000, 12, CAST(N'2021-12-06' AS Date), N'Core i5 - 10510 4G/n', N'Core i5 - 10510 4G/n', N'hp01.png', 0, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
ALTER TABLE [dbo].[BinhLuan] ADD  DEFAULT (getdate()) FOR [NgayBinhLuan]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ('false') FOR [DaXoa]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DonDatHang] ([MaDDH])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietKhuyenMai]  WITH CHECK ADD FOREIGN KEY([MaKM])
REFERENCES [dbo].[KhuyenMai] ([MaKM])
GO
ALTER TABLE [dbo].[ChiTietKhuyenMai]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([NguoiNhap])
REFERENCES [dbo].[Admin] ([MaAdmin])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD CHECK  (([SoLuong]>(0)))
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [CHK_SL] CHECK  (([SoLuongNhap]>(0)))
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [CHK_SL]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD CHECK  (([SoLuongTon]>=(0)))
GO

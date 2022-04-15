USE [Electro]
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

GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (1, 2, 1, N'ASUS ROG STRIX SCAR G15 G533QM - HF089T', 40000000.0000, 22, CAST(N'2020-11-10' AS Date), N'R9-5900HX  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB  15.6 FHD IPS 300Hz  Win10', N'Giữa năm 2020, Asus ROG STRIX SCAR G15 G533  ra mắt với hàng loạt cải tiến về công nghệ. Chiến games ở đẳng cấp cao nhất với Windows 10 trên ROG Strix SCAR 15. Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'asus02.png', 79, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (2, 3, 1, N'LAPTOP ASUS Siêu Vip Pro', 40000000.0000, 2, CAST(N'2021-07-28' AS Date), N'R9-5900HX  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB  15.6 FHD IPS 300Hz  Win10', N'R9-5900HX 16GB DDR4 SSD 1TB PCIe VGA RTX 3060 6GB 15.6 FHD IPS 300Hz Win10
', N'lg01.png', 104, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (3, 3, 1, N'LAPTOP ASUS ROG STRIX G15 G513QE - HN010T (Gray)', 40000000.0000, 0, CAST(N'2020-11-25' AS Date), N'R9-5900HX  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB  15.6 FHD IPS 300Hz  Win10', N'Giữa năm 2020, Asus ROG STRIX SCAR G15 G533  ra mắt với hàng loạt cải tiến về công nghệ. Chiến games ở đẳng cấp cao nhất với Windows 10 trên ROG Strix SCAR 15. Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'asus02.png', 53, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (4, 5, 1, N'ASUS ROG STRIX SCAR G15 G533QM - HF089T', 40000000.0000, 84, CAST(N'2020-08-26' AS Date), N'R9-5900HX  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB  15.6 FHD IPS 300Hz  Win10', N'Giữa năm 2020, Asus ROG STRIX SCAR G15 G533  ra mắt với hàng loạt cải tiến về công nghệ. Chiến games ở đẳng cấp cao nhất với Windows 10 trên ROG Strix SCAR 15. Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'asus02.png', 34, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (5, 5, 1, N'ASUS ROG STRIX SCAR G15 G533QM - HF089T', 40000000.0000, 3, CAST(N'2021-05-28' AS Date), N'R9-5900HX  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB  15.6 FHD IPS 300Hz  Win10', N'Giữa năm 2020, Asus ROG STRIX SCAR G15 G533  ra mắt với hàng loạt cải tiến về công nghệ. Chiến games ở đẳng cấp cao nhất với Windows 10 trên ROG Strix SCAR 15. Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'asus02.png', 55, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (6, 4, 1, N'LAPTOP ASUS ROG STRIX G15 G513QE - HN010T (Gray)', 40000000.0000, 0, CAST(N'2021-04-17' AS Date), N'R9-5900HX  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB  15.6 FHD IPS 300Hz  Win10', N'Giữa năm 2020, Asus ROG STRIX SCAR G15 G533  ra mắt với hàng loạt cải tiến về công nghệ. Chiến games ở đẳng cấp cao nhất với Windows 10 trên ROG Strix SCAR 15. Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'asus01.png', 66, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (7, 5, 1, N'ASUS ROG STRIX SCAR G15 G533QM - HF089T', 40000000.0000, 52, CAST(N'2020-07-28' AS Date), N'R9-5900HX  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB  15.6 FHD IPS 300Hz  Win10', N'Giữa năm 2020, Asus ROG STRIX SCAR G15 G533  ra mắt với hàng loạt cải tiến về công nghệ. Chiến games ở đẳng cấp cao nhất với Windows 10 trên ROG Strix SCAR 15. Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'asus02.png', 10, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (8, 3, 1, N'ASUS ROG STRIX SCAR G15 G533QM - HF089T', 40000000.0000, 80, CAST(N'2020-10-13' AS Date), N'R9-5900HX  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB  15.6 FHD IPS 300Hz  Win10', N'Giữa năm 2020, Asus ROG STRIX SCAR G15 G533  ra mắt với hàng loạt cải tiến về công nghệ. Chiến games ở đẳng cấp cao nhất với Windows 10 trên ROG Strix SCAR 15. Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'asus02.png', 53, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (9, 4, 1, N'ASUS ROG STRIX SCAR G15 G533QM - HF089T', 40000000.0000, 57, CAST(N'2021-02-07' AS Date), N'R9-5900HX  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB  15.6 FHD IPS 300Hz  Win10', N'Giữa năm 2020, Asus ROG STRIX SCAR G15 G533  ra mắt với hàng loạt cải tiến về công nghệ. Chiến games ở đẳng cấp cao nhất với Windows 10 trên ROG Strix SCAR 15. Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'asus01.png', 56, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (10, 1, 1, N'ASUS ROG STRIX SCAR G15 G533QM - HF089T', 40000000.0000, 57, CAST(N'2020-12-13' AS Date), N'R9-5900HX  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB  15.6 FHD IPS 300Hz  Win10', N'Giữa năm 2020, Asus ROG STRIX SCAR G15 G533  ra mắt với hàng loạt cải tiến về công nghệ. Chiến games ở đẳng cấp cao nhất với Windows 10 trên ROG Strix SCAR 15. Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'asus02.png', 76, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (11, 1, 2, N'Toshiba Gramer', 22000000.0000, 6, CAST(N'2020-11-23' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'toshiba01.png', 18, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (12, 3, 2, N'Toshiba Gramer', 19000000.0000, 31, CAST(N'2021-03-23' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'toshiba02.png', 96, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (13, 5, 2, N'Toshiba Gramer', 22000000.0000, 54, CAST(N'2020-09-16' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'toshiba02.png', 59, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (14, 1, 2, N'Toshiba Evovi', 22000000.0000, 4, CAST(N'2021-06-10' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'toshiba01.png', 100, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (15, 5, 2, N'Toshiba Evovi', 19000000.0000, 78, CAST(N'2021-06-17' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'toshiba02.png', 80, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (16, 4, 2, N'Toshiba Gramer', 12000000.0000, 2, CAST(N'2021-03-30' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'toshiba02.png', 65, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (17, 4, 2, N'Toshiba Gramer', 12000000.0000, 23, CAST(N'2021-04-25' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'toshiba02.png', 66, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (18, 3, 2, N'Toshiba Gramer', 22000000.0000, 16, CAST(N'2020-10-18' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'toshiba01.png', 38, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (19, 3, 2, N'Toshiba Evovi', 12000000.0000, 98, CAST(N'2021-02-13' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'toshiba01.png', 55, 0, 0)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (20, 4, 2, N'Toshiba Gramer', 22000000.0000, 85, CAST(N'2020-08-27' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe  VGA RTX 3060 6GB', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen™ 9 5900HX và GPU GeForce RTX™ 3070 (TGP 115W + 15W Dynamic Boost).', N'toshiba01.png', 87, 0, 0)
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
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (31, 5, 4, N'Laptop ACER', 12000000.0000, 50, CAST(N'2021-06-29' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'acer01.png', 68, 0, 0)
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
INSERT [dbo].[SanPham] ([MaSP], [MaNCC], [MaNSX], [TenSP], [DonGia], [SoLuongTon], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [LuotXem], [TrungBinhDanhGia], [DaXoa]) VALUES (41, 5, 6, N'Laptop LG', 12000000.0000, 50, CAST(N'2021-06-29' AS Date), N'I5-10400  16GB DDR4  SSD 1TB PCIe', N'Chinh phục mọi thử thách với CPU mạnh mẽ AMD Ryzen', N'lg01.png', 63, 0, 0)
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
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO


GO
SET IDENTITY_INSERT [dbo].[KhuyenMai] ON 
GO
INSERT [dbo].[KhuyenMai] ([MaKM], [TenChuongTrinh], [NoiDung], [NgayBatDau], [NgayKetThuc]) VALUES (1, N'"Chào tân sinh viên"', N'"Chào tân sinh viên"', CAST(N'2021-07-19' AS Date), CAST(N'2021-08-02' AS Date))
GO
SET IDENTITY_INSERT [dbo].[KhuyenMai] OFF
GO
INSERT [dbo].[ChiTietKhuyenMai] ([MaKM], [MaSP], [GiamGia]) VALUES (1, 1, 15)
GO
INSERT [dbo].[ChiTietKhuyenMai] ([MaKM], [MaSP], [GiamGia]) VALUES (1, 2, 30)
GO
INSERT [dbo].[ChiTietKhuyenMai] ([MaKM], [MaSP], [GiamGia]) VALUES (1, 3, 20)
GO
INSERT [dbo].[ChiTietKhuyenMai] ([MaKM], [MaSP], [GiamGia]) VALUES (1, 4, 10)
GO
INSERT [dbo].[ChiTietKhuyenMai] ([MaKM], [MaSP], [GiamGia]) VALUES (1, 5, 50)
GO
INSERT [dbo].[ChiTietKhuyenMai] ([MaKM], [MaSP], [GiamGia]) VALUES (1, 6, 10)
GO
INSERT [dbo].[ChiTietKhuyenMai] ([MaKM], [MaSP], [GiamGia]) VALUES (1, 7, 20)
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [DiaChi], [Email], [DienThoai]) VALUES (1, N'Hoàng Quang Thái', N'hqthai', N'1234', N'12 Lê Hồng Phong', N'hqthai@gmail.com', N'0967823093')
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [DiaChi], [Email], [DienThoai]) VALUES (2, N'Hoàng Lê Vương', N'hlvuong', N'1234', N'15 Tuệ Tĩnh', N'vuongle@tdmu.edu.vn', N'0968541235')
GO
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO

GO
SET IDENTITY_INSERT [dbo].[Admin] ON 
GO
INSERT [dbo].[Admin] ([MaAdmin], [HoTen], [TaiKhoan], [matkhau], [DiaChi], [Email], [DienThoai], [NgaySinh]) VALUES (1, N'Hoàng Quang Thái', N'admin', N'1234', N'33 Lê Hồng Phong', N'hoangquangthai57@gmail.com', N'0967823093', CAST(N'1993-06-04' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO

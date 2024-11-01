USE [QLThucPhamHuuCo]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 11/1/2024 9:02:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[Gia] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 11/1/2024 9:02:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaPN] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaNhap] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 11/1/2024 9:02:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[MaDG] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[Diem] [int] NULL,
	[BinhLuan] [nvarchar](max) NULL,
	[NgayDanhGia] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 11/1/2024 9:02:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](100) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 11/1/2024 9:02:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[MaKH] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 11/1/2024 9:02:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NOT NULL,
	[NgayLap] [date] NULL,
	[TongTien] [decimal](18, 2) NOT NULL,
	[TrangThai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/1/2024 9:02:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[SoDienThoai] [nvarchar](15) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[MatKhau] [nvarchar](255) NOT NULL,
	[NgayDangKy] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 11/1/2024 9:02:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](255) NULL,
	[SoDienThoai] [nvarchar](15) NULL,
	[Email] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/1/2024 9:02:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[ID] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[NoiLamViec] [nvarchar](50) NULL,
	[Tuoi] [int] NULL,
	[ThoiGianLam] [nvarchar](50) NULL,
	[Luong] [int] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 11/1/2024 9:02:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[MaAdmin] [int] NULL,
	[NgayNhap] [date] NULL,
	[TongTien] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/1/2024 9:02:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[Gia] [decimal](18, 2) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[SoLuongTon] [int] NOT NULL,
	[MaDanhMuc] [int] NOT NULL,
	[HinhAnh] [nvarchar](255) NULL,
	[NgayTao] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoanAdmin]    Script Date: 11/1/2024 9:02:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanAdmin](
	[MaAdmin] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](255) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[QuyenHan] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongBao]    Script Date: 11/1/2024 9:02:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBao](
	[MaTB] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoiNhan] [int] NULL,
	[LoaiNguoiNhan] [nvarchar](50) NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
	[NgayGui] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong], [Gia]) VALUES (1, 1, 2, CAST(20000.00 AS Decimal(18, 2)))
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong], [Gia]) VALUES (1, 2, 1, CAST(80000.00 AS Decimal(18, 2)))
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong], [Gia]) VALUES (2, 3, 3, CAST(50000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaPN], [MaSP], [SoLuong], [GiaNhap]) VALUES (1, 1, 100, CAST(30000.00 AS Decimal(18, 2)))
INSERT [dbo].[ChiTietPhieuNhap] ([MaPN], [MaSP], [SoLuong], [GiaNhap]) VALUES (1, 2, 50, CAST(40000.00 AS Decimal(18, 2)))
INSERT [dbo].[ChiTietPhieuNhap] ([MaPN], [MaSP], [SoLuong], [GiaNhap]) VALUES (2, 3, 200, CAST(85000.00 AS Decimal(18, 2)))
INSERT [dbo].[ChiTietPhieuNhap] ([MaPN], [MaSP], [SoLuong], [GiaNhap]) VALUES (3, 1, 50, CAST(30000.00 AS Decimal(18, 2)))
INSERT [dbo].[ChiTietPhieuNhap] ([MaPN], [MaSP], [SoLuong], [GiaNhap]) VALUES (3, 4, 70, CAST(90000.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[DanhGia] ON 

INSERT [dbo].[DanhGia] ([MaDG], [MaKH], [MaSP], [Diem], [BinhLuan], [NgayDanhGia]) VALUES (1, 1, 1, 5, N'Rau cải rất tươi và ngon!', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[DanhGia] ([MaDG], [MaKH], [MaSP], [Diem], [BinhLuan], [NgayDanhGia]) VALUES (2, 2, 2, 4, N'Táo rất ngọt nhưng hơi đắt.', CAST(N'2024-10-26' AS Date))
SET IDENTITY_INSERT [dbo].[DanhGia] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [MoTa]) VALUES (1, N'Rau củ', N'Các loại rau củ hữu cơ')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [MoTa]) VALUES (2, N'Trái cây', N'Trái cây tươi sạch')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [MoTa]) VALUES (3, N'Ngũ cốc', N'Ngũ cốc dinh dưỡng hữu cơ')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [MoTa]) VALUES (4, N'Sữa và sản phẩm từ sữa', N'Sữa hữu cơ và các sản phẩm liên quan')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
GO
INSERT [dbo].[GioHang] ([MaKH], [MaSP], [SoLuong]) VALUES (1, 3, 2)
INSERT [dbo].[GioHang] ([MaKH], [MaSP], [SoLuong]) VALUES (1, 6, 4)
INSERT [dbo].[GioHang] ([MaKH], [MaSP], [SoLuong]) VALUES (1, 7, 6)
INSERT [dbo].[GioHang] ([MaKH], [MaSP], [SoLuong]) VALUES (1, 37, 8)
INSERT [dbo].[GioHang] ([MaKH], [MaSP], [SoLuong]) VALUES (1, 52, 10)
INSERT [dbo].[GioHang] ([MaKH], [MaSP], [SoLuong]) VALUES (1, 56, 12)
INSERT [dbo].[GioHang] ([MaKH], [MaSP], [SoLuong]) VALUES (2, 4, 1)
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayLap], [TongTien], [TrangThai]) VALUES (1, 1, CAST(N'2024-10-26' AS Date), CAST(100000.00 AS Decimal(18, 2)), N'Chờ xử lý')
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayLap], [TongTien], [TrangThai]) VALUES (2, 2, CAST(N'2024-10-26' AS Date), CAST(150000.00 AS Decimal(18, 2)), N'Chờ xử lý')
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Email], [SoDienThoai], [DiaChi], [MatKhau], [NgayDangKy]) VALUES (1, N'Nguyễn Văn A', N'nguyenvana@gmail.com', N'0987654321', N'12 Hoàng Diệu, Hà Nội', N'123456', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Email], [SoDienThoai], [DiaChi], [MatKhau], [NgayDangKy]) VALUES (2, N'Trần Thị B', N'tranthib@gmail.com', N'0971234567', N'34 Lý Thường Kiệt, Đà Nẵng', N'123456', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Email], [SoDienThoai], [DiaChi], [MatKhau], [NgayDangKy]) VALUES (3, N'test', N'a@a.a', N'033444555', N'teest', N'123', CAST(N'2024-10-31' AS Date))
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SoDienThoai], [Email]) VALUES (1, N'Nông trại Hòa Bình', N'123 Lê Lợi, Hà Nội', N'0912345678', N'nhcc1@example.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SoDienThoai], [Email]) VALUES (2, N'Trang trại Đà Lạt', N'456 Trần Phú, Đà Lạt', N'0938765432', N'nhcc2@example.com')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
INSERT [dbo].[NhanVien] ([ID], [HoTen], [ChucVu], [NoiLamViec], [Tuoi], [ThoiGianLam], [Luong]) VALUES (N'NV001', N'Nguyễn Thành Nguyên', N'Quản lý', N'Cơ sở 1', 20, N'17/02/2022', 320800)
INSERT [dbo].[NhanVien] ([ID], [HoTen], [ChucVu], [NoiLamViec], [Tuoi], [ThoiGianLam], [Luong]) VALUES (N'NV002', N'Nguyễn Văn a', N'Nhân viên', N'Cơ sở 2', 20, N'20/03/2023', 170750)
INSERT [dbo].[NhanVien] ([ID], [HoTen], [ChucVu], [NoiLamViec], [Tuoi], [ThoiGianLam], [Luong]) VALUES (N'NV003', N'Nguyễn Văn b', N'Nhân viên', N'Cơ sở 4', 19, N'17052023', 86000)
INSERT [dbo].[NhanVien] ([ID], [HoTen], [ChucVu], [NoiLamViec], [Tuoi], [ThoiGianLam], [Luong]) VALUES (N'NV004', N'Bạch Thanh Trà', N'Kế toán trưởng', N'Cớ sở 5', 20, N'16/09.2022', 103600)
INSERT [dbo].[NhanVien] ([ID], [HoTen], [ChucVu], [NoiLamViec], [Tuoi], [ThoiGianLam], [Luong]) VALUES (N'NV005', N'Nguyễn Văn c', N'Bảo vệ', N'Cơ sở 1', 50, N'16/05/2016', 433066)
GO
SET IDENTITY_INSERT [dbo].[PhieuNhap] ON 

INSERT [dbo].[PhieuNhap] ([MaPN], [MaAdmin], [NgayNhap], [TongTien]) VALUES (1, 1, CAST(N'2024-10-26' AS Date), CAST(3000000.00 AS Decimal(18, 2)))
INSERT [dbo].[PhieuNhap] ([MaPN], [MaAdmin], [NgayNhap], [TongTien]) VALUES (2, 2, CAST(N'2024-10-26' AS Date), CAST(4500000.00 AS Decimal(18, 2)))
INSERT [dbo].[PhieuNhap] ([MaPN], [MaAdmin], [NgayNhap], [TongTien]) VALUES (3, 1, CAST(N'2024-10-26' AS Date), CAST(1200000.00 AS Decimal(18, 2)))
INSERT [dbo].[PhieuNhap] ([MaPN], [MaAdmin], [NgayNhap], [TongTien]) VALUES (4, 2, CAST(N'2024-10-26' AS Date), CAST(6000000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[PhieuNhap] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (1, N'Rau cải ngọt', CAST(15000.00 AS Decimal(18, 2)), N'Rau cải ngọt trồng hữu cơ, không thuốc trừ sâu.', 100, 1, N'1.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (2, N'Cà rốt', CAST(25000.00 AS Decimal(18, 2)), N'Cà rốt Đà Lạt tươi ngon, giàu vitamin A.', 80, 1, N'2.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (3, N'Khoai tây', CAST(30000.00 AS Decimal(18, 2)), N'Khoai tây hữu cơ nhập khẩu từ Hà Lan.', 60, 1, N'3.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (4, N'Dưa leo', CAST(18000.00 AS Decimal(18, 2)), N'Dưa leo tươi mát, thích hợp làm salad.', 120, 1, N'4.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (5, N'Táo Fuji', CAST(50000.00 AS Decimal(18, 2)), N'Táo Fuji nhập khẩu từ Nhật Bản, giòn ngọt.', 50, 2, N'5.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (6, N'Chuối Laba', CAST(22000.00 AS Decimal(18, 2)), N'Chuối Laba Đà Lạt, giàu dinh dưỡng.', 200, 2, N'6.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (7, N'Bưởi da xanh', CAST(60000.00 AS Decimal(18, 2)), N'Bưởi da xanh Bến Tre, thơm ngon.', 70, 2, N'7.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (8, N'Dâu tây', CAST(80000.00 AS Decimal(18, 2)), N'Dâu tây hữu cơ, không thuốc bảo vệ thực vật.', 30, 2, N'8.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (9, N'Gạo lứt đỏ', CAST(45000.00 AS Decimal(18, 2)), N'Gạo lứt hữu cơ giàu chất xơ và vitamin.', 100, 3, N'9.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (10, N'Hạt chia', CAST(300000.00 AS Decimal(18, 2)), N'Hạt chia nhập khẩu từ Úc, giúp tăng cường sức khỏe.', 40, 3, N'10.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (11, N'Yến mạch', CAST(120000.00 AS Decimal(18, 2)), N'Yến mạch nguyên chất, giàu dinh dưỡng.', 60, 3, N'11.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (12, N'Đậu nành', CAST(20000.00 AS Decimal(18, 2)), N'Đậu nành hữu cơ, không biến đổi gen.', 90, 3, N'12.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (13, N'Sữa tươi không đường', CAST(25000.00 AS Decimal(18, 2)), N'Sữa tươi nguyên chất, không chất bảo quản.', 80, 4, N'13.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (14, N'Phô mai hữu cơ', CAST(70000.00 AS Decimal(18, 2)), N'Phô mai hữu cơ, dùng trong chế biến món ăn.', 50, 4, N'14.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (15, N'Sữa chua dẻo', CAST(30000.00 AS Decimal(18, 2)), N'Sữa chua dẻo, thơm ngon tốt cho tiêu hóa.', 100, 4, N'15.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (16, N'Kem sữa tươi', CAST(50000.00 AS Decimal(18, 2)), N'Kem sữa tươi từ sữa hữu cơ nguyên chất.', 40, 4, N'16.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (17, N'Súp lơ xanh', CAST(35000.00 AS Decimal(18, 2)), N'Súp lơ xanh tươi, tốt cho sức khỏe.', 90, 1, N'17.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (18, N'Rau muống', CAST(20000.00 AS Decimal(18, 2)), N'Rau muống sạch, không sử dụng phân bón hóa học.', 110, 1, N'18.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (19, N'Bắp cải tím', CAST(40000.00 AS Decimal(18, 2)), N'Bắp cải tím nhập khẩu, giòn ngọt.', 70, 1, N'19.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (20, N'Xoài cát Hòa Lộc', CAST(55000.00 AS Decimal(18, 2)), N'Xoài cát Hòa Lộc nổi tiếng miền Nam.', 60, 2, N'20.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (21, N'Vú sữa', CAST(35000.00 AS Decimal(18, 2)), N'Vú sữa Lò Rèn, đặc sản miền Tây.', 80, 2, N'21.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (22, N'Hạt điều', CAST(500000.00 AS Decimal(18, 2)), N'Hạt điều rang muối, giàu protein.', 40, 3, N'22.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (23, N'Hạnh nhân', CAST(600000.00 AS Decimal(18, 2)), N'Hạnh nhân nhập khẩu từ Mỹ, tốt cho tim mạch.', 50, 3, N'23.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (24, N'Sữa đậu nành', CAST(20000.00 AS Decimal(18, 2)), N'Sữa đậu nành nguyên chất, không đường.', 100, 4, N'24.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (25, N'Sữa chua uống', CAST(15000.00 AS Decimal(18, 2)), N'Sữa chua uống có men sống, tốt cho tiêu hóa.', 120, 4, N'25.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (26, N'Bí đỏ', CAST(25000.00 AS Decimal(18, 2)), N'Bí đỏ hữu cơ, giàu vitamin A.', 70, 1, N'26.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (27, N'Mướp hương', CAST(20000.00 AS Decimal(18, 2)), N'Mướp hương thơm ngon, thích hợp nấu canh.', 80, 1, N'27.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (28, N'Dậu bắp', CAST(18000.00 AS Decimal(18, 2)), N'Đậu bắp giòn, hỗ trợ tiêu hóa tốt.', 120, 1, N'28.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (29, N'Mít thái', CAST(45000.00 AS Decimal(18, 2)), N'Mít thái ngọt, không mủ.', 60, 2, N'29.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (30, N'Cam sành', CAST(40000.00 AS Decimal(18, 2)), N'Cam sành Vĩnh Long, thơm ngon.', 100, 2, N'30.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (31, N'Quýt đường', CAST(35000.00 AS Decimal(18, 2)), N'Quýt đường, vị ngọt thanh.', 90, 2, N'31.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (32, N'Hạt sen', CAST(300000.00 AS Decimal(18, 2)), N'Hạt sen khô, bổ dưỡng cho sức khỏe.', 50, 3, N'32.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (33, N'Đậu xanh', CAST(20000.00 AS Decimal(18, 2)), N'Đậu xanh hữu cơ, nguyên vỏ.', 110, 3, N'33.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (34, N'Lúa mì', CAST(150000.00 AS Decimal(18, 2)), N'Lúa mì nguyên cám, làm bánh mì.', 70, 3, N'34.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (35, N'Kem chanh', CAST(30000.00 AS Decimal(18, 2)), N'Kem tươi hương chanh, mát lạnh.', 40, 4, N'35.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (36, N'Sữa hạt óc chó', CAST(60000.00 AS Decimal(18, 2)), N'Sữa hạt giàu omega-3.', 80, 4, N'36.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (37, N'Sữa dừa', CAST(45000.00 AS Decimal(18, 2)), N'Sữa dừa tự nhiên, không chất bảo quản.', 100, 4, N'37.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (38, N'Rau mồng tơi', CAST(18000.00 AS Decimal(18, 2)), N'Rau mồng tơi sạch, nhiều chất xơ.', 110, 1, N'38.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (39, N'Rau dền', CAST(17000.00 AS Decimal(18, 2)), N'Rau dền đỏ, bổ máu.', 100, 1, N'39.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (40, N'Dưa hấu', CAST(20000.00 AS Decimal(18, 2)), N'Dưa hấu không hạt, ngọt mát.', 80, 2, N'40.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (41, N'Nho đen', CAST(90000.00 AS Decimal(18, 2)), N'Nho đen không hạt, nhập khẩu.', 50, 2, N'41.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (42, N'Thanh long ruột đỏ', CAST(30000.00 AS Decimal(18, 2)), N'Thanh long Bình Thuận.', 70, 2, N'42.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (43, N'Sầu riêng', CAST(150000.00 AS Decimal(18, 2)), N'Sầu riêng Monthong, cơm vàng.', 30, 2, N'43.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (44, N'Hạt hướng dương', CAST(100000.00 AS Decimal(18, 2)), N'Hạt hướng dương rang muối.', 60, 3, N'44.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (45, N'Hạt óc chó', CAST(700000.00 AS Decimal(18, 2)), N'Hạt óc chó nhập khẩu, tốt cho não.', 40, 3, N'45.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (46, N'Ngô sấy', CAST(25000.00 AS Decimal(18, 2)), N'Ngô sấy giòn, không đường.', 120, 3, N'46.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (47, N'Sữa chua Hy Lạp', CAST(35000.00 AS Decimal(18, 2)), N'Sữa chua giàu protein.', 100, 4, N'47.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (48, N'Phô mai tươi', CAST(75000.00 AS Decimal(18, 2)), N'Phô mai tươi nhập khẩu.', 50, 4, N'48.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (49, N'Kem vani', CAST(40000.00 AS Decimal(18, 2)), N'Kem vani nguyên chất.', 60, 4, N'49.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (50, N'Hành tím', CAST(30000.00 AS Decimal(18, 2)), N'Hành tím Lý Sơn.', 70, 1, N'50.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (51, N'Tỏi đen', CAST(500000.00 AS Decimal(18, 2)), N'Tỏi đen cô đơn, bổ dưỡng.', 30, 1, N'51.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (52, N'Củ dền', CAST(22000.00 AS Decimal(18, 2)), N'Củ dền đỏ, giàu sắt.', 80, 1, N'52.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (53, N'Hạt dẻ', CAST(400000.00 AS Decimal(18, 2)), N'Hạt dẻ Trùng Khánh.', 40, 3, N'53.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (54, N'Hạt đậu phộng', CAST(15000.00 AS Decimal(18, 2)), N'Đậu phộng rang muối.', 200, 3, N'54.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (55, N'Sữa gạo lứt', CAST(30000.00 AS Decimal(18, 2)), N'Sữa gạo lứt tự nhiên.', 90, 4, N'55.jpg', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [SoLuongTon], [MaDanhMuc], [HinhAnh], [NgayTao]) VALUES (56, N'Bơ sáp', CAST(80000.00 AS Decimal(18, 2)), N'Bơ sáp Đắk Lắk, thịt dày, béo ngậy.', 100, 2, N'56.jpg', CAST(N'2024-10-26' AS Date))
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoanAdmin] ON 

INSERT [dbo].[TaiKhoanAdmin] ([MaAdmin], [TenDangNhap], [MatKhau], [HoTen], [Email], [QuyenHan]) VALUES (1, N'admin1', N'123456', N'Trần Văn A', N'admin1@domain.com', N'Quản trị viên')
INSERT [dbo].[TaiKhoanAdmin] ([MaAdmin], [TenDangNhap], [MatKhau], [HoTen], [Email], [QuyenHan]) VALUES (2, N'admin2', N'123456', N'Ngô Thị B', N'admin2@domain.com', N'Quản trị viên')
SET IDENTITY_INSERT [dbo].[TaiKhoanAdmin] OFF
GO
SET IDENTITY_INSERT [dbo].[ThongBao] ON 

INSERT [dbo].[ThongBao] ([MaTB], [MaNguoiNhan], [LoaiNguoiNhan], [NoiDung], [NgayGui]) VALUES (1, 1, N'KhachHang', N'Đơn hàng của bạn đang được xử lý', CAST(N'2024-10-26' AS Date))
INSERT [dbo].[ThongBao] ([MaTB], [MaNguoiNhan], [LoaiNguoiNhan], [NoiDung], [NgayGui]) VALUES (2, 2, N'Admin', N'Có phiếu nhập mới cần xác nhận.', CAST(N'2024-10-26' AS Date))
SET IDENTITY_INSERT [dbo].[ThongBao] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhachHan__A9D10534C9AE2964]    Script Date: 11/1/2024 9:02:04 PM ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TaiKhoan__55F68FC09B4CB74C]    Script Date: 11/1/2024 9:02:04 PM ******/
ALTER TABLE [dbo].[TaiKhoanAdmin] ADD UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TaiKhoan__A9D10534AAFF4B8C]    Script Date: 11/1/2024 9:02:04 PM ******/
ALTER TABLE [dbo].[TaiKhoanAdmin] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DanhGia] ADD  DEFAULT (getdate()) FOR [NgayDanhGia]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (getdate()) FOR [NgayLap]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (N'Chờ xử lý') FOR [TrangThai]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (getdate()) FOR [NgayDangKy]
GO
ALTER TABLE [dbo].[PhieuNhap] ADD  DEFAULT (getdate()) FOR [NgayNhap]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[TaiKhoanAdmin] ADD  DEFAULT (N'Quản trị viên') FOR [QuyenHan]
GO
ALTER TABLE [dbo].[ThongBao] ADD  DEFAULT (getdate()) FOR [NgayGui]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaAdmin])
REFERENCES [dbo].[TaiKhoanAdmin] ([MaAdmin])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD CHECK  (([Diem]>=(1) AND [Diem]<=(5)))
GO
ALTER TABLE [dbo].[ThongBao]  WITH CHECK ADD CHECK  (([LoaiNguoiNhan]=N'Admin' OR [LoaiNguoiNhan]=N'KhachHang'))
GO

USE [master]
GO
/****** Object:  Database [WebThietBiMayTinh2]    Script Date: 12/11/2019 9:41:05 SA ******/
CREATE DATABASE [WebThietBiMayTinh2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebThietBiMayTinh2', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\WebThietBiMayTinh2.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebThietBiMayTinh2_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\WebThietBiMayTinh2_log.ldf' , SIZE = 1088KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebThietBiMayTinh2] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebThietBiMayTinh2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebThietBiMayTinh2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET  MULTI_USER 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebThietBiMayTinh2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebThietBiMayTinh2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [WebThietBiMayTinh2]
GO
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 12/11/2019 9:41:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADON](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [money] NULL,
	[ThanhTien] [money] NULL,
 CONSTRAINT [PK_CHITIETHOADON] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 12/11/2019 9:41:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [char](10) NOT NULL,
	[MaNV] [char](10) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[TongMatHang] [int] NULL,
	[TongTien] [money] NULL,
	[NgayLap] [date] NULL,
	[NgayGiao] [date] NULL,
 CONSTRAINT [PK__HOADON__2725A6E048EE4F24] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/11/2019 9:41:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [char](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[Phai] [nchar](3) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[SDT] [char](10) NULL,
	[LoaiKH] [nvarchar](6) NULL,
	[SoTaiKhoan] [char](7) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAI]    Script Date: 12/11/2019 9:41:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 12/11/2019 9:41:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [char](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[Phai] [nvarchar](5) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[SDT] [char](10) NULL,
	[ChucVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHASANXUAT]    Script Date: 12/11/2019 9:41:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHASANXUAT](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QUYEN]    Script Date: 12/11/2019 9:41:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QUYEN](
	[MaNV] [char](10) NOT NULL,
	[user] [nchar](12) NOT NULL,
	[password] [nchar](20) NOT NULL,
	[Quyen] [nvarchar](20) NULL,
 CONSTRAINT [PK_QUYEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 12/11/2019 9:41:05 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[MaNSX] [int] NULL,
	[MaLoai] [int] NULL,
	[TenSP] [nvarchar](100) NULL,
	[MoTa] [nvarchar](500) NULL,
	[Gia] [money] NULL,
	[SoLuong] [int] NULL,
	[Size] [nvarchar](100) NULL,
	[XuatXu] [nvarchar](30) NULL,
	[DacTinh] [nvarchar](500) NULL,
	[Hinh] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (1, 1, 1, 2000000.0000, 20000000.0000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (1, 2, 1, 1000000.0000, 1000000.0000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (11, 3, 1, 150000.0000, 150000.0000)
SET IDENTITY_INSERT [dbo].[HOADON] ON 

INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [DiaChi], [TongMatHang], [TongTien], [NgayLap], [NgayGiao]) VALUES (1, N'KHVI001   ', N'NV001     ', N'TPHCM', 2, 3000000.0000, NULL, NULL)
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [DiaChi], [TongMatHang], [TongTien], [NgayLap], [NgayGiao]) VALUES (10, N'KHTH001   ', N'NV001     ', N'TPHCM', 1, 150000.0000, CAST(0xFE3F0B00 AS Date), CAST(0xFE3F0B00 AS Date))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [DiaChi], [TongMatHang], [TongTien], [NgayLap], [NgayGiao]) VALUES (11, N'KHTH002   ', N'NV002     ', N'Dong Nai', 1, 200000.0000, CAST(0xFF3F0B00 AS Date), CAST(0xFE3F0B00 AS Date))
SET IDENTITY_INSERT [dbo].[HOADON] OFF
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [Phai], [DiaChi], [SDT], [LoaiKH], [SoTaiKhoan]) VALUES (N'KHTH001   ', N'Nguyễn Hoàng Thiện', N'Nam', N'Đại Lãnh', N'0852178523', N'thường', N'01TH523')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [Phai], [DiaChi], [SDT], [LoaiKH], [SoTaiKhoan]) VALUES (N'KHTH002   ', N'Trần Quốc Toàn', N'Nam', N'Thành phố Hồ Chí Minh', N'0852362514', N'thường', N'03TH514')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [Phai], [DiaChi], [SDT], [LoaiKH], [SoTaiKhoan]) VALUES (N'KHVI001   ', N'Võ Doanh Doanh', N'Nữ ', N'Biên Hòa', N'0812542536', N'vip', N'01VI539')
SET IDENTITY_INSERT [dbo].[LOAI] ON 

INSERT [dbo].[LOAI] ([MaLoai], [TenLoai]) VALUES (1, N'Laptop')
INSERT [dbo].[LOAI] ([MaLoai], [TenLoai]) VALUES (2, N'Chuột')
INSERT [dbo].[LOAI] ([MaLoai], [TenLoai]) VALUES (3, N'Bàn phím')
INSERT [dbo].[LOAI] ([MaLoai], [TenLoai]) VALUES (4, N'Màn hình')
INSERT [dbo].[LOAI] ([MaLoai], [TenLoai]) VALUES (5, N'Dây cáp')
INSERT [dbo].[LOAI] ([MaLoai], [TenLoai]) VALUES (6, N'Phụ kiện')
SET IDENTITY_INSERT [dbo].[LOAI] OFF
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [Phai], [DiaChi], [SDT], [ChucVu]) VALUES (N'NV001     ', N'Nguyễn Thị Linh', CAST(0x26E80A00 AS Date), N'Nữ', N'Thành phố Hồ Chí Minh', N'0863298547', N'Nhân Viên')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [Phai], [DiaChi], [SDT], [ChucVu]) VALUES (N'NV002     ', N'Trần Văn Phúc', CAST(0xC4130B00 AS Date), N'Nam', N'Đà Nẵng', N'0852147859', N'Nhân Viên')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [Phai], [DiaChi], [SDT], [ChucVu]) VALUES (N'QL001     ', N'Phạm Đức Khải', CAST(0xD8080B00 AS Date), N'Nam', N'Đà Lạt', N'0817254123', N'Quản Lý')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [Phai], [DiaChi], [SDT], [ChucVu]) VALUES (N'QL002     ', N'Trần Ngân', CAST(0x3B010B00 AS Date), N'Nữ', N'Hải Phòng', N'0824125963', N'Quản Lý')
SET IDENTITY_INSERT [dbo].[NHASANXUAT] ON 

INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (1, N'Apple')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (2, N'Asus')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (3, N'Dell')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (4, N'Acer')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (5, N'Samsung')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (6, N'Xiaomi')
SET IDENTITY_INSERT [dbo].[NHASANXUAT] OFF
INSERT [dbo].[QUYEN] ([MaNV], [user], [password], [Quyen]) VALUES (N'NV001     ', N'nhanvien1   ', N'123                 ', N'nhanvien')
INSERT [dbo].[QUYEN] ([MaNV], [user], [password], [Quyen]) VALUES (N'NV002     ', N'nhanvien2   ', N'123                 ', N'nhanvien')
INSERT [dbo].[QUYEN] ([MaNV], [user], [password], [Quyen]) VALUES (N'QL001     ', N'quanly1     ', N'123                 ', N'quanly')
INSERT [dbo].[QUYEN] ([MaNV], [user], [password], [Quyen]) VALUES (N'QL002     ', N'quanly2     ', N'123                 ', N'quanly')
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (1, 1, 1, N'Laptop Apple Macbook Air', N'Là mẫu laptop văn phòng, có thiết kế siêu mỏng và nhẹ, vỏ nhôm nguyên khối sang trọng. Máy có hiệu năng ổn định, thời lượng pin cực lâu 12 giờ, phù hợp cho hầu hết các nhu cầu làm việc và giải trí.', 22000000.0000, 6, N'Dày 17 mm, 1.35 Kg', N'Trung Quốc', N'Thiết kết mỏng nhẹ nguyên khối', N'LaptopApple1.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (2, 2, 2, N'Chuột gaming ASUS CERBERUS (Đen)', N'Điều khiển DPI linh hoạt - Bốn nấc DPI tùy chỉnh và được báo bằng đèn led', 490000.0000, 10, N'124.86 (L) x 68.72(W) x 40.11(H) mm', N'Mỹ', N'Hai lớp cao su được gắn bên hông tạo cảm giác cầm mềm và chống trượt tối ưu', N'ChuotAsus.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (3, 3, 3, N'Bàn phím Dell KB216B (USB, Có dây)', N'Có thiết kế ấn tượng với những đường cong tạo nên một dáng vẻ thời trang và hiện đại', 280000.0000, 20, N'30 x 11 cm', N'Việt Nam', N'Các phím được bố trí theo công nghệ Zero Degree Titl không gây tiếng ồn khi sử dụng', N'BanPhimDell.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (4, 4, 4, N'Màn Hình Acer 19.5" S200HQL (1920x1080/TN/60Hz/5ms)', N'Những màn hình mảnh mai như LCD ACER S200HQL  được chế tạo với cảm giác hiện đại đơn giản có thể biến bất kỳ khu vực nào thành một biểu hiện của phong cách và hương vị', 2060000.0000, 5, N'19.5"', N'Trung Quốc', N'Khung trong suốt, nút nguồn sáng màu xanh trong suốt và màu đen bóng', N'ManHinhAcer.PNG')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (5, 5, 5, N'Dây cáp Samsung Galaxy S6 - S6 Edge 1,5m', N'Dây cáp Samsung Galaxy S6 Edge 1.5m chính hãng là lựa chọn hàng đầu để đảm bảo độ bền, sự an toàn và tiện dụng cho thiết bị và người dùng', 124000.0000, 7, N'1.5m', N'Đài Loan', N'Galaxy S6 và các dòng máy có cổng micro USB như Galaxy Note 4, S4, S2, A3, A5, A7, E5… và cả các dòng máy của các hãng khác như Nokia, LG, Sony, Xiao Mi…', N'DayCapSamsung.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (6, 6, 6, N'Ốp lưng Xiaomi Mi 5X/A1 360 siêu mỏng', N'Ốp lưng Xiaomi Mi 5X bảo vệ 360 toàn diện', 129000.0000, 6, NULL, N'Trung Quốc', N'Chǻt lượng nhựa cao cǻp, hoàn thiện sản phå̉m sắc sảo', N'PhuKienXiaomi.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (7, 1, 2, N'Chuột không dây Apple Magic Mouse 2', N'có kiểu dáng nhỏ gọn vừa vặn với lòng bàn tay. Thiết kế liền mạch với bề mặt láng mịn giúp bạn có những thao tác trơn tru và mượt mà. ', 1819000.0000, 4, N'113,5 x 57,1 x 21,6 (mm)', N'Trung Quốc', N'Thiết kế hiện đại và sang trọng, thao tác nhanh chóng và chính xác, công nghệ cảm biến laser hiện đại', N'ChuotApple.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (8, 1, 3, N'Bàn phím Apple Magic Keyboard MLA22 Chính hãng', N'Bàn phím Apple Magic Keyboard MLA22 được Apple thay đổi khá nhiều với một số tinh chỉnh về mặt thiết kế. Apple Magic Keyboard MLA22 mới vẫn có hình dáng tương tự một miếng kim loại nhẹ màu trắng.', 2600000.0000, 5, N'32 x 12 cm', N'Đài Loan', N'Bàn phím không dây Apple Magic Keyboard MLA22 thiết kế tiện lợi, dễ dàng sử dụng, cấu trúc phím chéo, khá mỏng chỉ 2.5cm giúp bạn tiết kệm không gian, dễ dàng mang theo, là món phụ kiện Macbook tiện lợi.', N'BanPhimApple.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (9, 1, 4, N'Màn hình Apple LED Cinema 24 Inch', N'Màn hình Apple LED Cinema 24 Inch là màn hình cao cấp nhất, lớn nhất và đắt tiền nhất thế giới do hãng Apple sản xuất. Đây cũng là màn hình được chế tạo và duy trì sản xuất lâu nhất do được thị trường đồ họa yêu thích.', 8300000.0000, 10, N'24 Inch', N'Đức', N' Độ phân giải hỗ trợ là 1920 x 1200 pixels, khối lượng màu sắc lên đến 16.7 triệu màu', N'ManHinhApple.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (10, 1, 5, N'Dây cáp Lightning 1 m Apple', N'Cáp thiết kế với 1 đầu USB gắn vào cổng USB của pin sạc, laptop… và 1 đầu cáp Lightning tương thích với dòng điện thoại Apple như iPhone 5, iPhone 5S trở lên, iPad…', 200000.0000, 3, N'1 m', N'Trung Quốc', N'Thuộc thương hiệu uy tín Apple đảm bảo an toàn cho người dùng và thiết bị khi sử dụng.', N'DayCapApple.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (11, 1, 6, N'Combo phụ kiện Apple cho iPhone', N'Gồm sạc, cáp, tai nghe', 750000.0000, 6, NULL, N'Đài Loan', N'Apple USB Power Adapter, Apple Cable Lightning, Apple EarPods with Remote and Mic', N'PhuKienApple.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (12, 2, 1, N'Asus Vivobook X507UA-BR426T', N'Asus Vivobook X507UA-BR426T sở hữu vi xử lý Intel Core i5 thế hệ mới nhất, ổ cứng dung lượng cao 1TB, Windows 10 bản quyền trong một thiết kế gọn gàng. Chiếc laptop này sẽ là phương tiện làm việc lý tưởng cho bạn.', 12890000.0000, 12, N'15.6 inch', N'Mỹ', N'hết sức gọn gàng và cơ động. Phần viền màn hình mỏng mang lại thân máy gọn gàng hơn, trong khi chất liệu nhựa cứng bền vững giúp máy chỉ nặng có 1,68kg', N'LapTopAsus.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (13, 2, 3, N'Bàn Phím Laptop ASUS K43E', N'Khi cầm lên nhìn thấy các chữ cái rõ nét không mờ nhòe', 229000.0000, 23, N'30 x 12 cm', N'Trung Quốc', N'Phím nhẹ, chữ rõ nét', N'BanPhimAsus.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (14, 2, 4, N'LCD Asus 19.5'''' VS207DF', N'Màn hình LED VS207DF với tỷ lệ tương phản cao 80.000.000:1 được tối ưu cho chất lượng hình ảnh và màu sắc tốt nhất.', 2090000.0000, 2, N'19.5" ', N'Trung Quốc', N'Chất lượng Ảnh Vượt trội Kết hợp với Thiết kế Cổ điển, Hình ảnh sống động như thật với chất lượng LED', N'ManHinhAsus.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (15, 2, 5, N'Dây Cáp Sạc Asus Zenfone Max Plus M1 Chính Hãng Asus', N' Dây Cáp Sạc Asus Zenfone Max Plus M1 Chính Hãng Asus cung cấp mức năng lượng cao hơn rất nhiều, lên đến 20V và 5A, so với mức 5V và 1,8A của phiên bản USB trước đó.', 60000.0000, 3, N'1 m', N'Đài Loan', N'Giúp cho tốc độ truyền dữ liệu nhanh và ổn định khi sạc pin, đảm bảo an toàn cho người sử dụng', N'DayCapAsus.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (16, 2, 6, N'Bộ Vali Phụ Kiện Cho Asus ROG Phone

', N'Nhìn từ ngoài, bộ vali phụ kiện ROG Phone có thiết kế tương tự như một chiếc vali du lịch cao cấp hiện nay, với từng chi tiết được hoàn thiện tỉ mỉ, chất liệu cao cấp, có khả năng chống đạn và kèm khóa số chắc chắn', 17690000.0000, 2, NULL, N'Trung Quốc', N'Dock tản nhiệt, tay cầm hỗ trợ chơi game, ốp lưng cao cấp, phụ kiện kết nối không dây với TV', N'PhuKienAsus.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (17, 3, 1, N'Laptop Dell Vostro 3468 i3', N'Được trang bị chip Intel Core i3 cùng hệ điều hành Windows 10 cho hiệu năng ổn định', 11690000.0000, 3, N'Mỏng 23.4mm và nặng 1.76kg', N'Đài Loan', N'Máy phù hợp với học sinh, sinh viên, các nhân viên văn phòng với nhu cầu cơ bản như học tập hay làm việc.', N'LaptopDell.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (18, 3, 2, N'huột Có Dây Dell MS116', N'được thiết kế dạng đối xứng nên người dùng có thể sử dụng bằng tay phải hoặc tay phái rất tiện lợi.', 88000.0000, 6, N'Cáp có chiều dài 1.5m', N'Trung Quốc', N'Ứng dụng công nghệ hiện đại, không gây tiếng ồn khi click chuột, hạn chế được việc ảnh hưởng đến mọi người xung quanh trong không gian văn phòng.', N'ChuotDell.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (19, 3, 4, N'Màn hình Dell 27"SE2717H LED', N'Chất lượng hình ảnh tuyệt vời: với độ phân giải Full HD 1920 x 1080, góc nhìn rộng luôn giữ cho chất lượng hình ảnh hoàn hảo dù bạn ngồi ở góc độ nào', 4500000.0000, 3, N'Full HD 1920 x 1080', N'Mỹ', N'tính năng ComfortView giúp bạn thoải mái làm việc trong thời gian dài', N'ManHinhDell.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (20, 3, 5, N'Cáp màn hình laptop DELL Inspiron 14R N4010', N'Cáp màn hình laptop DELL Inspiron 14R N4010 dùng cho main board VGA Share', 150000.0000, 2, N'2m', N'Trung Quốc', NULL, N'DayCapDell.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (21, 3, 6, N'Dell Dock WD15 (USB-C)', N'Hỗ trợ xuất tối đa 2 màn hình cùng thời điểm', 4100000.0000, 6, NULL, N'Việt Nam', N'USB * 5 | HDMI | Mini Displayport | VGA | Audio | LAN', N'PhuKienDell.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (22, 4, 1, N'Laptop Acer Aspire E5-575G-39QWLaptop Acer Aspire E5-575G-39QW', N'Thiết bị này được trang bị màn hình kích thước lớn, lên đến 15.6 inches, thiết kế đẹp mắt, tinh tế cùng cấu hình tương đối cho hiệu suất ổn định, đáp ứng nhu cầu sử dụng cơ bản của người dùng.', 10490000.0000, 5, N'15.6 inch (1920 x 1080 pixels)', N'Đài Loan', N'Lớp vỏ ngoài của máy được làm bằng chất liệu nhựa cao cấp cùng với phần kê tay của máy sử dụng chất liệu kim loại vừa gia tăng độ bền, vừa giúp tản nhiệt tốt cho máy.', N'LaptopAcer.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (23, 4, 2, N'Gaming Mouse Acer Predator Cestus 300 LED RGB Dual Switches', N'Chuột chơi game Predator Cestus 300 mới của Acer là một vũ khí khác phải có cho kho vũ trụ trực tuyến của bạn', 1199000.0000, 6, N'5 x 2.7 x 1.6 inches', N'Mỹ', N'có 4 nút lập trình được và 3 cài đặt cấu hình. Thêm vào đó, các xung được chiếu sáng, dây bện với đầu cắm USB mạ vàng giúp đảm bảo độ tin cậy và độ bền cao nhất - tất cả đều trong một thiết kế tiện dụng giúp bạn thoải mái hơn trong những giờ dài chơi căng thẳng. Bạn sẽ thích những ngón tay của bạn lướt nhẹ nhàng trên đó - cuộn, xoay, trượt - mà không bị mất một lần', N'ChuotAcer.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (24, 4, 3, N'Bàn phím acer 4810T', N'Khi cầm lên nhìn thấy các chữ cái rõ nét không mờ nhòe', 142000.0000, 6, N'30 x 12 cm', N'Trung Quốc', N'Giao hàng toàn quốc', N'BanPhimAcer.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (25, 4, 5, N'SẠC LAPTOP ACER 19V-3.42A (ADAPTER ACER 19V-3.42A)', N'Trang bị thêm mạch điện tử giúp bảo vệ đoản mạch, điện áp quá tải, bảo vệ toàn diện máy laptop của bạn.', 99000.0000, 6, N'5.5mm*1.7mm', N'Đài Loan', N'Sử dụng hầu hết các dòng Acer', N'DayCapAcer.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (26, 4, 6, N'Phụ kiện Chuột Wireless Optical Acer - MG-0766', N'Mẫu mã đa dạng, phong phú. Giá cả hợp lí', 175000.0000, 6, N'Nhỏ gọn, vừa tay', N'Trung Quốc', N'Phóng cách, cá tính', N'PhuKienAcer.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (27, 5, 1, N'Samsung Spin 7 NP740', N'Màu trắng bạc trang nhã', 18000000.0000, 5, N'Intel Core i7-6500U, Ram 8GB, 256GB SSD, Nvidia GT940MX - 2GB, 15.6 Inch', N'Trung Quốc', N'Sang trọng, lịch lãm', N'LaptopSamsung.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (28, 5, 2, N'Chuột Bluetooth chính hãng Samsung (S Action Mouse - ET-MP900)', N'Thiết kế Egonomic kiểu dáng đẹp, phong cách', 850000.0000, 6, NULL, N'Trung Quốc', N'Được thiết kế để cung cấp cho bạn sự thoải mái tối đa, dù có sử dụng chuột trong một thời gian dài cũng không cảm thấy mỏi cổ tay', N'ChuotSamsung.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (29, 5, 3, N'Bàn phím Bluetooth chính hãng Samsung (EE-BT550)', N'Thiết kế phong cách, mỏng, gọn nhẹ, giúp đánh máy dễ dàng, thoải mái, Phạm vi hoạt động lên đến 10m, bạn có thể tận hưởng kết nối không bị gián đoạn bởi khoảng cách', 1790000.0000, 5, NULL, N'Đài Loan', N'Các phím tắt được thiết kế hợp lý cho phép gõ nhanh và chính xác, Sử dụng công nghệ không dây bluetooth 3.0 giúp người dùng kết nối nhanh chóng và dễ dàng đến máy tính bảng mà không cần dây cáp', N'BanPhimSamsung.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (30, 5, 4, N'Màn hình LED cong C27F591FDE', N'Màn Hình Cong Hoàn Hảo cho Trải Nghiệm Hình Ảnh Tối Ưu', 6500000.0000, 3, N'Độ phân giải 1920x1080. Tỷ lệ khung hình 16:9', N'Trung Quốc', N'Màn Hình Cong Tối Ưu Hơn và Chế Độ Bảo Vệ Mắt Hiệu Quả', N'ManHinhSamsung.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (31, 5, 6, N'Tai nghe bluetooth Plantronics Voyager 5200
', N'Thấu hiểu được sự khó khăn trong công việc hay khi di chuyển và nhất khi bạn đang lái xe trên đường mỗi khi có cuộc gọi đến, hãng Plantronics đã cho ra nhiều dòng tai nghe với nhiều phiên bản khác nhau được tích hợp nhiều tính năng cũng như thiết kế sang trọng và đẳng cấp tạo nên hứng thú cho người sử dụng', 1990000.0000, 5, NULL, N'Đài Loan', NULL, N'PhuKienSamsung.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (32, 6, 1, N'Laptop Xiaomi Mi Notebook Air', N'Là máy tính xách tay đầu tiên của thương hiệu Trung Quốc. Họ muốn cung cấp tới cho người dùng một sản phẩm mỏng nhẹ, cao cấp nhưng có hiệu suất tuyệt vời và giá bán phải chăng', 20999000.0000, 6, N'Tiêu chuẩn 13.3 inch, độ phân giải Full HD (1920 x 1080) ', N'Trung Quốc', N'i5-7200U/8G/256G/FP/2GD5_MX150/SILVER', N'LaptopXiaomi.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (33, 6, 2, N'Chuột không dây Xiaomi Youth Edition', N'Xiaomi Youth Edition là mẫu chuột không dây mới được hãng Xiaomi ra mắt. Phụ kiện có mức giá “siêu rẻ”, trong khi đó vẫn được trang bị nhiều tính năng tốt như độ nhạy 1200 dpi, cảm biến điện quang tân tiến,…', 250000.0000, 6, NULL, N'Trung Quốc', N'Chuột Xiaomi Youth Edition có thiết kế đẹp, tiện dụng', N'ChuotXiaomi.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (34, 6, 3, N'Bàn phím cơ Xiaomi Yuemi MK01', N'Bạn mới xây dựng cho mình một bộ máy bàn mới, hay đơn giản là do nhu cầu chơi game bạn cần phải thay đổi một bàn phím mới. Bạn thích sự sang trọng và cao cấp chứ không muốn sử dụng những bàn phím chơi game hầm hố.', 900000.0000, 7, N'358 x 128 x 31,6 mm.', N'Trung Quốc', N'Là một chiếc bàn phím cơ, chính vì thế mà người dùng nên quên đi sự nhỏ gọn và mỏng nhẹ giống như những bàn phím rời dành cho máy tính bảng.', N'BanPhimXiaomi.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (35, 6, 4, N'Màn hình full nguyên bộ Xiaomi Redmi 4X', N'Xiaomi Redmi 4X là một thiết bị có kích thước màn hình 5 inch độ phân giải HD, màn hình sử dụng tấm nền IPS vì thế mà nó cho góc nhìn tốt, màu sắc trung thực. Độ sáng màn hình cao cho phép sử dụng tốt dưới trời nắng.', 270000.0000, 5, NULL, N'Trung Quốc', NULL, N'ManHinhXiaomi.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaNSX], [MaLoai], [TenSP], [MoTa], [Gia], [SoLuong], [Size], [XuatXu], [DacTinh], [Hinh]) VALUES (36, 6, 5, N'Dây cáp sạc Xiaomi USB Type C', N'Có thể làm dây sạc cho chuẩn củ sạc chuẩn QC2.0 hoặc QC3.0', 169000.0000, 4, N'2m', N'Trung Quốc', N'Có thể làm dây truyền tải data cho điện thoại', N'DayCapXiaomi.png')
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_NgayLap]  DEFAULT (getdate()) FOR [NgayLap]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_NgayGiao]  DEFAULT (getdate()) FOR [NgayGiao]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [fk_CTHD_HD] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [fk_CTHD_HD]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [fk_CTHD_SP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [fk_CTHD_SP]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_NHANVIEN]
GO
ALTER TABLE [dbo].[QUYEN]  WITH CHECK ADD  CONSTRAINT [FK_QUYEN_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[QUYEN] CHECK CONSTRAINT [FK_QUYEN_NHANVIEN]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [fk_SP_LOAI] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LOAI] ([MaLoai])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [fk_SP_LOAI]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [fk_SP_NSX] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NHASANXUAT] ([MaNSX])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [fk_SP_NSX]
GO
USE [master]
GO
ALTER DATABASE [WebThietBiMayTinh2] SET  READ_WRITE 
GO

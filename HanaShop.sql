USE [Assignment1_ThanThanhDuy]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 1/15/2021 1:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCategory](
	[categoryId] [varchar](20) NOT NULL,
	[categoryName] [nvarchar](50) NOT NULL,
	[status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblFood]    Script Date: 1/15/2021 1:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblFood](
	[foodId] [varchar](15) NOT NULL,
	[foodName] [nvarchar](200) NOT NULL,
	[price] [float] NOT NULL,
	[desciption] [nvarchar](500) NOT NULL,
	[createDate] [date] NOT NULL,
	[image] [varchar](8000) NOT NULL,
	[quantity] [int] NOT NULL,
	[status] [bit] NOT NULL,
	[categoryId] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[foodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblOderDetail]    Script Date: 1/15/2021 1:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblOderDetail](
	[orderId] [varchar](50) NOT NULL,
	[foodId] [varchar](15) NOT NULL,
	[price] [float] NOT NULL,
	[quanity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderId] ASC,
	[foodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblOders]    Script Date: 1/15/2021 1:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblOders](
	[orderId] [varchar](50) NOT NULL,
	[userAccount] [varchar](50) NOT NULL,
	[totalPrice] [float] NOT NULL,
	[date] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRole]    Script Date: 1/15/2021 1:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRole](
	[roleID] [varchar](10) NOT NULL,
	[roleName] [nvarchar](50) NOT NULL,
	[status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 1/15/2021 1:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUsers](
	[userAccount] [varchar](50) NOT NULL,
	[fullName] [nvarchar](50) NOT NULL,
	[password] [varchar](30) NOT NULL,
	[phone] [varchar](10) NOT NULL,
	[address] [nvarchar](4000) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[status] [bit] NOT NULL,
	[roleID] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblCategory] ([categoryId], [categoryName], [status]) VALUES (N'B001', N'Bánh', 1)
INSERT [dbo].[tblCategory] ([categoryId], [categoryName], [status]) VALUES (N'K001', N'Kẹo', 1)
INSERT [dbo].[tblCategory] ([categoryId], [categoryName], [status]) VALUES (N'M001', N'Mì', 1)
INSERT [dbo].[tblCategory] ([categoryId], [categoryName], [status]) VALUES (N'N001', N'Nước Uống', 1)
INSERT [dbo].[tblCategory] ([categoryId], [categoryName], [status]) VALUES (N'S001', N'Sữa', 1)
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0001', N'Snack bắp Green''s A vị sữa bắp gói 36g', 4000, N' Bột bắp 58.9%, dầu thực vật, bột gia vị sữa bắp (đường, maltodextrin, muối, bột hương bắp giống tự nhiên, chất điều vị,...)', CAST(N'2020-09-18' AS Date), N'https://cdn.tgdd.vn/Products/Images/3364/230986/bhx/snack-bap-greens-a-vi-sua-bap-goi-36g-202011191523525713.jpg', 25, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0002', N'Lốc 8 gói rong biển ăn liền vị truyền thống Green World 2g', 30000, N'Rong biển 80%, muối, dầu bắp, dầu mè, đường', CAST(N'2020-10-27' AS Date), N'https://cdn.tgdd.vn/Products/Images/8298/194875/bhx/rong-bien-an-lien-hete-gim-vi-truyen-thong-2gr-6-org.jpg', 20, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0003', N'Snack khoai tây vị rong biển cay Green''s A gói 44g', 8000, N'Trên thị trường có rất nhiều loại snack khác nhau, nếu bạn muốn tìm một loại snack vừa lạ miệng, vừa độc đáo thì Snack khoai tây Green''s A vị rong biển cay là một sự lựa chọn hoàn hảo. Từng lát khoai tây chiên giòn ngọt kết hợp với vị rong biển mới lạ, cộng thêm vị ớt cay nồng tạo nên miếng snack thơm ngon, khó cưỡng.', CAST(N'2020-11-17' AS Date), N'https://cdn.tgdd.vn/Products/Images/3364/230579/bhx/snack-khoai-tay-greens-a-vi-rong-bien-cay-goi-44g-202011191522206238.jpg', 18, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0004', N'Snack tôm thái JoJo gói 35g', 4000, N'Snack tôm Thái JoJo gói 35g là một sản phẩm đến từ thương hiệu JoJo được tạo nên giữa sự kết hợp từ hai nguyên liệu bột mì và bột khoai tây nguyên chất được áp dụng công nghệ rang hiện đại đến từ Nhật Bản giảm tối đa lượng chất béo đảm bảo các chị em hoặc những ai sợ tăng cân có thể thoải mái thưởng thức những miếng bánh giòn tan mà không cần lo về vấn đề cân nặng.', CAST(N'2020-11-18' AS Date), N'https://cdn.tgdd.vn/Products/Images/3364/119727/bhx/snack-tom-thai-jojo-goi-35g-201907151051156601.jpg', 14, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0005', N'Snack quẩy xoắn vị rong biển Dong Hwa gói 140g', 25000, N'Bảo quản nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp', CAST(N'2020-12-29' AS Date), N'https://cdn.tgdd.vn/Products/Images/3364/232585/bhx/snack-quay-xoan-dong-hwa-vi-rong-bien-goi-140g-202012191613314137.jpg', 17, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0006', N'Snack bánh mì vị pizza Samlip gói 120g', 27000, N'Bột mì [lúa mì / Hàn Quốc, Úc), lúa mì (Mỹ, canada)], bơ thực vật (dầu thực vật) dầu cọ olein (Malaysia), dầu cọ palm stearin, (Malaysia)], muối tinh chế (Hàn Quốc), Chất nhũ hóa', CAST(N'2021-01-09' AS Date), N'https://cdn.tgdd.vn/Products/Images/3364/232587/bhx/snack-banh-mi-vi-pizza-samlip-goi-120g-202012191614071382.jpg', 13, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0007', N'Snack khoai tây vị cà chua Peke Potato Chips lon 80g', 20000, N'Snack khoai tây vị cà chua Peke Potato Chips lon 80g là một món snack khoai tây rất được yêu thích bởi những lát khoai tây vàng tươi giòn tan được tạo nên từ bột khoai tây kết hợp với bột mì được tẩm ướp gia vị đậm đà hòa quyện cùng hương vị cà chua nhè nhẹ, thơm ngon tạo nên sự kích thích vị giác mạnh mẽ, tạo cảm giác thích thú cho bạn khi thưởng thức.', CAST(N'2021-01-05' AS Date), N'https://cdn.tgdd.vn/Products/Images/3364/231522/bhx/snack-khoai-tay-vi-ca-chua-peke-potato-chips-lon-80g-202012240848507739.jpg', 24, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0008', N'Snack khoai tây Peke Potato Chips vị chanh tiêu đen lon 80g', 20000, N'Vẩy khoai tây, dầu thực vật (dầu cọ), tinh bột khoai tây, muối, đường, bột đậu nành, miếng rong biển, maltodextrin, lactose, gia vị, anti-caking agent, chất nhũ hoá', CAST(N'2020-10-27' AS Date), N'https://cdn.tgdd.vn/Products/Images/3364/219749/bhx/snack-khoai-tay-vi-chanh-tieu-den-peke-potato-chips-lon-80g-202003171044339613.jpg', 14, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0009', N'Snack da cá vị ớt xanh Pati gói 50g', 36000, N'Da cá 85%, gia vị ớt xanh (maltodextrin, đường, dextrose, muối, chất điều vị, protein thực vật thuỷ phân, gia vị - tỏi, ớt cựa gà, thì là, bột tỏi, bột giấm, hương tự nhiên (giống tự nhiên), chất chống đông vón, chiết xuất gia vị - ớt, ớt chuông xanh', CAST(N'2020-11-25' AS Date), N'https://cdn.tgdd.vn/Products/Images/3364/213100/bhx/snack-da-ca-vi-ot-xanh-pati-goi-50g-201910291626299454.jpg', 6, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0010', N'Snack da cá vị trứng muối Pati gói 50g', 41000, N'Da cá 85%, gia vị trứng muối (maltodextrin, bột lòng đỏ trứng muối, bột trứng, kem không sữa, chất điều vị, bột thịt gà, đường, muối, hành sấy, mỡ gà, gia vị - ớt, chất chống đông vón, chất chiết gia vị - cà ri, nghệ, tiêu đen, hương liệu tự nhiên', CAST(N'2020-11-25' AS Date), N'https://cdn.tgdd.vn/Products/Images/3364/213097/bhx/snack-da-ca-vi-trung-muoi-pati-goi-50g-201910291624416004.jpg', 11, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0011', N'Bánh quy nhân kem socola Nissin Malkist Sandwich gói 240g', 25000, N'Bột mì (50.2%), đường, chất béo thực vật, bột cacao (10.48%), bột sữa nguyên kem, chất tạo xốp, tinh bột sắn, muối, men nở, chất nhũ hoá lecithin đậu nành, hương vani tổng hợp', CAST(N'2020-12-01' AS Date), N'https://cdn.tgdd.vn/Products/Images/3357/216804/bhx/banh-quy-nhan-kem-socola-nissin-malkist-sandwich-goi-240g-201912201447232003.jpg', 18, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0012', N'Bánh quy bơ truyền thống Andersen''s Danish hộp 100g', 19000, N'Bánh quy bơ thơm lừng, giòn rụm, không chỉ là món ăn vặt ngon miệng mà còn cung cấp năng lượng cho các hoạt động của con người. Andersen''s là thương hiệu bánh quy đến từ đất nước Malaysia xinh đẹp với sự đa dạng về các sản phẩm bánh quy khác nhau. ', CAST(N'2020-11-08' AS Date), N'https://cdn.tgdd.vn/Products/Images/3357/212664/bhx/banh-quy-bo-truyen-thong-andersens-danish-hop-100g-201910111344490386.jpg', 19, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0013', N'Bánh quy lúa mạch New Cracker Geum Pung gói 250g', 33000, N' Bột mì, bột gạo, đường trắng, bột ngô, margarine, kem sữa, glucose, muối, amomonium, carborate, sodium carbonate,...', CAST(N'2021-01-04' AS Date), N'https://cdn.tgdd.vn/Products/Images/3357/232590/bhx/banh-quy-lua-mach-new-cracker-geum-pung-goi-250g-202012191615181846.jpg', 10, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0014', N'Bánh gấu 3 vị Assortment Meiji Hello Panda hộp 260g', 108000, N' Bột mì (35%), dầu thực vật (cọ, chất nhũ hóa (Este của polyglycerol với acid béo-INS 475), đường, cocoa mass 7.4%, bột sữa nguyên chất, seasoning [Maltodextrin, protein thực vật thủy phân, bột sữa chua(sữa bột tách kem, bột whey, sữa béo)', CAST(N'2020-11-17' AS Date), N'https://cdn.tgdd.vn/Products/Images/3357/224830/bhx/banh-gau-3-vi-assortment-meiji-hello-panda-hop-260g-202008142325536766.jpg', 8, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0015', N'Bánh xốp vị socola Spoonz Ice Cone Snack hộp 27g', 22000, N'Đường, palm shortening, sữa bột tách béo, bột cacao, bột whey khử khoáng, lactose, chất nhũ hoá, hương vani nhân tạo,...', CAST(N'2020-12-16' AS Date), N'https://cdn.tgdd.vn/Products/Images/3360/231281/bhx/banh-xop-vi-socola-spoonz-ice-cone-snack-hop-27g-202011281242058095.jpg', 12, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0016', N'Bánh xốp nhân kem sữa Imperial Wafers gói 80g', 26000, N' Bột mì 36%, shortening 28%, đường bột 21%, bột kem 9%, bột whey 4%, chất tạo xốp (Natri hydro cacbornat 500 (ii)), chất nhũ hóa, lecithin, chất ổn định..', CAST(N'2020-12-21' AS Date), N'https://cdn.tgdd.vn/Products/Images/3360/193317/bhx/sua-imperial-80g-2-org.jpg', 13, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0017', N'Bánh xốp hương sữa Hokkaido Chocky gói 80g', 32000, N'Nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp.', CAST(N'2020-11-24' AS Date), N'https://cdn.tgdd.vn/Products/Images/3360/224704/bhx/banh-xop-huong-sua-hokkaido-chocky-goi-80g-202007151445019431.jpg', 15, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0018', N'Bánh gạo vị tôm nướng One One gói 150g', 28000, N'Gạo thơm (63%), đường tinh luyện, dầu thực vật, tinh bột biến tính, glucose, muối tinh, gia vị tôm(1,2%).', CAST(N'2020-12-07' AS Date), N'https://cdn.tgdd.vn/Products/Images/3361/87243/bhx/banh-gao-one-one-ma-n-vi-tom-150gr-2-org.jpg', 17, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0019', N'Bánh gạo nướng vị tảo biển Orion An gói 111.3g', 21500, N'Gạo Japonica 66.9%, dầu thực vật, bột gia vị 4.8% (đường, muối, maltodextrin, chất điều vị 621,951, 627, 631), bột bơ sữa, tảo biển 2.5%, chất điều chỉnh độ acid, bột tôm, chất chống đông vón, màu caramel tự nhiên nhóm I - không xử lý', CAST(N'2020-10-16' AS Date), N'https://cdn.tgdd.vn/Products/Images/3361/206696/bhx/banh-gao-nuong-vi-tao-bien-orion-an-goi-1113g-201909201540118351.jpg', 13, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0020', N'Khô gà cay Chà bông Việt gói 100g', 45500, N'Thịt ức gà 96%, ớt, muối I ốt, đường, nước mắm.', CAST(N'2021-01-09' AS Date), N'https://cdn.tgdd.vn/Products/Images/8318/224636/bhx/kho-ga-cay-cha-bong-viet-goi-100g-202006201355255735.jpg', 18, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0021', N'Thịt heo sấy kiểu Tây Bắc vị BBQ G Kitchen gói 25g', 11500, N'Thịt heo sấy kiểu Tây Bắc vị BBQ G Kitchen gói 25g', CAST(N'2020-12-23' AS Date), N'https://cdn.tgdd.vn/Products/Images/8318/223748/bhx/thit-heo-say-kieu-tay-bac-vi-bbq-g-kitchen-goi-25g-202006150907306863.jpg', 20, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0022', N'Bánh tráng trộn tỏi Nhật Quỳnh gói 50g', 8000, N'Bánh tráng, dầu thực vật, tỏi, gia vị', CAST(N'2020-12-30' AS Date), N'https://cdn.tgdd.vn/Products/Images/8320/226774/bhx/banh-trang-tron-toi-nhat-quynh-goi-50g-202008111358047102.jpg', 24, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0023', N'Cơm sấy chà bông Nhật Quỳnh gói 50g', 8500, N'Gạo thơm 88%, thịt chà bông 8%, dầu thực vật 2%, gia vị 2%', CAST(N'2020-12-25' AS Date), N'https://cdn.tgdd.vn/Products/Images/8320/226771/bhx/com-say-cha-bong-nhat-quynh-goi-50g-202008111404366069.jpg', 17, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0024', N'Bánh tráng tôm hành tỏi Fadely ly 32g', 15000, N'Bánh tráng (70%), con ruốc (19%), muối tôm, hành lá, tỏi, dầu ăn', CAST(N'2020-11-27' AS Date), N'https://cdn.tgdd.vn/Products/Images/8320/222377/bhx/banh-trang-tom-hanh-toi-fadely-goi-32g-202006150848587829.jpg', 14, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0025', N'Bánh tráng chuối nướng USFOOD gói 80g', 16000, N'Khoai mì (70%), chuối (20%), nước cốt dừa, sữa, muối i-ốt, đường', CAST(N'2020-12-06' AS Date), N'https://cdn.tgdd.vn/Products/Images/8320/222372/bhx/banh-trang-chuoi-nuong-usfood-goi-80g-202005201107019322.jpg', 8, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FB0026', N'Bánh tráng khô gà xé Fadely ly 40g', 15000, N'Bánh tráng (85%), khô gà (8%), muối tôm, hành tỏi, dầu ăn', CAST(N'2020-12-05' AS Date), N'https://cdn.tgdd.vn/Products/Images/8320/222376/bhx/banh-trang-kho-ga-xe-fadely-goi-40g-202006150827340832.jpg', 15, 1, N'B001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FK0001', N'Kẹo gừng Migita gói 70g', 5000, N'Kết hợp hoàn hảo vị ngọt của đường và vị cay của gừng tươi, tạo nên những viên kẹo thơm ngon, đặc biệt phù hợp trong những ngày lạnh.', CAST(N'2020-12-18' AS Date), N'https://cdn.tgdd.vn/Products/Images/2687/79486/bhx/keo-cung-migita-gung-tui-70g-2-org.jpg', 17, 1, N'K001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FK0002', N'Kẹo nhai socola hương bạc hà Dynamite Chews gói 1kg', 106000, N'Kết hợp hương vị thơm ngon của socola với vị the the của bạc hà. Gói lớn giá tiết kiệm, thích hợp cho các buổi liên hoan, tiệc sinh nhật cho bé,...', CAST(N'2020-12-28' AS Date), N'https://cdn.tgdd.vn/Products/Images/2687/195908/bhx/keo-nhai-dynamite-chews-socola-huong-bac-ha-1kg-201902181431144564.JPG', 14, 1, N'K001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FK0003', N'Kẹo vị trái cây hỗn hợp Cavendish & Harvey hộp 200g', 58000, N'Si-rô glucose, đường, axit citric (E330), nước ép trái cây cô đặc 1% (cam, chanh, anh đào, lê, dâu rừng), màu tự nhiên được chiết xuất từ cà rốt vàng, cà rốt đen, củ cải đường, hương liệu tự nhiên.', CAST(N'2020-12-24' AS Date), N'https://cdn.tgdd.vn/Products/Images/2687/229150/bhx/keo-vi-trai-cay-hon-hop-cavendish-harvey-hop-200g-202010280830331024.jpg', 10, 1, N'K001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FN0001', N'Trà chanh với sả Fuze Tea 1 lít', 12000, N'Nếu bạn là tín đồ trung thành của trà fuzetea+ thì xin chúc mừng, nay fuzetea+ chanh sả đã có phiên bản cải tiến to hơn, đã hơn với quy cách đóng gói đóng chai 1 lít tiện lợi với dung tích lớn giúp bạn giải khát mọi lúc mọi nơi, sẻ chia cùng gia đình và bạn bè trong những dịp tiệc tùng. Dạng chai nhựa tiện lợi bảo quản và mang theo.', CAST(N'2020-12-15' AS Date), N'https://cdn.tgdd.vn/Products/Images/8938/227325/bhx/tra-chanh-voi-sa-fuze-tea-1-lit-202008212336321664.jpg', 15, 1, N'N001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FN0002', N'Nước ngọt Pepsi Cola 1.5 lít', 15000, N'Nước ngọt Pepsi lần đầu tiên được tạo ra từ nước cacbonat, đường, vani và một chút dầu ăn rất đơn giản để trở thành một loại thức uống giúp bạn dễ tiêu hoá và được mệnh danh là nước uống của Brad do ông Bradham đã tìm ra công thức này vào năm 1886', CAST(N'2020-11-28' AS Date), N'https://cdn.tgdd.vn/Products/Images/2443/76465/bhx/nuoc-ngot-pepsi-cola-15-lit-201907011120439682.JPG', 8, 1, N'N001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FN0003', N'
Trà chanh dây và hạt chia Fuze Tea 450ml', 7000, N'Sản phẩm được đóng chai 450ml là phiên bản cải tiến so với Fuzetea+ chanh dây hạt chia chai 350ml, đáp ứng được nhu cầu giải khát của đa dạng khách hàng, mang lại sự tiện lợi với dung tích lớn hơn, giải khát đã hơn mọi lúc mọi nơi. Dạng chai nhựa tiện lợi trong bảo quản và mang theo.', CAST(N'2020-12-18' AS Date), N'https://cdn.tgdd.vn/Products/Images/8938/118082/bhx/tra-chanh-day-va-hat-chia-fuze-tea-450ml-201912091343274182.jpg', 20, 1, N'N001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FN0004', N'Trà đào và hạt chia Fuze Tea 450ml', 7000, N'Trà đào và hạt chia Fuzetea+ 450ml là sự kết hợp giữa những lá trà xanh tươi nhất cùng hạt chia thơm bùi đầy dinh dưỡng, quyện cùng vị đào thơm ngọt quyến rũ giúp tăng cường năng lượng, vitamin cùng các dưỡng chất cần thiết khác cho cơ thể.', CAST(N'2020-10-25' AS Date), N'https://cdn.tgdd.vn/Products/Images/8938/118084/bhx/tra-dao-va-hat-chia-fuze-tea-450ml-201912091335159512.JPG', 18, 1, N'N001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FN0005', N'Trà chanh với sả Fuze Tea 450ml', 7000, N'Sản phẩm trà chanh sả Fuze Tea 450ml là sự phối trộn độc đáo giữa vị trà xanh tươi mát, quả chanh chua ngọt sảng khoái và hương sả thơm thư giãn, cho bạn một thức uống giải khát thơm ngon, lạ miệng mà vô cùng tốt cho sức khỏe vị ít ngọt,  cùng chất chống oxy hóa TPP-C dồi dào, cùng lượng vitamin C cao.', CAST(N'2020-11-19' AS Date), N'https://cdn.tgdd.vn/Products/Images/8938/204232/bhx/tra-chanh-voi-sa-fuze-tea-450ml-201906211622410124.jpg', 24, 1, N'N001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FN0006', N'Nước ngọt Fanta hương soda kem trái cây 330ml', 7000, N'Fanta soda kem không chỉ giúp bạn xua tan cơn khát tức thì mà còn giúp kích thích vị giác, cho bữa ăn thêm ngon miệng. Đây là thức uống không thể thiếu trong các buổi tiệc, hoạt động ngoài trời, giúp bạn tràn đầy năng lượng, căng tràn sức sống hoạt động dưới thời tiết mùa hè đầy nắng nóng.', CAST(N'2020-11-20' AS Date), N'https://cdn.tgdd.vn/Products/Images/2443/143434/bhx/nuoc-ngot-fanta-vi-soda-kem-330ml-201912021730414069.jpg', 15, 1, N'N001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FN0007', N'Hồng trà đào C2 455ml', 7500, N' Để nơi khô ráo, thoáng mát, tránh ánh sáng trực tiếp hoặc nơi có nhiệt độ cao. Lắc đều trước khi dùng. Ngon hơn khi uống lạnh', CAST(N'2020-12-24' AS Date), N'https://cdn.tgdd.vn/Products/Images/8938/198132/bhx/hong-tra-c2-vi-dao-455ml-202006191923565860.jpg', 26, 1, N'N001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FN0008', N'
Nước dừa xiêm xanh Cocoxim 1 lít', 23000, N' Để nơi khô ráo, thoáng mát, tránh ánh sáng trực tiếp hoặc nơi có nhiệt độ cao. Lắc đều trước khi dùng. Ngon hơn khi uống lạnh', CAST(N'2020-11-26' AS Date), N'https://cdn.tgdd.vn/Products/Images/3265/213126/bhx/nuoc-dua-xiem-xanh-cocoxim-1-lit-201910251005569034.jpg', 21, 1, N'N001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FN0009', N'Nước ép đào & táo Fontana 1 lít', 35000, N' Để nơi khô ráo, thoáng mát, tránh ánh sáng trực tiếp hoặc nơi có nhiệt độ cao. Lắc đều trước khi dùng. Ngon hơn khi uống lạnh', CAST(N'2020-12-28' AS Date), N'https://cdn.tgdd.vn/Products/Images/3265/204326/bhx/nectar-dao-tao-fontana-1l-201906241310197466.JPG', 27, 1, N'N001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FN0010', N'Nước ép táo Malee 1 lít', 50500, N' Để nơi khô ráo, thoáng mát, tránh ánh sáng trực tiếp hoặc nơi có nhiệt độ cao. Lắc đều trước khi dùng. Ngon hơn khi uống lạnh', CAST(N'2020-12-27' AS Date), N'https://cdn.tgdd.vn/Products/Images/3265/196850/bhx/nuoc-ep-malee-tao-1l-201908190914330765.jpg', 18, 1, N'N001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FN0011', N'Trà ô long Tea Plus vị chanh 455ml', 8000, N'Trong trà có chứa polyphenol có khả năng kích hoạt enzyme hòa tan chất béo, giảm cholesterol và tăng cường sức khỏe tim mạch. Sản phẩm trà Tea Plus còn giúp tăng sự tỉnh táo,  giải nhiệt, và giúp giải tỏa cơn khát, sảng khoái. Ngoài ra còn hỗ trợ giảm Cholesterol, bảo vệ đường tiêu hoá, làm tóc chắc khỏe, ổn định đường trong máu,...', CAST(N'2020-11-30' AS Date), N'https://cdn.tgdd.vn/Products/Images/8938/194572/bhx/nuoc-tra-tea-plus-5-org.jpg', 17, 1, N'N001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FN0012', N'Trà vải Cozy 225ml', 8000, N' Để nơi khô ráo, thoáng mát, tránh ánh sáng trực tiếp hoặc nơi có nhiệt độ cao. Lắc đều trước khi dùng. Ngon hơn khi uống lạnh', CAST(N'2020-12-26' AS Date), N'https://cdn.tgdd.vn/Products/Images/8938/221887/bhx/tra-vai-cozy-225ml-202005082025177576.jpg', 7, 1, N'N001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FN0013', N'Nước cốt dâu tây La Fresh 650ml', 75000, N' Để nơi khô ráo, thoáng mát, tránh ánh sáng trực tiếp hoặc nơi có nhiệt độ cao. Lắc đều trước khi dùng. Ngon hơn khi uống lạnh', CAST(N'2020-12-14' AS Date), N'https://cdn.tgdd.vn/Products/Images/7579/209815/bhx/nuoc-cot-la-fresh-dau-tay-650ml-201908260917356525.jpg', 12, 1, N'N001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FN0014', N'Sữa trái cây Nutriboost hương cam 1 lít', 21000, N' Để nơi khô ráo, thoáng mát, tránh ánh sáng trực tiếp hoặc nơi có nhiệt độ cao. Lắc đều trước khi dùng. Ngon hơn khi uống lạnh', CAST(N'2020-10-26' AS Date), N'https://cdn.tgdd.vn/Products/Images/2947/79217/bhx/sua-trai-cay-nutriboost-huong-cam-1-lit-201906211628543415.jpg', 13, 1, N'N001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FN0015', N'Hồng trà sữa ITOEN 350ml', 28000, N' Để nơi khô ráo, thoáng mát, tránh ánh sáng trực tiếp hoặc nơi có nhiệt độ cao. Lắc đều trước khi dùng. Ngon hơn khi uống lạnh', CAST(N'2020-12-20' AS Date), N'https://cdn.tgdd.vn/Products/Images/8963/209500/bhx/tra-sua-itoen-hong-tra-350ml-201908151014058265.jpg', 14, 1, N'N001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FN0016', N'Nước yến sào đông trùng hạ thảo Green Bird 185ml', 29000, N'Nam giới, người làm việc, người chơi thể thao mỗi ngày cần được bổ sung dinh dưỡng và tăng cường hô hấp. Yến sào và đông trùng hạ thảo là sự kết hợp độc đáo giúp cơ thể duy trì sức khoẻ mỗi ngày', CAST(N'2020-11-19' AS Date), N'https://cdn.tgdd.vn/Products/Images/4585/211702/bhx/nuoc-yen-sao-dong-trung-ha-thao-green-bird-185ml-202010151031363394.jpg', 17, 1, N'N001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FN0017', N'Nước tăng lực Monster Energy 355ml', 29000, N'Nước tăng lực Monster Energy chứa Taurine và Nhân sâm, cung cấp cho cơ thể một lượng sinh lực dồi dào và minh mẫn trong suốt thời gian còn lại trong ngày, rất lí tưởng với những công việc đòi hỏi tập trung cao hay phải di chuyển nhiều.', CAST(N'2020-12-25' AS Date), N'https://cdn.tgdd.vn/Products/Images/3226/142215/bhx/nuoc-tang-luc-monster-energy-lon-355ml-5-org.jpg', 10, 1, N'N001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FN0018', N'Nước tăng lực Samurai hương dâu 390ml', 8000, N'Nước tăng lực Samurai hương dâu nước tăng lực kết hợp với hương dâu thơm mát, sản phẩm giúp giải khát cực tốt, mang lại cho bạn cảm giác thật đã khát và sảng khoái dài lâu.', CAST(N'2020-10-29' AS Date), N'https://cdn.tgdd.vn/Products/Images/3226/76517/bhx/nuoc-tang-luc-samurai-vi-dau-chai-390ml-1511201816119.jpg', 16, 1, N'N001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FN0019', N'Cà phê The JUN Classic 234g', 46000, N'The JUN là thương hiệu cà phê quen thuộc với người tiêu dùng Việt Nam với các dòng sản phẩm cà phê 100% nguyên chất, cà phê rang xay và cà phê hòa tan. Sự hòa quyện giữa vị của các hạt cà phê cùng với công thức ủ độc quyền từ các chuyên gia của The JUN chính là điểm đặc biệt và khác biệt của cà phê The JUN đối với các sản phẩm cà phê khác.', CAST(N'2020-12-05' AS Date), N'https://cdn.tgdd.vn/Products/Images/2883/207796/bhx/ca-phe-the-jun-classic-goi-234g-201908051312005204.jpg', 9, 1, N'N001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FN0020', N'Cà phê đen NesCafé Gold 100g', 140000, N'Cà phê đen hòa tan NesCafé Gold Blend hũ 100g là cà phê hòa tan 100% nguyên chất không pha sẵn (không đường, không sữa) giữ được vị đắng đặc trưng và hương thơm đậm đà của cà phê Nescafe.', CAST(N'2020-11-04' AS Date), N'https://cdn.tgdd.vn/Products/Images/2524/91907/bhx/ca-phe-den-hoa-tan-nescafe-gold-blend-hu-100g-0911201815953.JPG', 17, 1, N'N001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FN0021', N'Cà phê rang xay Viva Culi Robusta D1 500g', 81000, N'Cà phê rang xay Viva Culi Robusta D1 500g sử dụng những hạt cà phê Culi Robusta no tròn, mang lại hương vị đậm đà, đắng hơn, béo hơn so với các loại Robusta thông thường. Với hương thơm sâu lắng, có vị chát, hậu vị đắng kéo dài, cà phê rất phù hợp với người thích cafe đắng đậm, thích sự sâu lắng', CAST(N'2020-12-08' AS Date), N'https://cdn.tgdd.vn/Products/Images/2883/228817/bhx/ca-phe-rang-xay-viva-culi-robusa-d1-500g-202010071513158170.jpg', 11, 1, N'N001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FN0022', N'Cà phê sữa Highlands 235ml', 13000, N'Cà phê sữa Highlands 235ml chế biến từ những hạt cà phê đã qua tuyển chọn kỹ càng, với công thức pha chế tinh tế, vẫn giữ nguyên hương vị đậm đà, thơm ngon của cà phê nguyên chất.', CAST(N'2020-10-09' AS Date), N'https://cdn.tgdd.vn/Products/Images/8966/193095/bhx/ca-phe-sua-highlands-235ml-201903251338262750.jpg', 16, 1, N'N001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FS0001', N'Sữa tươi tách béo không đường Australia''s Own hộp 1 lít', 32000, N' Nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp
Giữ lạnh dưới 4 độ C và sử dụng trong vòng 7 ngày khi đã mở nắp sản phẩm', CAST(N'2020-11-18' AS Date), N'https://cdn.tgdd.vn/Products/Images/2386/223711/bhx/sua-tuoi-tach-beo-khong-duong-australias-own-hop-1-lit-202006111320310001.jpg', 32, 1, N'S001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FS0002', N'Sữa tươi nguyên kem không đường Australia''s Own hộp 1 lít', 32000, N'Thiết kế tích hợp thanh cắt bên trong, chỉ cần vặn là thanh cắt xoáy xuống, tự động cắt lớp giấy bạc bảo vệ bên dưới, khui hộp chỉ với một bước', CAST(N'2020-10-29' AS Date), N'https://cdn.tgdd.vn/Products/Images/2386/223720/bhx/sua-tuoi-nguyen-kem-khong-duong-australias-own-hop-1-lit-202006111307284131.jpg', 18, 1, N'S001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FS0003', N'Sữa tươi nguyên kem không đường Inex hộp 1 lít', 30000, N'Sữa tươi nguyên kem Inex được tuyển chọn từ các trang trại bò sữa tại Bỉ với khí hậu ôn hoà và ngành chăn nuôi phát triển. Sữa bò nơi đây luôn được đánh giá cao về chất lượng, trải qua quy trình sản xuất và kiểm soát chất lượng nghiêm ngặt của châu Âu, đảm bảo không chứa chất bảo quản và hormone tăng trưởng.', CAST(N'2020-11-27' AS Date), N'https://cdn.tgdd.vn/Products/Images/2386/219025/bhx/sua-tuoi-nguyen-kem-khong-duong-inex-hop-1-lit-202003041449563169.jpg', 13, 1, N'S001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FS0004', N'Sữa tươi tiệt trùng không đường Dutch Lady hộp 1 lít', 28500, N'Sữa tiệt trùng Dutch Lady không đường sử dụng nguyên liệu là sữa tươi, bổ sung protein, phốt pho, Vitamin B2 và B12 cùng nhiều vitamin và khoáng chất cần thiết cho cơ thể.', CAST(N'2020-12-11' AS Date), N'https://cdn.tgdd.vn/Products/Images/2386/76865/bhx/sua-tuoi-tiet-trung-dutch-lady-khong-duong-hop-1-lit-201911291012334827.jpg', 10, 1, N'S001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FS0005', N'Sữa dinh dưỡng có đường Vinamilk Happy Star bịch 220ml', 5500, N'Sữa dinh dưỡng Vinamilk Star có đường với hương vị sữa thơm ngon, béo ngậy, dễ uống. Trong sữa có bổ sung nhiều loại vitamin và khoáng chất tốt cho cơ thể, đảm bảo cung cấp dưỡng chất đầy đủ mỗi ngày.', CAST(N'2020-12-12' AS Date), N'https://cdn.tgdd.vn/Products/Images/2386/79276/bhx/sua-dinh-duong-vinamilk-star-co-duong-bich-220ml-201912311532549085.jpg', 15, 1, N'S001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FS0006', N'Sữa tươi tiệt trùng có đường Vinamilk Nhập khẩu 100% hộp 1 lít', 32500, N'Thiết kế tích hợp thanh cắt bên trong, chỉ cần vặn là thanh cắt xoáy xuống, tự động cắt lớp giấy bạc bảo vệ bên dưới, khui hộp chỉ với một bước', CAST(N'2020-11-24' AS Date), N'https://cdn.tgdd.vn/Products/Images/2386/216198/bhx/sua-tuoi-tiet-trung-vinamilk-nhap-khau-100-co-duong-hop-1-lit-201912131030376678.JPG', 24, 1, N'S001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FS0007', N'Sữa tươi tiệt trùng có đường Dalat Milk bịch 220ml', 7000, N' Sữa hoàn toàn từ sữa bò tươi (96.1%), đường (3.7%), hỗn hợp chất nhũ hoá và chất ổn định (E418, E471, E410)', CAST(N'2020-11-27' AS Date), N'https://cdn.tgdd.vn/Products/Images/2386/223729/bhx/sua-tuoi-tiet-trung-co-duong-dalat-milk-bich-220ml-202006110917538437.jpg', 19, 1, N'S001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FS0008', N'Sữa đậu nành đậu đen óc chó hạnh nhân Yaho hộp 190ml', 10000, N'Đậu nành, đậu đen, hạt óc chó và hạt hạnh nhân là những thực phẩm dinh dưỡng quá quen thuộc với cuộc sống hằng ngày, mỗi loại hạt đều mang hàm lượng dinh dưỡng cao nhưng nếu kết hợp lại thì sẽ như thế nào? Sự kết hợp hoàn hảo đó chính là sản phẩm Sữa đậu nành đậu đen óc chó hạnh nhân Yaho với hương vị riêng biệt, thơm ngon và đặc biệt là hàm lượng dinh dưỡng cao', CAST(N'2020-10-20' AS Date), N'https://cdn.tgdd.vn/Products/Images/2943/229505/bhx/sua-dau-nanh-dau-den-oc-cho-hanh-nhan-yaho-hop-190ml-202010191639392197.jpg', 17, 1, N'S001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FS0009', N'Sữa đậu đen óc chó hạnh nhân Sahmyook hộp 950ml', 69000, N'Là sự kết hợp của đậu đen, hạnh nhân và óc chó, Sahmyook đã cho ra đời sản phẩm Sữa đậu đen óc chó hạnh nhân Sahmyook hộp 950ml với vị lạ cho người dùng cùng vị sữa ngòn ngọt, béo dịu vừa miệng, mang đậm nét đặc trưng của hạt óc chó.
Hạnh nhân được đánh giá là “nữ hoàng của các loại hạt”. Khi bổ sung vào cơ thể, hạnh nhân sẽ cân bằng lượng cholesterol, loại bỏ mỡ thừa trong máu, hạn chế các bệnh về tim mạch hiệu quả.', CAST(N'2020-12-12' AS Date), N'https://cdn.tgdd.vn/Products/Images/2943/214605/bhx/sua-dau-den-oc-cho-hanh-nhan-sahmyook-hop-950ml-201911131119441267.jpg', 23, 1, N'S001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FS0010', N'Sữa đậu nành Fami Canxi 1 lít', 19000, N'Nước, dịch trích từ đậu nành hạt, đường, canxi,...', CAST(N'2021-01-05' AS Date), N'https://cdn.tgdd.vn/Products/Images/2943/108675/bhx/sua-dau-nanh-fami-canxi-1-lit-201903141342501221.jpg', 16, 1, N'S001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FS0011', N'Sữa hạt dẻ cười nguyên chất 137 Degrees hộp 1 lít', 105000, N'Sau khi mở nắp, bảo quản lạnh và sử dụng trong vòng 7 ngày, đậy kín nắp sau mỗi lần sử dụng.', CAST(N'2020-12-10' AS Date), N'https://cdn.tgdd.vn/Products/Images/2943/160990/bhx/sua-hat-de-cuoi-137-degrees-nguyen-chat-1-lit-201903141115378898.jpg', 14, 1, N'S001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FS0012', N'Sữa chua uống hương cam YoMost hộp 1 lít', 30000, N'Nước, sữa chua lên men, đường,...', CAST(N'2020-12-07' AS Date), N'https://cdn.tgdd.vn/Products/Images/2944/232068/bhx/sua-chua-uong-huong-cam-yomost-hop-1-lit-202012100830557070.jpg', 27, 1, N'S001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FS0013', N'Lốc 4 hộp sữa chua uống hương cam TH True Yogurt 180ml', 32000, N'để nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp.', CAST(N'2020-11-21' AS Date), N'https://cdn.tgdd.vn/Products/Images/2944/84343/bhx/loc-4-hop-sua-chua-uong-th-true-yogurt-cam-180ml-201905060959279602.jpg', 17, 1, N'S001')
INSERT [dbo].[tblFood] ([foodId], [foodName], [price], [desciption], [createDate], [image], [quantity], [status], [categoryId]) VALUES (N'FS0014', N'Lốc 4 chai sữa chua uống hương dâu TH True Yogurt chai 180ml', 29000, N'Đường, nước, sữa bò tươi,...', CAST(N'2020-10-20' AS Date), N'https://cdn.tgdd.vn/Products/Images/2944/198298/bhx/loc-4-chai-sua-chua-uong-huong-dau-th-true-yogurt-chai-180ml-202004091544322635.jpg', 12, 1, N'S001')
INSERT [dbo].[tblOderDetail] ([orderId], [foodId], [price], [quanity]) VALUES (N'1', N'FN0022', 13000, 2)
INSERT [dbo].[tblOderDetail] ([orderId], [foodId], [price], [quanity]) VALUES (N'2', N'FB0002', 30000, 1)
INSERT [dbo].[tblOderDetail] ([orderId], [foodId], [price], [quanity]) VALUES (N'2', N'FB0014', 108000, 1)
INSERT [dbo].[tblOderDetail] ([orderId], [foodId], [price], [quanity]) VALUES (N'2', N'FN0020', 140000, 1)
INSERT [dbo].[tblOderDetail] ([orderId], [foodId], [price], [quanity]) VALUES (N'2', N'FS0002', 32000, 1)
INSERT [dbo].[tblOders] ([orderId], [userAccount], [totalPrice], [date]) VALUES (N'1', N'thanhduy', 26000, N'2021-01-15')
INSERT [dbo].[tblOders] ([orderId], [userAccount], [totalPrice], [date]) VALUES (N'2', N'thanhduy', 310000, N'2021-01-15')
INSERT [dbo].[tblRole] ([roleID], [roleName], [status]) VALUES (N'AD', N'Admin', 1)
INSERT [dbo].[tblRole] ([roleID], [roleName], [status]) VALUES (N'Guest', N'Guest', 1)
INSERT [dbo].[tblRole] ([roleID], [roleName], [status]) VALUES (N'US', N'User', 1)
INSERT [dbo].[tblUsers] ([userAccount], [fullName], [password], [phone], [address], [email], [status], [roleID]) VALUES (N'testAD', N'AD', N'123', N'1234567890', N'ádasf', N'asasfasf@àasf', 1, N'AD')
INSERT [dbo].[tblUsers] ([userAccount], [fullName], [password], [phone], [address], [email], [status], [roleID]) VALUES (N'thanhduy', N'Thanh Duy', N'123456', N'0123456789', N'Bảo Lộc', N'thanthanhduy0111@gmail.com', 1, N'US')
ALTER TABLE [dbo].[tblFood]  WITH CHECK ADD FOREIGN KEY([categoryId])
REFERENCES [dbo].[tblCategory] ([categoryId])
GO
ALTER TABLE [dbo].[tblOderDetail]  WITH CHECK ADD FOREIGN KEY([foodId])
REFERENCES [dbo].[tblFood] ([foodId])
GO
ALTER TABLE [dbo].[tblOderDetail]  WITH CHECK ADD FOREIGN KEY([orderId])
REFERENCES [dbo].[tblOders] ([orderId])
GO
ALTER TABLE [dbo].[tblOders]  WITH CHECK ADD FOREIGN KEY([userAccount])
REFERENCES [dbo].[tblUsers] ([userAccount])
GO
ALTER TABLE [dbo].[tblUsers]  WITH CHECK ADD FOREIGN KEY([roleID])
REFERENCES [dbo].[tblRole] ([roleID])
GO

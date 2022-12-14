USE [Factory2]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 3/24/2022 2:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/24/2022 2:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/24/2022 2:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/24/2022 2:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/24/2022 2:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
	[message] [text] NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/24/2022 2:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 3/24/2022 2:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_ID] [int] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 3/24/2022 2:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[FirstName] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[Adress] [nvarchar](255) NULL,
	[Phone_Number] [text] NULL,
	[Acount] [nvarchar](255) NULL,
	[SSN] [decimal](14, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 3/24/2022 2:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 3/24/2022 2:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[telepone_number] [nvarchar](400) NULL,
	[emp_Id] [int] NOT NULL,
	[Salary] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Halks]    Script Date: 3/24/2022 2:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Halks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](110) NULL,
	[Price] [decimal](18, 2) NULL,
	[Insert_date] [datetime] NULL,
 CONSTRAINT [PK_Halks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Input_Materails]    Script Date: 3/24/2022 2:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Input_Materails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](110) NULL,
	[Amount] [int] NULL,
	[Total_Price] [decimal](18, 2) NULL,
	[Insert_date] [datetime] NULL,
	[IdMaterials] [int] NULL,
 CONSTRAINT [PK_Input_Materails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 3/24/2022 2:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[product_Id] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductSalary] [decimal](18, 2) NULL,
	[Amount] [int] NULL,
	[Sum_Salary] [decimal](18, 2) NULL,
 CONSTRAINT [PK_OrderDetails_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 3/24/2022 2:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](128) NULL,
	[Adress] [text] NULL,
	[phone] [text] NULL,
	[CustomerSSn] [text] NULL,
	[GetOrder_Date] [datetime] NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OutPutOfProduct]    Script Date: 3/24/2022 2:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OutPutOfProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name_Product] [nvarchar](150) NULL,
	[Amount] [int] NULL,
	[Total_Salary] [decimal](18, 0) NULL,
	[Isert_date] [datetime] NULL,
	[Id_Product] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[part]    Script Date: 3/24/2022 2:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[part](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Amount] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[Inser_Date] [datetime] NULL,
	[DateIsertion] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/24/2022 2:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Salary] [decimal](18, 2) NULL,
	[Type] [nvarchar](255) NULL,
	[Size] [nvarchar](3) NULL,
	[Content] [nvarchar](255) NULL,
	[Image] [nvarchar](500) NULL,
	[Amount] [int] NULL,
	[DateIsertion] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Raw_Materials]    Script Date: 3/24/2022 2:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raw_Materials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Type] [nvarchar](15) NULL,
	[Salary] [decimal](8, 2) NULL,
	[Sup_Id] [int] NULL,
	[Amount] [int] NULL,
	[DateIsertion] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 3/24/2022 2:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[Adress] [nvarchar](255) NULL,
	[Phone_Number] [text] NULL,
	[Acount] [nvarchar](255) NULL,
	[SSN] [decimal](14, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 3/24/2022 2:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[id] [int] NOT NULL,
	[fhfgfh] [datetime] NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202101260139033_InitialCreate', N'WebApplication4.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EDC36107D2FD07F10F4D416CECA9726488DDD04EEDA6E8DC617649DB46F0157E2AE8548942A518E8DA25FD6877E527FA14389BAF1A2CBAEBCBB0E02042B727866381C92C3E1D0FFFDF3EFF8ED83EF19F7388ADD804CCC83D1BE696062078E4B961333A18B17AFCDB76FBEFD667CE6F80FC6C79CEE88D1414B124FCC3B4AC363CB8AED3BECA378E4BB7614C4C1828EECC0B790135887FBFB3F59070716060813B00C63FC3E21D4F571FA019FD380D838A409F22E03077B312F879A598A6A5C211FC721B2F1C4FC1DCF4FC2D0736D4441941F47590BD338F15C04D2CCB0B7300D4448405382E30F319ED12820CB590805C8BB7D0C31D02D901763DE87E392BC6B77F60F5977ACB2610E6527310DFC9E8007475C3F96D87C252D9B85FE408367A069FAC87A9D6A71625E38382D7A1F78A00091E1F1D48B18F1C4BC2C589CC4E115A6A3BCE128833C8F00EE4B107D1E5511F78CCEEDF60A7B3A1CEDB37F7BC634F16812E109C1098D90B767DC247318EADFF0E36DF01993C9D1C17C71F4FAE52BE41CBDFA111FBDACF614FA0A74B50228BA89821047201B5E14FD370DABDECE121B16CD2A6D32AD802DC1D4308D4BF4F00E9325BD834973F8DA34CEDD07ECE425DCB83E1017661234A251029F5789E7A1B9878B7AAB9127FBBF81EBE1CB578370BD42F7EE321D7A813F4C9C08E6D57BECA5B5F19D1B66D3AB36DE9F38D97914F8ECBB6E5F59EDA759904436EB4CA025B945D112D3BA7463AB34DE4E26CDA08637EB1C75F74D9B492A9BB792947568959990B3D8F46CC8E57D5ABE9D2DAEB205318D34199C7AC31A09087B8640579AD041571322D0B5AF79453CF391EB0DB02476E0021EC9C28D7C5CF4F2E7000C1091DE32DFA0388615C1F915C5770DA2C3CF01449F613B89C0506714F9E19373BBB90B08BE4AFC39B3FFCDF11A6C686EBF04E7C8A641744658ABB5F1DE05F6E720A167C43945147FA0760EC83E6F5DBF3BC020E29CD8368EE3733066EC4C0370B873C00B428F0E7BC3B1456ADB2EC9D443AEAFF64984E5F4534E5AFA256A0AC937D190A9FC932651DF054B9774133527D58B9A51B48ACAC9FA8ACAC0BA49CA29F582A604AD72665483797CE9080DEFF2A5B0BBEFF3ADB779EBD6828A1A67B042E25F30C1112C63CE0DA21447A41C812EEBC6369C8574F818D327DF9B524E1F91970CCD6AA5D9902E02C3CF861476F767432A2614DFBB0EF34A3A1C84726280EF44AF3E63B5CF3941B24D4F875A3737CD7C336B806EBA9CC47160BBE92C5084C07800A32E3FF870467B3423EB8D1811818E81A1BB6CCB8312E89B291AD53539C51EA6D838B1B310E114C53672643542879C1E82E53BAA42B032325217EE078927583A8E5823C40E4131CC549750795AB8C47643E4B56A4968D9710B637D2F788835A738C484316CD54417E6EA400813A0E0230C4A9B86C656C5E29A0D51E3B5EAC6BCCD852DC75D8A4F6CC4265B7C678D5D72FFED490CB359631B30CE66957411401BD4DB8681F2B34A5703100F2EBB66A0C2894963A0DCA5DA8881D635B60503ADABE4D919687644ED3AFEC27975D7CCB37E50DEFCB6DEA8AE2DD8664D1F3B669A99EF096D28B4C0916C9EA77356891FA8E2700672F2F359CC5D5DD14418F80CD37AC8A6F477957EA8D50C221A51136069682DA0FC3A50029226540FE1F2585EA374DC8BE8019BC7DD1A61F9DA2FC0566C40C6AE5E8B5608F597A7A271763A7D143D2BAC4132F24E87850A8EC220C4C5ABDEF10E4AD1C56565C574F185FB78C3958EF1C16850508BE7AA5152DE99C1B5949B66BB96540E591F976C2D2D09EE93464B796706D712B7D17625299C821E6EC15A2AAA6FE1034DB63CD251EC3645DDD8CA32A678C1D8D2A4568D2F5118BA645949B5E225C62CCBB39ABE98F54F3EF2330CCB8E15394885B405271A446889855A600D929EBB514C4F114573C4E23C53C797C8947BAB66F9CF5956B74F7910F37D20A766BFB3169A4BFCDA7E2B3B241CE71C7AE933AF260DA52B6C40DDDC60E96FC84391227A3F0DBCC4277A274BDF3ABBC3ABB6CF4A6484B125C82F395192C62457B7AEFE4E83234F8C0107AAF063561F2C3D844EE5B9175A55BACE33D5A3E481AA2A8A2E78B5B5C1D33934BD074CF417FB8F572BC2D3CC2F9EA45205E0453D312A790E1258A5AE3B6A3D15A58A59AFE98E28E49B542185AA1E5256B34A6A42562B56C2D368544DD19D839C475245976BBB232B324AAAD08AEA15B015328B75DD511549275560457577EC3203455C48777807D39E62D6DAC2B2C3EE7A7B9806E36956C561B6C0CA9D7E15A852DC138BDFDA4B60BC7C272D4A7BE25BCBA2B238C77A16A5C1D0AF40B51BF1FA02D4788DAFC7AC5D73D716F9A66B7E3D5E3FBB7D52EB900E7D2249C1BD38FC0987BC313F70B53FB2914E60198969E46A840DFE31A6D81F3182D1EC4F6FEAB9982DE739C12522EE02C7344BED300FF70F0E85373ABBF35EC68A63C7531C58758F66EA63B6812C2D728F22FB0E4572CEC41A6F4A4A50291C7D411CFC3031FF4A5B1DA7910DF62B2DDE332EE20FC4FD33818ADB28C1C6DF720EE83039F6CD07AE1D7D11D15DAB177F7CCA9AEE19D711CC9863635FD0E52A235C7F27D14B9AACE91AD2ACFC7AE2F94EA8DA930425AA3021567F813077E920AF0F7229BFF3D1C3F77D4553BE30580B51F18A6028BC4154A87B25B00A96F68580039F347D21D0AFB3EA1703AB88A67D2DE092FE60E25B81EECB50DE728B5B8DE25CB4892529D5736BAEF55A8997DBDE9BA494ECB526BA9C76DD036E8DD4EA152CE39965250FB63B2A928E07C3DEA6693F79A6F1AE241797691FDBCD29DE641A71C315D157953DBC03F96E8AFC9DEDE7086FDAD674B1DC1D4FB4EC9709BC63C6C6B3BAB69FEFBB6963D3857977DCD87A65F5EE98AD6D6BFFDCB2A575DE42B79EA32BA71B69EE6454B1E0B61CDC2C700E27FC790046907994D9D34975D25753C26A0BC39244CF549F6D263296268EC457A26866DBAFAF7CC36FEC2CA76966ABC9D16CE2CDD7FF46DE9CA699B726F3711BD9C3CADC43554677CB3AD69410F59CB2856B3D69494E6FF3591B2FD89F5372F0204AA9CD1ECD1DF1F3C9051E4425434E9D1EB9BFF2752FEC9D95BFBC08FB77EC2E4B08F6771809B66BBB664173411641BE790B12E5244284E61253E4C0967A125177816C0AD52CC69CBEFD4EE376ECA6638E9D0B729DD030A1D065ECCFBD5AC08B39014DFCD304E7BACCE3EB907DC5437401C474596CFE9AFC9CB89E53C87DAE880969209877C123BA6C2C298BEC2E1F0BA4AB807404E2EA2B9CA25BEC871E80C5D76486EEF12AB281F9BDC34B643F9611401D48FB40D4D53E3E75D132427ECC31CAF6F00936ECF80F6FFE0781E6990880540000, N'6.1.3-40302')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Admine')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2', N'Secritry')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'3', N'Mohamed Shabaan Nady Draz')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [message]) VALUES (N'11075df6-c841-482d-9349-9d24ec85c5e5', N'2', NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [message]) VALUES (N'de743283-43d5-4948-849c-4ebbfff9cc9a', N'1', NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'11075df6-c841-482d-9349-9d24ec85c5e5', N'Bassem@gmail.com', 0, N'AHq4OkTuSLcFD44rn248S58WaAeilnZ4Lz5L97sdioGpEzVfEh8KXtxq5Aw8LAe/JQ==', N'1bc66c78-50af-4899-a20f-ba386f54ef42', NULL, 0, 0, NULL, 1, 0, N'Bassem@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'20f2ced0-ea7f-4ae3-9e47-8a2fc130f140', N'Tarek@gmail.com', 0, N'ABExKAUfAZtYu1XA+2OeTdT6de0k0DnbR8MFPVd0APMmulcENzycF68y68ZyG9AoyQ==', N'9af16eb7-2900-4f8e-93f0-adead59915ec', NULL, 0, 0, NULL, 1, 0, N'Tarek@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'29b95177-eb37-4c9f-a6b3-cf84db878f71', N'khaledjamal2584@gmail.com', 0, N'AEu7ctVn6D0JU9kcO3Dz/EjzE5nYb7/gdVeKL1Q3WixJT2T/BjlqUONV7s3WmKjBzw==', N'7823ebfc-dcf9-40d4-ad3e-e54763fd6883', N'8168853', 0, 0, NULL, 1, 0, N'ilhil')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a1b06887-5734-408f-940b-4b175d09bee1', N'KKKK@gmail.com', 0, N'AEVLS+0CVdLQfHuXAlX+p2Z6S3R2Uv/BzRleCtCcrwe9zJ5u8WDamiNbkoEwoKZ84Q==', N'680136e7-2514-4073-a6bf-9ad927d4c72d', NULL, 0, 0, NULL, 1, 0, N'KKKK@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a9e6ae5c-8aa4-4e03-a36c-5e1868962743', N'kh@gmail.com', 0, N'APAWK9fn0GkZGygsboDdvUiZG+ry81Obc9UvrpBCEAMbbghWToFaC2su/2jLR6dAjg==', N'bed301d9-9bda-4cc5-8901-062d81345574', N'01118168853', 0, 0, NULL, 1, 0, N'khaledjamal')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c4b7f239-022d-4502-829e-32ff52fa9e0e', N'Amer@hotmail.com', 0, N'AMOPCF1DiGX+hbRkDF1PFwvzxPRQcGUWy3KQG7av/suGVQP7QbVZRlUHRzMc5CL78g==', N'd9c674e1-9371-4505-b015-347d63b562b8', N'01102093337', 0, 0, NULL, 1, 0, N'Amer jamal')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'de743283-43d5-4948-849c-4ebbfff9cc9a', N'khaled@gmail.com', 0, N'AKNioxCqPelSx2Joj944/pBZS6rKLPRGaZ5XR4jBo/iqIuGo+rdAY7KYug/yjkkF+A==', N'70a7b7ed-960c-400f-9b5d-9aa748d12c88', NULL, 0, 0, NULL, 1, 0, N'khaled@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'f9aff5bc-47eb-4c66-bb2c-1520ba1958ca', N'Amer497@gmail.com', 0, N'ABwtOCdME+MLGG7YlUsikfdqlp7EHWqUVfLF/57wZ3ZiSRR8s8JH7PjXKjf/gdrTWA==', N'1393850e-590b-4510-8e00-166d364ad7b2', N'01122893227', 0, 0, NULL, 1, 0, N'Amer Farouk')
GO
INSERT [dbo].[Customer] ([FirstName], [LastName], [Adress], [Phone_Number], [Acount], [SSN]) VALUES (N'khaled', N'jamal', N'Banisuaf', N'8168853', N'1305.25', CAST(12345678912345 AS Decimal(14, 0)))
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([Id], [Name]) VALUES (1, N'التقطيع ')
INSERT [dbo].[Department] ([Id], [Name]) VALUES (2, N'التغليف ')
INSERT [dbo].[Department] ([Id], [Name]) VALUES (3, N'الخراطة')
INSERT [dbo].[Department] ([Id], [Name]) VALUES (4, N'التصنيع ')
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Address], [City], [telepone_number], [emp_Id], [Salary]) VALUES (1, N'khaled', N'jamal', N'banisuaf', N'Somosta', N'01118168853', 1, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Address], [City], [telepone_number], [emp_Id], [Salary]) VALUES (2, N'Hesham ', N'Nady ', N'banisuaf', N'Beba', N'01122893227', 2, CAST(3200.00 AS Decimal(18, 2)))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Address], [City], [telepone_number], [emp_Id], [Salary]) VALUES (3, N'Eslam', N'jamal', N'banisuaf', N'elfashin', N'01110961191', 1, CAST(3300.00 AS Decimal(18, 2)))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Address], [City], [telepone_number], [emp_Id], [Salary]) VALUES (4, N'Amir', N'jamal', N'banisuaf', N'Somosta', N'0123645789', 4, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Address], [City], [telepone_number], [emp_Id], [Salary]) VALUES (5, N'ahmed', N'jamal', N'banisuaf', N'Somosta', N'01234567891', 3, CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Address], [City], [telepone_number], [emp_Id], [Salary]) VALUES (6, N'Bassem Jamal ', N'Rabea Mourad', N'banisuaf', N'Somosta', N'01122893227', 3, CAST(3150.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Halks] ON 

INSERT [dbo].[Halks] ([Id], [Name], [Price], [Insert_date]) VALUES (1, N'Sugar', CAST(70.00 AS Decimal(18, 2)), CAST(N'2021-02-03T21:50:03.000' AS DateTime))
INSERT [dbo].[Halks] ([Id], [Name], [Price], [Insert_date]) VALUES (2, N'Tea', CAST(10.00 AS Decimal(18, 2)), CAST(N'2021-02-03T21:50:03.000' AS DateTime))
INSERT [dbo].[Halks] ([Id], [Name], [Price], [Insert_date]) VALUES (3, N'Sapone', CAST(20.00 AS Decimal(18, 2)), CAST(N'2021-02-03T21:50:03.000' AS DateTime))
INSERT [dbo].[Halks] ([Id], [Name], [Price], [Insert_date]) VALUES (4, N'Eating', CAST(45.00 AS Decimal(18, 2)), CAST(N'2021-02-03T21:50:03.000' AS DateTime))
INSERT [dbo].[Halks] ([Id], [Name], [Price], [Insert_date]) VALUES (5, N'Electricity', CAST(1500.00 AS Decimal(18, 2)), CAST(N'2021-02-03T21:50:03.000' AS DateTime))
INSERT [dbo].[Halks] ([Id], [Name], [Price], [Insert_date]) VALUES (6, N'Water', CAST(60.00 AS Decimal(18, 2)), CAST(N'2021-02-03T21:50:03.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Halks] OFF
GO
SET IDENTITY_INSERT [dbo].[Input_Materails] ON 

INSERT [dbo].[Input_Materails] ([Id], [Name], [Amount], [Total_Price], [Insert_date], [IdMaterials]) VALUES (1012, N'المصري', 2, CAST(46.30 AS Decimal(18, 2)), CAST(N'2021-07-24T05:01:04.143' AS DateTime), 10)
INSERT [dbo].[Input_Materails] ([Id], [Name], [Amount], [Total_Price], [Insert_date], [IdMaterials]) VALUES (1013, N'المصري', 5, CAST(46.30 AS Decimal(18, 2)), CAST(N'2021-07-24T05:07:08.560' AS DateTime), 10)
INSERT [dbo].[Input_Materails] ([Id], [Name], [Amount], [Total_Price], [Insert_date], [IdMaterials]) VALUES (1014, N'سابك', 29, CAST(220.80 AS Decimal(18, 2)), CAST(N'2021-07-24T05:09:24.817' AS DateTime), 9)
INSERT [dbo].[Input_Materails] ([Id], [Name], [Amount], [Total_Price], [Insert_date], [IdMaterials]) VALUES (1015, N'سابك', 5, CAST(36.80 AS Decimal(18, 2)), CAST(N'2021-07-24T05:09:29.710' AS DateTime), 9)
INSERT [dbo].[Input_Materails] ([Id], [Name], [Amount], [Total_Price], [Insert_date], [IdMaterials]) VALUES (1016, N'سابك', -15, CAST(110.40 AS Decimal(18, 2)), CAST(N'2021-07-24T05:09:36.940' AS DateTime), 9)
INSERT [dbo].[Input_Materails] ([Id], [Name], [Amount], [Total_Price], [Insert_date], [IdMaterials]) VALUES (1017, N'سابك', -20, CAST(147.20 AS Decimal(18, 2)), CAST(N'2021-07-24T05:09:40.563' AS DateTime), 9)
INSERT [dbo].[Input_Materails] ([Id], [Name], [Amount], [Total_Price], [Insert_date], [IdMaterials]) VALUES (1018, N'سابك', 5, CAST(36.80 AS Decimal(18, 2)), CAST(N'2021-07-24T05:15:03.337' AS DateTime), 9)
INSERT [dbo].[Input_Materails] ([Id], [Name], [Amount], [Total_Price], [Insert_date], [IdMaterials]) VALUES (1019, N'الوان مختلفة', 5, CAST(56.80 AS Decimal(18, 2)), CAST(N'2021-07-24T17:00:24.093' AS DateTime), 17)
INSERT [dbo].[Input_Materails] ([Id], [Name], [Amount], [Total_Price], [Insert_date], [IdMaterials]) VALUES (1020, N'سابك', 3, CAST(22.08 AS Decimal(18, 2)), CAST(N'2021-07-24T17:09:40.787' AS DateTime), 9)
INSERT [dbo].[Input_Materails] ([Id], [Name], [Amount], [Total_Price], [Insert_date], [IdMaterials]) VALUES (1021, N'المصري', 200, CAST(1852.00 AS Decimal(18, 2)), CAST(N'2021-07-24T17:22:01.430' AS DateTime), 10)
INSERT [dbo].[Input_Materails] ([Id], [Name], [Amount], [Total_Price], [Insert_date], [IdMaterials]) VALUES (1022, N'سابك', 5, CAST(36.80 AS Decimal(18, 2)), CAST(N'2021-07-24T18:00:30.113' AS DateTime), 9)
INSERT [dbo].[Input_Materails] ([Id], [Name], [Amount], [Total_Price], [Insert_date], [IdMaterials]) VALUES (1023, N'المصري', 50, CAST(463.00 AS Decimal(18, 2)), CAST(N'2021-07-24T18:03:29.923' AS DateTime), 10)
INSERT [dbo].[Input_Materails] ([Id], [Name], [Amount], [Total_Price], [Insert_date], [IdMaterials]) VALUES (1024, N'المصري', 5, CAST(46.30 AS Decimal(18, 2)), CAST(N'2021-07-24T18:03:33.207' AS DateTime), 10)
INSERT [dbo].[Input_Materails] ([Id], [Name], [Amount], [Total_Price], [Insert_date], [IdMaterials]) VALUES (1025, N'سابك', 4, CAST(29.44 AS Decimal(18, 2)), CAST(N'2022-01-26T02:35:26.953' AS DateTime), 9)
INSERT [dbo].[Input_Materails] ([Id], [Name], [Amount], [Total_Price], [Insert_date], [IdMaterials]) VALUES (1026, N'سابك', 20, CAST(147.20 AS Decimal(18, 2)), CAST(N'2022-01-26T02:35:35.323' AS DateTime), 9)
INSERT [dbo].[Input_Materails] ([Id], [Name], [Amount], [Total_Price], [Insert_date], [IdMaterials]) VALUES (2025, N'المصري', 3, CAST(27.78 AS Decimal(18, 2)), CAST(N'2022-02-06T20:25:22.810' AS DateTime), 10)
SET IDENTITY_INSERT [dbo].[Input_Materails] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2, 1009, 4, CAST(126.25 AS Decimal(18, 2)), 5, CAST(631.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (3, 1011, 5, CAST(24.00 AS Decimal(18, 2)), 5, CAST(120.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (4, 1008, 6, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (5, 1011, 6, CAST(24.00 AS Decimal(18, 2)), 63, CAST(1512.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (6, 1008, 7, CAST(12.00 AS Decimal(18, 2)), 15, CAST(180.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (7, 1011, 7, CAST(24.00 AS Decimal(18, 2)), 12, CAST(288.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (8, 1009, 8, CAST(126.25 AS Decimal(18, 2)), 5, CAST(631.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (9, 1009, 9, CAST(126.25 AS Decimal(18, 2)), 5, CAST(631.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (10, 1009, 10, CAST(126.25 AS Decimal(18, 2)), 123, CAST(15528.75 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (11, 1008, 11, CAST(12.00 AS Decimal(18, 2)), 13, CAST(156.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (12, 1008, 12, CAST(12.00 AS Decimal(18, 2)), 56, CAST(672.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (13, 1019, 12, CAST(36.25 AS Decimal(18, 2)), 5, CAST(181.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (14, 1010, 13, CAST(23.00 AS Decimal(18, 2)), 5, CAST(115.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (15, 1010, 14, CAST(23.00 AS Decimal(18, 2)), 5, CAST(115.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (16, 1008, 14, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (17, 1010, 14, CAST(23.00 AS Decimal(18, 2)), 150, CAST(3450.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (18, 1008, 14, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (19, 1010, 14, CAST(23.00 AS Decimal(18, 2)), 6, CAST(138.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (20, 1008, 14, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (21, 1009, 15, CAST(126.25 AS Decimal(18, 2)), 5, CAST(631.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (22, 1009, 16, CAST(126.25 AS Decimal(18, 2)), 5, CAST(631.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (23, 1021, 19, CAST(38.00 AS Decimal(18, 2)), 9, CAST(342.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (24, 1021, 20, CAST(38.00 AS Decimal(18, 2)), 9, CAST(342.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (25, 1010, 21, CAST(23.00 AS Decimal(18, 2)), 9, CAST(207.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (26, 1010, 22, CAST(23.00 AS Decimal(18, 2)), 5, CAST(115.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (27, 1009, 23, CAST(126.25 AS Decimal(18, 2)), 9, CAST(1136.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (28, 1009, 24, CAST(126.25 AS Decimal(18, 2)), 6, CAST(757.50 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (29, 1009, 25, CAST(126.25 AS Decimal(18, 2)), 6, CAST(757.50 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (30, 1011, 26, CAST(24.00 AS Decimal(18, 2)), 5, CAST(120.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (31, 1009, 27, CAST(126.25 AS Decimal(18, 2)), 5, CAST(631.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (32, 1009, 28, CAST(126.25 AS Decimal(18, 2)), 9, CAST(1136.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (33, 1010, 29, CAST(23.00 AS Decimal(18, 2)), 1, CAST(23.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (34, 1010, 30, CAST(23.00 AS Decimal(18, 2)), 1, CAST(23.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (35, 1008, 30, CAST(12.00 AS Decimal(18, 2)), 9, CAST(108.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (36, 1008, 31, CAST(12.00 AS Decimal(18, 2)), 1, CAST(12.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (37, 1008, 32, CAST(12.00 AS Decimal(18, 2)), 8, CAST(96.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (38, 1008, 33, CAST(12.00 AS Decimal(18, 2)), 8, CAST(96.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (39, 1010, 33, CAST(23.00 AS Decimal(18, 2)), 8, CAST(184.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (40, 1011, 33, CAST(24.00 AS Decimal(18, 2)), 9, CAST(216.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (41, 1008, 34, CAST(12.00 AS Decimal(18, 2)), 8, CAST(96.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (42, 1010, 34, CAST(23.00 AS Decimal(18, 2)), 8, CAST(184.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (43, 1011, 34, CAST(24.00 AS Decimal(18, 2)), 9, CAST(216.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (44, 1010, 35, CAST(23.00 AS Decimal(18, 2)), 4, CAST(92.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (45, 1008, 36, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (46, 1008, 37, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (47, 1010, 37, CAST(23.00 AS Decimal(18, 2)), 5, CAST(115.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (48, 1008, 38, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (49, 1008, 39, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (50, 1008, 40, CAST(12.00 AS Decimal(18, 2)), 19, CAST(228.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (51, 1009, 41, CAST(126.25 AS Decimal(18, 2)), 9, CAST(1136.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (52, 1010, 42, CAST(23.00 AS Decimal(18, 2)), 5, CAST(115.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (53, 1008, 43, CAST(12.00 AS Decimal(18, 2)), 6, CAST(72.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (54, 1008, 44, CAST(12.00 AS Decimal(18, 2)), 9, CAST(108.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (55, 1008, 45, CAST(12.00 AS Decimal(18, 2)), 8, CAST(96.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (56, 1008, 46, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (57, 1008, 47, CAST(12.00 AS Decimal(18, 2)), 8, CAST(96.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (58, 1008, 48, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (59, 1008, 49, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (60, 1008, 50, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (61, 1008, 51, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (62, 1008, 52, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (63, 1008, 53, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (64, 1008, 54, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (65, 1009, 55, CAST(126.25 AS Decimal(18, 2)), 6, CAST(757.50 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (66, 1008, 56, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (67, 1009, 56, CAST(126.25 AS Decimal(18, 2)), 9, CAST(1136.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (68, 1009, 58, CAST(126.25 AS Decimal(18, 2)), 5, CAST(631.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (69, 1008, 59, CAST(12.00 AS Decimal(18, 2)), 6, CAST(72.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (70, 1009, 60, CAST(126.25 AS Decimal(18, 2)), 5, CAST(631.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (71, 1008, 61, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (72, 1008, 62, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (73, 1008, 63, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (74, 1008, 64, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (75, 1008, 65, CAST(12.00 AS Decimal(18, 2)), 6, CAST(72.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (76, 1008, 66, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (77, 1008, 67, CAST(12.00 AS Decimal(18, 2)), 2, CAST(24.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (78, 1008, 68, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (79, 1008, 69, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (80, 1009, 69, CAST(126.25 AS Decimal(18, 2)), 5, CAST(631.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (81, 1009, 70, CAST(126.25 AS Decimal(18, 2)), 1, CAST(126.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (82, 1014, 70, CAST(23.25 AS Decimal(18, 2)), 6, CAST(139.50 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (83, 1021, 70, CAST(38.00 AS Decimal(18, 2)), 2, CAST(76.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (84, 1020, 70, CAST(36.25 AS Decimal(18, 2)), 6, CAST(217.50 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (85, 1019, 70, CAST(36.25 AS Decimal(18, 2)), 5, CAST(181.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (86, 1008, 71, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (87, 1009, 71, CAST(126.25 AS Decimal(18, 2)), 6, CAST(757.50 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (88, 1008, 72, CAST(12.00 AS Decimal(18, 2)), 1, CAST(12.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (89, 1009, 72, CAST(126.25 AS Decimal(18, 2)), 1, CAST(126.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (90, 1008, 73, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (91, 1009, 73, CAST(126.25 AS Decimal(18, 2)), 5, CAST(631.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (92, 1008, 74, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (93, 1008, 75, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (94, 1010, 75, CAST(23.00 AS Decimal(18, 2)), 6, CAST(138.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (95, 1008, 76, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (96, 1014, 76, CAST(23.25 AS Decimal(18, 2)), 6, CAST(139.50 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (97, 1008, 77, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (98, 1014, 77, CAST(23.25 AS Decimal(18, 2)), 6, CAST(139.50 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (99, 1008, 78, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (100, 1014, 78, CAST(23.25 AS Decimal(18, 2)), 6, CAST(139.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (101, 1010, 78, CAST(23.00 AS Decimal(18, 2)), 6, CAST(138.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (102, 1008, 79, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (103, 1009, 79, CAST(126.25 AS Decimal(18, 2)), 5, CAST(631.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (104, 1009, 81, CAST(126.25 AS Decimal(18, 2)), 3, CAST(378.75 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (105, 1015, 81, CAST(26.00 AS Decimal(18, 2)), 5, CAST(130.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (1020, 1008, 1015, CAST(12.00 AS Decimal(18, 2)), 65, CAST(780.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (1021, 1021, 1015, CAST(38.00 AS Decimal(18, 2)), 63, CAST(2394.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (1022, 1008, 1016, CAST(12.00 AS Decimal(18, 2)), 5, CAST(6952.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (1023, 1020, 1016, CAST(36.25 AS Decimal(18, 2)), 6, CAST(13325.60 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2020, 1008, 2015, CAST(12.00 AS Decimal(18, 2)), 20, CAST(240.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2021, 1011, 2015, CAST(24.00 AS Decimal(18, 2)), 5, CAST(120.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2022, 1008, 2016, CAST(12.00 AS Decimal(18, 2)), 20, CAST(240.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2023, 1011, 2016, CAST(24.00 AS Decimal(18, 2)), 5, CAST(120.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2024, 1008, 2017, CAST(12.00 AS Decimal(18, 2)), 20, CAST(240.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2025, 1011, 2017, CAST(24.00 AS Decimal(18, 2)), 5, CAST(120.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2026, 1009, 2017, CAST(126.25 AS Decimal(18, 2)), 6, CAST(757.50 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2027, 1008, 2018, CAST(12.00 AS Decimal(18, 2)), 1, CAST(12.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2028, 1011, 2019, CAST(24.00 AS Decimal(18, 2)), 5, CAST(120.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2029, 1011, 2020, CAST(24.00 AS Decimal(18, 2)), 5, CAST(120.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2030, 1008, 2021, CAST(12.00 AS Decimal(18, 2)), 1, CAST(12.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2031, 1012, 2021, CAST(23.00 AS Decimal(18, 2)), 2, CAST(46.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2032, 1008, 2022, CAST(12.00 AS Decimal(18, 2)), 1, CAST(12.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2033, 1009, 2023, CAST(126.25 AS Decimal(18, 2)), 1, CAST(126.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2034, 1009, 2024, CAST(126.25 AS Decimal(18, 2)), 1, CAST(126.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2035, 1008, 2024, CAST(12.00 AS Decimal(18, 2)), 1, CAST(12.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2036, 1011, 2026, CAST(24.00 AS Decimal(18, 2)), 1, CAST(24.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2037, 1008, 2027, CAST(12.00 AS Decimal(18, 2)), 1, CAST(12.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2038, 1008, 2028, CAST(12.00 AS Decimal(18, 2)), 1, CAST(12.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2039, 1010, 2029, CAST(23.00 AS Decimal(18, 2)), 1, CAST(23.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2040, 1009, 2030, CAST(126.25 AS Decimal(18, 2)), 1, CAST(126.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2041, 1012, 2031, CAST(23.00 AS Decimal(18, 2)), 2, CAST(46.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2042, 1008, 2032, CAST(12.00 AS Decimal(18, 2)), 1, CAST(12.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (2043, 1008, 2033, CAST(12.00 AS Decimal(18, 2)), 15, CAST(180.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (3043, 1014, 3033, CAST(23.25 AS Decimal(18, 2)), 123, CAST(2859.75 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (3044, 1009, 3033, CAST(126.25 AS Decimal(18, 2)), 5, CAST(631.25 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (3045, 1010, 3034, CAST(23.00 AS Decimal(18, 2)), 1, CAST(23.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (3046, 1010, 3035, CAST(23.00 AS Decimal(18, 2)), 1, CAST(23.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (3047, 1008, 3035, CAST(12.00 AS Decimal(18, 2)), 5, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (3048, 1008, 3036, CAST(12.00 AS Decimal(18, 2)), 1, CAST(12.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [product_Id], [OrderId], [ProductSalary], [Amount], [Sum_Salary]) VALUES (3049, 1008, 3037, CAST(12.00 AS Decimal(18, 2)), 2, CAST(24.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (4, N'c4b7f239-022d-4502-829e-32ff52fa9e0e', N'بني سويف', NULL, N'1234569', CAST(N'2021-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (5, N'c4b7f239-022d-4502-829e-32ff52fa9e0e', N'بني سويف', N'01118168853', NULL, CAST(N'2021-02-04T01:06:34.740' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (6, N'c4b7f239-022d-4502-829e-32ff52fa9e0e', N'بني سويف', N'01118168853', N'1234569', CAST(N'2021-02-04T01:27:18.710' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (7, N'c4b7f239-022d-4502-829e-32ff52fa9e0e', N'بني سويف', N'01118168853', N'1234569', CAST(N'2021-02-04T01:32:10.340' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (8, N'c4b7f239-022d-4502-829e-32ff52fa9e0e', N'بني سويف / سمسطا/ العساكرة ', N'012559498', N'1234569', CAST(N'2021-02-04T01:36:42.993' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (9, N'c4b7f239-022d-4502-829e-32ff52fa9e0e', N'بني سويف', N'01118168853', N'1234569', CAST(N'2021-02-04T01:45:34.003' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (10, N'c4b7f239-022d-4502-829e-32ff52fa9e0e', N'بني سويف', N'01118168853', N'1234569', CAST(N'2021-02-04T01:50:59.147' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (11, N'c4b7f239-022d-4502-829e-32ff52fa9e0e', N'بني سويف', N'01118168853', N'1234569', CAST(N'2021-02-04T01:55:11.873' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (12, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', N'بني سويف', N'181-68-853', N'1234569', CAST(N'2021-02-04T02:07:57.090' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (13, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-02-04T03:28:45.053' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (14, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', N'بني سويف', N'01118168853', N'1234569', CAST(N'2021-02-04T03:29:23.597' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (15, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T00:14:28.107' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (16, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T00:19:22.547' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (17, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T00:20:54.450' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (18, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T00:21:00.197' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (19, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T00:25:02.113' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (20, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T00:25:11.590' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (21, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T00:33:22.680' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (22, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T01:13:05.273' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (23, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T01:18:12.683' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (24, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T01:34:02.730' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (25, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T01:34:10.067' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (26, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T01:42:51.813' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (27, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T01:43:49.170' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (28, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T01:47:39.407' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (29, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T01:49:15.583' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (30, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T02:02:11.363' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (31, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T02:02:39.713' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (32, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T02:04:07.370' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (33, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T02:04:24.477' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (34, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T02:17:44.107' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (35, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T02:20:34.770' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (36, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T02:40:09.153' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (37, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T02:59:03.770' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (38, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T03:04:03.210' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (39, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-11T03:04:47.380' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (40, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-13T02:19:21.843' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (41, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-13T02:24:45.480' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (42, N'29b95177-eb37-4c9f-a6b3-cf84db878f71', NULL, NULL, NULL, CAST(N'2021-04-13T02:28:56.990' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (43, NULL, NULL, NULL, NULL, CAST(N'2021-04-13T02:44:16.073' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (44, NULL, NULL, NULL, NULL, CAST(N'2021-04-13T02:55:16.783' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (45, NULL, NULL, NULL, NULL, CAST(N'2021-04-13T03:00:18.143' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (46, NULL, NULL, NULL, NULL, CAST(N'2021-04-13T03:05:08.397' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (47, NULL, NULL, NULL, NULL, CAST(N'2021-04-13T03:32:42.747' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (48, NULL, NULL, NULL, NULL, CAST(N'2021-04-13T04:39:27.827' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (49, NULL, NULL, NULL, NULL, CAST(N'2021-04-13T04:47:03.977' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (50, NULL, NULL, NULL, NULL, CAST(N'2021-04-13T04:50:00.097' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (51, NULL, NULL, NULL, NULL, CAST(N'2021-04-13T05:02:47.263' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (52, NULL, N'dfklagjfj', N'01118168853', N'12654897', CAST(N'2021-04-13T16:38:44.680' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (53, NULL, N'dfklagjfj', N'01118168853', N'12654897', CAST(N'2021-04-13T16:44:22.177' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (54, NULL, N'dfklagjfj', N'01118168853', N'12654897', CAST(N'2021-04-13T16:47:06.983' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (55, N'a9e6ae5c-8aa4-4e03-a36c-5e1868962743', N'Banisuaf', N'01118168853', N'12345678912345', CAST(N'2021-04-13T16:54:06.217' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (56, N'a9e6ae5c-8aa4-4e03-a36c-5e1868962743', N'Banisuaf', N'01118168853', N'15935786421346', CAST(N'2021-04-13T17:15:43.787' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (57, N'a9e6ae5c-8aa4-4e03-a36c-5e1868962743', N'k.hkl', N'yufyu', N'fy', CAST(N'2021-04-13T17:17:55.367' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (58, N'a9e6ae5c-8aa4-4e03-a36c-5e1868962743', N'Banisuaf', N'yufyu', N'12345678912345', CAST(N'2021-04-13T17:21:41.783' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (59, NULL, N'dfklagjfj', N'yufyu', N'12345678912345', CAST(N'2021-04-14T02:02:42.513' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (60, NULL, NULL, NULL, NULL, CAST(N'2021-04-14T02:04:44.397' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (61, NULL, NULL, NULL, NULL, CAST(N'2021-04-14T02:08:30.697' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (62, NULL, NULL, NULL, NULL, CAST(N'2021-04-14T02:12:23.690' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (63, NULL, NULL, NULL, NULL, CAST(N'2021-04-14T05:13:28.427' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (64, NULL, NULL, NULL, NULL, CAST(N'2021-04-14T05:16:31.370' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (65, NULL, NULL, NULL, NULL, CAST(N'2021-04-14T05:18:50.877' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (66, NULL, NULL, NULL, NULL, CAST(N'2021-04-14T05:19:50.927' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (67, NULL, NULL, NULL, NULL, CAST(N'2021-04-14T05:21:04.940' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (68, NULL, NULL, NULL, NULL, CAST(N'2021-04-14T05:29:48.140' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (69, NULL, NULL, NULL, NULL, CAST(N'2021-04-14T05:38:46.023' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (70, N'a9e6ae5c-8aa4-4e03-a36c-5e1868962743', NULL, NULL, NULL, CAST(N'2021-04-14T16:17:24.653' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (71, N'a9e6ae5c-8aa4-4e03-a36c-5e1868962743', NULL, NULL, NULL, CAST(N'2021-04-14T16:20:03.867' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (72, N'a9e6ae5c-8aa4-4e03-a36c-5e1868962743', NULL, NULL, NULL, CAST(N'2021-04-14T16:26:28.413' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (73, N'a9e6ae5c-8aa4-4e03-a36c-5e1868962743', NULL, NULL, NULL, CAST(N'2021-04-14T17:06:45.290' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (74, N'a9e6ae5c-8aa4-4e03-a36c-5e1868962743', NULL, NULL, NULL, CAST(N'2021-04-14T17:35:51.767' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (75, N'a9e6ae5c-8aa4-4e03-a36c-5e1868962743', NULL, NULL, NULL, CAST(N'2021-04-14T19:35:50.857' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (76, N'a9e6ae5c-8aa4-4e03-a36c-5e1868962743', NULL, NULL, NULL, CAST(N'2021-04-14T19:40:32.320' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (77, N'a9e6ae5c-8aa4-4e03-a36c-5e1868962743', NULL, NULL, NULL, CAST(N'2021-04-14T19:43:00.953' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (78, N'a9e6ae5c-8aa4-4e03-a36c-5e1868962743', NULL, NULL, NULL, CAST(N'2021-04-14T19:45:54.187' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (79, N'a9e6ae5c-8aa4-4e03-a36c-5e1868962743', N'Banisuaf', N'01118168853', N'12654897', CAST(N'2021-04-15T17:32:36.507' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (81, N'a9e6ae5c-8aa4-4e03-a36c-5e1868962743', NULL, NULL, N'a9e6ae5c-8aa4-4e03-a36c-5e1868962743', CAST(N'2021-05-16T02:02:12.930' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (1015, N'11075df6-c841-482d-9349-9d24ec85c5e5', N'بني سويف', N'01118168853', N'1234569', CAST(N'2021-07-17T20:27:13.113' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (1016, N'de743283-43d5-4948-849c-4ebbfff9cc9a', N'بني سويف / سمسطا/ العساكرة ', N'01255959489498', N'a9e6ae5c-8aa4-4e03-a36c-5e1868962743', CAST(N'2021-07-18T06:04:59.010' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (2015, N'de743283-43d5-4948-849c-4ebbfff9cc9a', N'jkbjk ', N'lkbk;ln;', N'iijok', CAST(N'2021-07-31T05:35:38.777' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (2016, N'de743283-43d5-4948-849c-4ebbfff9cc9a', N'jkbjk ', N'01118168853', N'56432', CAST(N'2021-07-31T05:39:58.577' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (2017, N'de743283-43d5-4948-849c-4ebbfff9cc9a', N'jkbjk ', N'01118168853', N'56432', CAST(N'2021-07-31T06:22:40.493' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (2018, N'de743283-43d5-4948-849c-4ebbfff9cc9a', N'jkbjk ', N'01118168853', N'56432', CAST(N'2021-07-31T21:02:27.560' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (2019, N'de743283-43d5-4948-849c-4ebbfff9cc9a', N'jkbjk ', N'01118168853', N'56432', CAST(N'2021-07-31T21:21:50.400' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (2020, N'de743283-43d5-4948-849c-4ebbfff9cc9a', N'jkbjk ', N'01118168853', N'56432', CAST(N'2021-08-02T01:50:37.380' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (2021, N'de743283-43d5-4948-849c-4ebbfff9cc9a', N'jkbjk ', N'01118168853', N'56432', CAST(N'2021-08-02T05:19:46.047' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (2022, N'de743283-43d5-4948-849c-4ebbfff9cc9a', N'jkbjk ', N'01118168853', N'56432', CAST(N'2021-08-02T05:22:32.890' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (2023, N'de743283-43d5-4948-849c-4ebbfff9cc9a', N'jkbjk ', N'01118168853', N'56432', CAST(N'2021-08-02T05:29:49.860' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (2024, N'de743283-43d5-4948-849c-4ebbfff9cc9a', N'jkbjk ', N'01118168853', N'56432', CAST(N'2021-08-02T05:41:17.373' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (2025, N'de743283-43d5-4948-849c-4ebbfff9cc9a', N'jkbjk ', N'lkbk;ln;', NULL, CAST(N'2021-08-02T05:43:25.400' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (2026, N'de743283-43d5-4948-849c-4ebbfff9cc9a', N'jkbjk ', N'35', NULL, CAST(N'2021-08-02T05:43:26.153' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (2027, N'de743283-43d5-4948-849c-4ebbfff9cc9a', N'jkbjk ', N'01118168853', N'56432', CAST(N'2021-08-02T05:52:49.123' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (2028, N'de743283-43d5-4948-849c-4ebbfff9cc9a', N'jkbjk ', N'01118168853', N'56432', CAST(N'2021-08-02T06:08:07.570' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (2029, N'de743283-43d5-4948-849c-4ebbfff9cc9a', N'jkbjk ', N'01118168853', N'56432', CAST(N'2021-08-02T06:47:08.313' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (2030, N'de743283-43d5-4948-849c-4ebbfff9cc9a', N'jkbjk ', N'01118168853', N'56432', CAST(N'2021-08-02T06:58:11.030' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (2031, N'de743283-43d5-4948-849c-4ebbfff9cc9a', N'jkbjk ', N'01118168853', N'56432', CAST(N'2021-08-02T21:29:53.510' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (2032, N'a1b06887-5734-408f-940b-4b175d09bee1', N'jkbjk ', N'01118168853', N'56432', CAST(N'2021-08-02T21:31:50.980' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (2033, N'de743283-43d5-4948-849c-4ebbfff9cc9a', N'بني سويف', N'01118168853', N'26565656', CAST(N'2022-01-26T02:33:08.023' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (3033, N'f9aff5bc-47eb-4c66-bb2c-1520ba1958ca', N'مازوره', N'01118168853', N'26565656', CAST(N'2022-02-04T17:41:14.430' AS DateTime))
GO
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (3034, N'f9aff5bc-47eb-4c66-bb2c-1520ba1958ca', N'بني سويف', N'01118168853', N'26565656', CAST(N'2022-02-04T18:55:31.697' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (3035, N'f9aff5bc-47eb-4c66-bb2c-1520ba1958ca', N'بني سويف', N'01118168853', N'26565656', CAST(N'2022-02-04T19:09:39.037' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (3036, N'f9aff5bc-47eb-4c66-bb2c-1520ba1958ca', N'بني سويف', N'01118168853', N'26565656', CAST(N'2022-02-04T19:37:32.130' AS DateTime))
INSERT [dbo].[orders] ([Id], [CustomerName], [Adress], [phone], [CustomerSSn], [GetOrder_Date]) VALUES (3037, N'20f2ced0-ea7f-4ae3-9e47-8a2fc130f140', N'بني سويف', N'01118168853', N'26565656', CAST(N'2022-02-09T03:29:38.890' AS DateTime))
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[OutPutOfProduct] ON 

INSERT [dbo].[OutPutOfProduct] ([Id], [Name_Product], [Amount], [Total_Salary], [Isert_date], [Id_Product]) VALUES (1, N'Printed bgs', 1, CAST(12 AS Decimal(18, 0)), CAST(N'2021-07-27T04:13:54.047' AS DateTime), 1008)
INSERT [dbo].[OutPutOfProduct] ([Id], [Name_Product], [Amount], [Total_Salary], [Isert_date], [Id_Product]) VALUES (2, N'Printed bgs', 1, CAST(12 AS Decimal(18, 0)), CAST(N'2021-07-27T04:14:52.277' AS DateTime), 1008)
INSERT [dbo].[OutPutOfProduct] ([Id], [Name_Product], [Amount], [Total_Salary], [Isert_date], [Id_Product]) VALUES (3, N'Printed bgs', 6, CAST(96 AS Decimal(18, 0)), CAST(N'2021-07-27T04:15:06.857' AS DateTime), 1008)
INSERT [dbo].[OutPutOfProduct] ([Id], [Name_Product], [Amount], [Total_Salary], [Isert_date], [Id_Product]) VALUES (4, N'Printed bgs', 4, CAST(60 AS Decimal(18, 0)), CAST(N'2021-07-28T03:21:34.980' AS DateTime), 1008)
INSERT [dbo].[OutPutOfProduct] ([Id], [Name_Product], [Amount], [Total_Salary], [Isert_date], [Id_Product]) VALUES (5, N'Printed bgs', 4, CAST(240 AS Decimal(18, 0)), CAST(N'2021-07-28T05:55:36.420' AS DateTime), 1008)
INSERT [dbo].[OutPutOfProduct] ([Id], [Name_Product], [Amount], [Total_Salary], [Isert_date], [Id_Product]) VALUES (6, N'Printed bgs', 3, CAST(72 AS Decimal(18, 0)), CAST(N'2021-07-28T05:55:45.433' AS DateTime), 1008)
INSERT [dbo].[OutPutOfProduct] ([Id], [Name_Product], [Amount], [Total_Salary], [Isert_date], [Id_Product]) VALUES (7, N'Printed bgs', 4, CAST(72 AS Decimal(18, 0)), CAST(N'2021-07-28T06:05:01.290' AS DateTime), 1008)
INSERT [dbo].[OutPutOfProduct] ([Id], [Name_Product], [Amount], [Total_Salary], [Isert_date], [Id_Product]) VALUES (8, N'Printed bgs', 150, CAST(1800 AS Decimal(18, 0)), CAST(N'2021-07-28T06:34:03.487' AS DateTime), 1008)
INSERT [dbo].[OutPutOfProduct] ([Id], [Name_Product], [Amount], [Total_Salary], [Isert_date], [Id_Product]) VALUES (9, N'Printed bgs', 1, CAST(12 AS Decimal(18, 0)), CAST(N'2021-07-28T06:38:33.613' AS DateTime), 1008)
INSERT [dbo].[OutPutOfProduct] ([Id], [Name_Product], [Amount], [Total_Salary], [Isert_date], [Id_Product]) VALUES (10, N'Printed bgs', 70, CAST(840 AS Decimal(18, 0)), CAST(N'2022-01-26T02:36:32.940' AS DateTime), 1008)
SET IDENTITY_INSERT [dbo].[OutPutOfProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[part] ON 

INSERT [dbo].[part] ([id], [Name], [Amount], [Price], [Inser_Date], [DateIsertion]) VALUES (1, N'سكينة 123سم', 2, CAST(1500.00 AS Decimal(18, 2)), CAST(N'2021-02-03T21:42:33.133' AS DateTime), NULL)
INSERT [dbo].[part] ([id], [Name], [Amount], [Price], [Inser_Date], [DateIsertion]) VALUES (2, N'مكوة تغليف', 15, CAST(430.00 AS Decimal(18, 2)), CAST(N'2021-02-03T21:42:33.133' AS DateTime), NULL)
INSERT [dbo].[part] ([id], [Name], [Amount], [Price], [Inser_Date], [DateIsertion]) VALUES (3, N'مكزة مقص 125سم ', 3, CAST(750.00 AS Decimal(18, 2)), CAST(N'2021-02-03T21:42:33.133' AS DateTime), NULL)
INSERT [dbo].[part] ([id], [Name], [Amount], [Price], [Inser_Date], [DateIsertion]) VALUES (6, N'tydfy', 2, CAST(15.20 AS Decimal(18, 2)), CAST(N'2021-02-03T21:42:33.133' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[part] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Salary], [Type], [Size], [Content], [Image], [Amount], [DateIsertion]) VALUES (1008, N'Printed bgs', CAST(12.00 AS Decimal(18, 2)), N'Printed bgs', N'123', N'lklk;lkl;j''okj', N'~/images/21271068313.PNG', 132, CAST(N'2021-07-18' AS Date))
INSERT [dbo].[Product] ([Id], [Name], [Salary], [Type], [Size], [Content], [Image], [Amount], [DateIsertion]) VALUES (1009, N'Kyse', CAST(126.25 AS Decimal(18, 2)), N'Kyse', N'1', N'lklk;lkl;j''okj', N'~/images/2107078294184528f-5660-4f1b-bf25-3461d49ac6a0.jpg', 1147, CAST(N'2021-07-18' AS Date))
INSERT [dbo].[Product] ([Id], [Name], [Salary], [Type], [Size], [Content], [Image], [Amount], [DateIsertion]) VALUES (1010, N'Medium', CAST(23.00 AS Decimal(18, 2)), N'Shintah', N'25', N'200 gm Omia  150 gm color 650 raw material', N'~/images/214428982images (5).jpg', 796, CAST(N'2021-07-18' AS Date))
INSERT [dbo].[Product] ([Id], [Name], [Salary], [Type], [Size], [Content], [Image], [Amount], [DateIsertion]) VALUES (1011, N'Small', CAST(24.00 AS Decimal(18, 2)), N'Shintah', N'21', N'200 gm Omia 150 white color 500 gm raw mterail 150 mehbeb', N'~/images/215150545download.png', 1489, CAST(N'2021-07-18' AS Date))
INSERT [dbo].[Product] ([Id], [Name], [Salary], [Type], [Size], [Content], [Image], [Amount], [DateIsertion]) VALUES (1012, N'Medium', CAST(23.00 AS Decimal(18, 2)), N'Shintah', N'27', N'200 gm Omia 150 colored 500 gm raw mterail 150 mehbeb', N'~/images/215522388download (5).jpg', 1250, CAST(N'2021-07-18' AS Date))
INSERT [dbo].[Product] ([Id], [Name], [Salary], [Type], [Size], [Content], [Image], [Amount], [DateIsertion]) VALUES (1013, N'Medium', CAST(26.00 AS Decimal(18, 2)), N'Shintah', N'27', N'100 gm Omia 150 white color 750gm raw mterail ', N'~/images/215829833images (6).jpg', 1254, CAST(N'2021-07-18' AS Date))
INSERT [dbo].[Product] ([Id], [Name], [Salary], [Type], [Size], [Content], [Image], [Amount], [DateIsertion]) VALUES (1014, N'Bebi', CAST(23.25 AS Decimal(18, 2)), N'Shintah', N'18', N'200 gm omia 800 raw materails', N'~/images/213111991download (7).jpg', 1218, CAST(N'2021-07-18' AS Date))
INSERT [dbo].[Product] ([Id], [Name], [Salary], [Type], [Size], [Content], [Image], [Amount], [DateIsertion]) VALUES (1015, N'Kyse 15', CAST(26.00 AS Decimal(18, 2)), N'Kyse', N'15', N'Raw Material ', N'~/images/214831527images (13).jpg', 1484, CAST(N'2021-07-18' AS Date))
INSERT [dbo].[Product] ([Id], [Name], [Salary], [Type], [Size], [Content], [Image], [Amount], [DateIsertion]) VALUES (1016, N'Kyse 17', CAST(25.30 AS Decimal(18, 2)), N'Kyse', N'19', N'Raw Material ', N'~/images/21494439332919.jpeg', 1359, CAST(N'2021-07-18' AS Date))
INSERT [dbo].[Product] ([Id], [Name], [Salary], [Type], [Size], [Content], [Image], [Amount], [DateIsertion]) VALUES (1017, N'print larg', CAST(35.23 AS Decimal(18, 2)), N'Printed bgs', N'26', N'400 gm Omia 200 color 200 gm raw mterail 200 mehbeb', N'~/images/210822921images (4).jpg', 2654, CAST(N'2021-07-18' AS Date))
INSERT [dbo].[Product] ([Id], [Name], [Salary], [Type], [Size], [Content], [Image], [Amount], [DateIsertion]) VALUES (1018, N'print larg', CAST(36.25 AS Decimal(18, 2)), N'Printed bgs', N'26', N'600 gm Omia 100 color 300 gm raw mterail ', N'~/images/210941489images (9).jpg', 254, CAST(N'2021-07-18' AS Date))
INSERT [dbo].[Product] ([Id], [Name], [Salary], [Type], [Size], [Content], [Image], [Amount], [DateIsertion]) VALUES (1019, N'print medium', CAST(36.25 AS Decimal(18, 2)), N'Printed bgs', N'21', N'500 gm Omia 200 white color 300 gm raw mterail ', N'~/images/211058719images (1).jpg', 1225, CAST(N'2021-07-18' AS Date))
INSERT [dbo].[Product] ([Id], [Name], [Salary], [Type], [Size], [Content], [Image], [Amount], [DateIsertion]) VALUES (1020, N'print medium', CAST(36.25 AS Decimal(18, 2)), N'Printed bgs', N'21', N'300 gm Omia 100 white color 600 gm raw mterail ', N'~/images/211256518images (12).jpg', 0, CAST(N'2021-07-18' AS Date))
INSERT [dbo].[Product] ([Id], [Name], [Salary], [Type], [Size], [Content], [Image], [Amount], [DateIsertion]) VALUES (1021, N'print medium', CAST(38.00 AS Decimal(18, 2)), N'Printed bgs', N'20', N'700 gm Omia 200 white color 100gm raw mterail ', N'~/images/211543242download (2).jpg', 76, CAST(N'2021-07-18' AS Date))
INSERT [dbo].[Product] ([Id], [Name], [Salary], [Type], [Size], [Content], [Image], [Amount], [DateIsertion]) VALUES (2023, N'Kyse', CAST(36.25 AS Decimal(18, 2)), N'Kyse', N'15', N'600 gm Omia 100 color 300 gm raw mterail ', N'~/Images/21123536013.PNG', 102, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Raw_Materials] ON 

INSERT [dbo].[Raw_Materials] ([Id], [Name], [Type], [Salary], [Sup_Id], [Amount], [DateIsertion]) VALUES (9, N'سابك', N'خامة', CAST(7.36 AS Decimal(8, 2)), 8, 122, CAST(N'2021-07-24' AS Date))
INSERT [dbo].[Raw_Materials] ([Id], [Name], [Type], [Salary], [Sup_Id], [Amount], [DateIsertion]) VALUES (10, N'المصري', N'خامة', CAST(9.26 AS Decimal(8, 2)), 8, 150, CAST(N'0001-01-01' AS Date))
INSERT [dbo].[Raw_Materials] ([Id], [Name], [Type], [Salary], [Sup_Id], [Amount], [DateIsertion]) VALUES (11, N'سعودي سابك', N'خامه', CAST(6.75 AS Decimal(8, 2)), 8, 120, CAST(N'0001-01-01' AS Date))
INSERT [dbo].[Raw_Materials] ([Id], [Name], [Type], [Salary], [Sup_Id], [Amount], [DateIsertion]) VALUES (12, N'اوميا 1', N'اوميا', CAST(4.26 AS Decimal(8, 2)), 9, 115, CAST(N'0001-01-01' AS Date))
INSERT [dbo].[Raw_Materials] ([Id], [Name], [Type], [Salary], [Sup_Id], [Amount], [DateIsertion]) VALUES (13, N'اوميا 2', N'اوميا', CAST(4.03 AS Decimal(8, 2)), 9, 136, CAST(N'2021-07-18' AS Date))
INSERT [dbo].[Raw_Materials] ([Id], [Name], [Type], [Salary], [Sup_Id], [Amount], [DateIsertion]) VALUES (14, N'مخرز', N'خامة', CAST(3.26 AS Decimal(8, 2)), 10, 125, CAST(N'2021-07-18' AS Date))
INSERT [dbo].[Raw_Materials] ([Id], [Name], [Type], [Salary], [Sup_Id], [Amount], [DateIsertion]) VALUES (15, N'محبب', N'خامة', CAST(3.26 AS Decimal(8, 2)), 10, 125, CAST(N'2021-07-18' AS Date))
INSERT [dbo].[Raw_Materials] ([Id], [Name], [Type], [Salary], [Sup_Id], [Amount], [DateIsertion]) VALUES (16, N'لون ابيض', N'الوان', CAST(12.25 AS Decimal(8, 2)), 11, 9, CAST(N'2021-07-18' AS Date))
INSERT [dbo].[Raw_Materials] ([Id], [Name], [Type], [Salary], [Sup_Id], [Amount], [DateIsertion]) VALUES (17, N'الوان مختلفة', N'الوان', CAST(11.36 AS Decimal(8, 2)), 11, 20, CAST(N'2021-07-18' AS Date))
SET IDENTITY_INSERT [dbo].[Raw_Materials] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([Id], [FirstName], [LastName], [Adress], [Phone_Number], [Acount], [SSN]) VALUES (8, N'khaled', N'jamal', N'Banisuaf', N'01118168853', N'100', CAST(12345678912345 AS Decimal(14, 0)))
INSERT [dbo].[Supplier] ([Id], [FirstName], [LastName], [Adress], [Phone_Number], [Acount], [SSN]) VALUES (9, N'Hesham', N'Nady', N'Cairo', N'011122893227', N'123', CAST(12315698712345 AS Decimal(14, 0)))
INSERT [dbo].[Supplier] ([Id], [FirstName], [LastName], [Adress], [Phone_Number], [Acount], [SSN]) VALUES (10, N'Amir', N'jamal', N'Giza', N'01102093337', N'1125', CAST(11236987458165 AS Decimal(14, 0)))
INSERT [dbo].[Supplier] ([Id], [FirstName], [LastName], [Adress], [Phone_Number], [Acount], [SSN]) VALUES (11, N'ahmed', N'jamal', N'Alexanderia', N'01122895697', N'1234', CAST(78963259647127 AS Decimal(14, 0)))
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([product_ID])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([emp_Id])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([emp_Id])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([emp_Id])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Input_Materails]  WITH CHECK ADD FOREIGN KEY([IdMaterials])
REFERENCES [dbo].[Raw_Materials] ([Id])
GO
ALTER TABLE [dbo].[Input_Materails]  WITH CHECK ADD FOREIGN KEY([IdMaterials])
REFERENCES [dbo].[Raw_Materials] ([Id])
GO
ALTER TABLE [dbo].[Input_Materails]  WITH CHECK ADD FOREIGN KEY([IdMaterials])
REFERENCES [dbo].[Raw_Materials] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Product] FOREIGN KEY([product_Id])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Product]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_AspNetUsers] FOREIGN KEY([CustomerName])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_AspNetUsers]
GO
ALTER TABLE [dbo].[OutPutOfProduct]  WITH CHECK ADD FOREIGN KEY([Id_Product])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OutPutOfProduct]  WITH CHECK ADD FOREIGN KEY([Id_Product])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OutPutOfProduct]  WITH CHECK ADD FOREIGN KEY([Id_Product])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Raw_Materials]  WITH CHECK ADD FOREIGN KEY([Sup_Id])
REFERENCES [dbo].[Supplier] ([Id])
GO
ALTER TABLE [dbo].[Raw_Materials]  WITH CHECK ADD FOREIGN KEY([Sup_Id])
REFERENCES [dbo].[Supplier] ([Id])
GO
ALTER TABLE [dbo].[Raw_Materials]  WITH CHECK ADD FOREIGN KEY([Sup_Id])
REFERENCES [dbo].[Supplier] ([Id])
GO
/****** Object:  StoredProcedure [dbo].[SelectAllCustomers]    Script Date: 3/24/2022 2:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectAllCustomers] @ID int
AS
SELECT * FROM OrderDetails WHERE OrderId = @ID
GO

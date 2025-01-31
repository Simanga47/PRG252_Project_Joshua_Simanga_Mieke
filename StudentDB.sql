USE [StudentDB]
GO
/****** Object:  Table [dbo].[Module]    Script Date: 10/29/2021 1:18:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Module](
	[ModuleCode_PK] [int] NOT NULL,
	[ModuleName] [varchar](50) NOT NULL,
	[ModuleDescription] [varchar](50) NOT NULL,
	[Resource] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Module] PRIMARY KEY CLUSTERED 
(
	[ModuleCode_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStudent]    Script Date: 10/29/2021 1:18:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStudent](
	[stdNumber] [int] NOT NULL,
	[stdName] [varchar](50) NOT NULL,
	[stdSurname] [varchar](50) NOT NULL,
	[stdImg] [varbinary](50) NULL,
	[DOB] [varchar](50) NOT NULL,
	[gender] [varchar](50) NOT NULL,
	[phone] [char](10) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[ModuleCode_FK] [int] NOT NULL,
 CONSTRAINT [PK_tblStudent] PRIMARY KEY CLUSTERED 
(
	[stdNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Module] ([ModuleCode_PK], [ModuleName], [ModuleDescription], [Resource]) VALUES (1, N'math', N'dealing with numbers and letters', N'https://youtu.be/HPsazrVSjl8')
INSERT [dbo].[Module] ([ModuleCode_PK], [ModuleName], [ModuleDescription], [Resource]) VALUES (2, N'English', N'dealing with the english language', N'https://youtu.be/HV6h7MRrRNA')
INSERT [dbo].[Module] ([ModuleCode_PK], [ModuleName], [ModuleDescription], [Resource]) VALUES (3, N'JavaScript', N'Using Html and JS to make wensite', N'https://youtu.be/W6NZfCO5SIk')
INSERT [dbo].[Module] ([ModuleCode_PK], [ModuleName], [ModuleDescription], [Resource]) VALUES (4, N'C#', N'Programming language', N'https://youtu.be/gfkTfcpWqAY')
INSERT [dbo].[Module] ([ModuleCode_PK], [ModuleName], [ModuleDescription], [Resource]) VALUES (5, N'Python', N'Programming language', N'https://youtu.be/_uQrJ0TkZlc')
INSERT [dbo].[Module] ([ModuleCode_PK], [ModuleName], [ModuleDescription], [Resource]) VALUES (6, N'SQL Server', N'DataBase storing data', N'https://youtu.be/WttoAlS__8k')
INSERT [dbo].[Module] ([ModuleCode_PK], [ModuleName], [ModuleDescription], [Resource]) VALUES (7, N'C++', N'Programming Language', N'https://youtu.be/vLnPwxZdW4Y')
INSERT [dbo].[Module] ([ModuleCode_PK], [ModuleName], [ModuleDescription], [Resource]) VALUES (8, N'Arduino', N'Machine Learning(Easy Version)', N'https://youtu.be/nL34zDTPkcs')
INSERT [dbo].[Module] ([ModuleCode_PK], [ModuleName], [ModuleDescription], [Resource]) VALUES (9, N'C', N'programming language', N'https://youtu.be/KJgsSFOSQv0')
INSERT [dbo].[Module] ([ModuleCode_PK], [ModuleName], [ModuleDescription], [Resource]) VALUES (10, N'React', N'using a library', N'https://youtu.be/w7ejDZ8SWv8')
ALTER TABLE [dbo].[tblStudent]  WITH CHECK ADD  CONSTRAINT [FK_tblStudent_Module] FOREIGN KEY([ModuleCode_FK])
REFERENCES [dbo].[Module] ([ModuleCode_PK])
GO
ALTER TABLE [dbo].[tblStudent] CHECK CONSTRAINT [FK_tblStudent_Module]
GO

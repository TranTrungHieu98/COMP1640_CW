/****** Object:  Table [dbo].[asp_Group]    Script Date: 02/03/2016 11:28:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asp_Group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](128) NOT NULL,
	[description] [nvarchar](1024) NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[asp_Group_Role]    Script Date: 02/03/2016 11:28:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asp_Group_Role](
	[roleName] [nvarchar](128) NOT NULL,
	[groupid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[roleName] ASC,
	[groupid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[asp_Role]    Script Date: 02/03/2016 11:28:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asp_Role](
	[name] [nvarchar](128) NOT NULL,
	[description] [nvarchar](1024) NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[asp_User]    Script Date: 02/03/2016 11:28:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asp_User](
	[account] [nvarchar](32) NOT NULL,
	[password] [nvarchar](32) NOT NULL,
	[userName] [nvarchar](128) NOT NULL,
	[email] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[asp_User_Group]    Script Date: 02/03/2016 11:28:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asp_User_Group](
	[userid] [nvarchar](32) NOT NULL,
	[groupid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userid] ASC,
	[groupid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Class]    Script Date: 02/03/2016 11:28:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Class](
	[IDClass] [int] NOT NULL,
	[Subject] [varchar](45) NULL,
	[Course] [varchar](45) NULL,
	[Department] [varchar](45) NULL,
	[Title] [varchar](45) NULL,
	[Description] [text] NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[IDClass] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Course]    Script Date: 02/03/2016 11:28:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[IDCourse] [int] NOT NULL,
	[cm] [varbinary](45) NULL,
	[class_IDclass] [int] NULL,
	[Dates] [varchar](45) NULL,
	[Credits] [smallint] NULL,
	[Days] [varchar](7) NULL,
	[BTime] [time](7) NULL,
	[ETime] [time](7) NULL,
	[Location] [int] NULL,
	[instructor] [int] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[IDCourse] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 02/03/2016 11:28:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Instructor](
	[IDInstructor] [int] NOT NULL,
	[name] [varchar](45) NULL,
	[email] [varchar](45) NULL,
	[url] [varchar](45) NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[IDInstructor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[asp_Group] ON 

INSERT [dbo].[asp_Group] ([id], [name], [description], [status]) VALUES (1, N'Admin', N'Super Admin', 1)
INSERT [dbo].[asp_Group] ([id], [name], [description], [status]) VALUES (2, N'PVC', N'Pro-Vice Chancellor', 1)
INSERT [dbo].[asp_Group] ([id], [name], [description], [status]) VALUES (3, N'DLT', N'Director of Learning and Quanlity', 1)
INSERT [dbo].[asp_Group] ([id], [name], [description], [status]) VALUES (4, N'CM', N'Course Moderator', 1)
INSERT [dbo].[asp_Group] ([id], [name], [description], [status]) VALUES (5, N'CL', N'Course Leader', 1)
INSERT [dbo].[asp_Group] ([id], [name], [description], [status]) VALUES (6, N'CL', N'Guest', 1)
SET IDENTITY_INSERT [dbo].[asp_Group] OFF
INSERT [dbo].[asp_Group_Role] ([roleName], [groupid]) VALUES (N'0', 1)
INSERT [dbo].[asp_Group_Role] ([roleName], [groupid]) VALUES (N'1', 1)
INSERT [dbo].[asp_Group_Role] ([roleName], [groupid]) VALUES (N'2', 5)
INSERT [dbo].[asp_Group_Role] ([roleName], [groupid]) VALUES (N'3', 5)
INSERT [dbo].[asp_Group_Role] ([roleName], [groupid]) VALUES (N'4', 4)
INSERT [dbo].[asp_Group_Role] ([roleName], [groupid]) VALUES (N'4', 5)
INSERT [dbo].[asp_Group_Role] ([roleName], [groupid]) VALUES (N'5', 2)
INSERT [dbo].[asp_Group_Role] ([roleName], [groupid]) VALUES (N'5', 4)
INSERT [dbo].[asp_Group_Role] ([roleName], [groupid]) VALUES (N'6', 5)
INSERT [dbo].[asp_Group_Role] ([roleName], [groupid]) VALUES (N'7', 4)
INSERT [dbo].[asp_Group_Role] ([roleName], [groupid]) VALUES (N'7', 5)
INSERT [dbo].[asp_Group_Role] ([roleName], [groupid]) VALUES (N'8', 5)
INSERT [dbo].[asp_Role] ([name], [description], [status]) VALUES (N'0', N'Admin', 0)
INSERT [dbo].[asp_Role] ([name], [description], [status]) VALUES (N'1', N'Cấu hình quảng cáo', 0)
INSERT [dbo].[asp_Role] ([name], [description], [status]) VALUES (N'2', N'Cấu hình Game', 0)
INSERT [dbo].[asp_Role] ([name], [description], [status]) VALUES (N'3', N'Cấu hình Notification', 0)
INSERT [dbo].[asp_Role] ([name], [description], [status]) VALUES (N'4', N'Tạo câu hỏi', 0)
INSERT [dbo].[asp_Role] ([name], [description], [status]) VALUES (N'5', N'Kiểm duyệt câu hỏi', 0)
INSERT [dbo].[asp_Role] ([name], [description], [status]) VALUES (N'6', N'Quản lý câu hỏi đã kiểm duyệt', 0)
INSERT [dbo].[asp_Role] ([name], [description], [status]) VALUES (N'7', N'Quản lý chủ đề', 0)
INSERT [dbo].[asp_Role] ([name], [description], [status]) VALUES (N'8', N'Quản lý quyền hệ thông', 0)
INSERT [dbo].[asp_User] ([account], [password], [userName], [email]) VALUES (N'Admin', N'e3afed0047b08059d0fada10f400c1e5', N'Admin', N'thanhnxgt00410@fpt.edu.vn')
INSERT [dbo].[asp_User] ([account], [password], [userName], [email]) VALUES (N't3st', N'e86e107b113b0f830b9b817b4a9addb8', N't3st', N'admin@gmail.com')
INSERT [dbo].[asp_User_Group] ([userid], [groupid]) VALUES (N'Admin', 1)
INSERT [dbo].[asp_User_Group] ([userid], [groupid]) VALUES (N't3st', 4)
INSERT [dbo].[Class] ([IDClass], [Subject], [Course], [Department], [Title], [Description]) VALUES (1, N'Programing C', N'GC00900', N'ABCD', N'Programing C with ABC', N'12345689')
INSERT [dbo].[Class] ([IDClass], [Subject], [Course], [Department], [Title], [Description]) VALUES (2, N'Programing C#', N'GC00923', N'ABC', N'Programing C# with ABC', N'1234565432')
INSERT [dbo].[Course] ([IDCourse], [cm], [class_IDclass], [Dates], [Credits], [Days], [BTime], [ETime], [Location], [instructor]) VALUES (1, NULL, 1, N'20/1/2016', 1, N'30', CAST(0x070068C461080000 AS Time), CAST(0x0700384D25190000 AS Time), 1, 1)
INSERT [dbo].[Instructor] ([IDInstructor], [name], [email], [url]) VALUES (1, N'Nguyen Van Nam', N'nguyenthinh507@yahoo.com.vn', N'https://www.google.com/')
INSERT [dbo].[Instructor] ([IDInstructor], [name], [email], [url]) VALUES (2, N'Ng?c Anh', N'abc@gmail.com', N'www.github.com')
INSERT [dbo].[Instructor] ([IDInstructor], [name], [email], [url]) VALUES (3, N'Ahh Nguyen', N'anhnguyen@gmail.com', N'http://localhost:52394/')
ALTER TABLE [dbo].[asp_Group] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[asp_Role] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[asp_Group_Role]  WITH CHECK ADD FOREIGN KEY([groupid])
REFERENCES [dbo].[asp_Group] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[asp_Group_Role]  WITH CHECK ADD FOREIGN KEY([roleName])
REFERENCES [dbo].[asp_Role] ([name])
GO
ALTER TABLE [dbo].[asp_User_Group]  WITH CHECK ADD FOREIGN KEY([groupid])
REFERENCES [dbo].[asp_Group] ([id])
GO
ALTER TABLE [dbo].[asp_User_Group]  WITH CHECK ADD FOREIGN KEY([userid])
REFERENCES [dbo].[asp_User] ([account])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_course_Classs] FOREIGN KEY([class_IDclass])
REFERENCES [dbo].[Class] ([IDClass])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_course_Classs]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_instructor] FOREIGN KEY([instructor])
REFERENCES [dbo].[Instructor] ([IDInstructor])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_instructor]
GO
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 3/5/2016 4:22:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[StudentGrade] [int] NOT NULL,
	[Course] [int] NOT NULL,
	[Grade] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 3/5/2016 4:22:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[IDStudent] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[IDStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Course] FOREIGN KEY([Course])
REFERENCES [dbo].[Course] ([IDCourse])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Course]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Student] FOREIGN KEY([StudentGrade])
REFERENCES [dbo].[Student] ([IDStudent])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Student]
GO

GO
/****** Object:  Table [dbo].[Class]    Script Date: 3/1/2016 11:10:18 PM ******/
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
/****** Object:  Table [dbo].[Course]    Script Date: 3/1/2016 11:10:18 PM ******/
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
/****** Object:  Table [dbo].[dbo.asp_Instructor]    Script Date: 3/1/2016 11:10:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dbo.asp_Instructor](
	[IDInstructor] [int] NOT NULL,
	[name] [varchar](45) NULL,
	[email] [varchar](45) NULL,
	[url] [varchar](45) NULL,
 CONSTRAINT [PK_dbo.asp_Instructor] PRIMARY KEY CLUSTERED 
(
	[IDInstructor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_course_Classs] FOREIGN KEY([class_IDclass])
REFERENCES [dbo].[Class] ([IDClass])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_course_Classs]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_instructor] FOREIGN KEY([instructor])
REFERENCES [dbo].[dbo.asp_Instructor] ([IDInstructor])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_instructor]
GO

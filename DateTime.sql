USE [hd]
GO

/****** Object:  Table [dbo].[DateTime]    Script Date: 09.05.2018 20:58:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DateTime](
	[ID] [bigint] NOT NULL,
	[DateTime] [datetime] NULL,
	[MediaDateTime] [varchar](20) NULL,
	[Date] [date] NULL,
	[MediaDate] [date] NULL,
	[Time] [time](7) NULL,
	[MediaTime] [varchar](8) NULL,
	[Hour] [time](7) NULL,
	[MediaHour] [varchar](8) NULL,
	[DateHour] [datetime] NULL,
	[DateMediaHour] [varchar](20) NULL,
	[DayOfMonth] [tinyint] NULL,
	[DayOfWeek] [tinyint] NULL,
	[DayOfYear] [smallint] NULL,
	[WeekOfYear] [tinyint] NULL,
	[Month] [varchar](10) NULL,
	[MonthNumber] [tinyint] NULL,
	[Weekday] [varchar](10) NULL,
 CONSTRAINT [PK_DateTime] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



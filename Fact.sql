USE [hd]
GO

/****** Object:  Table [dbo].[Fact]    Script Date: 09.05.2018 20:59:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Fact](
	[FactID] [bigint] NOT NULL,
	[TargetGroupID] [smallint] NULL,
	[2ndDescriptionID] [bigint] NULL,
	[DescriptionID] [bigint] NULL,
	[ChannelID] [smallint] NULL,
	[DateTimeID] [bigint] NULL,
	[AMR] [float] NULL,
	[AMR%] [float] NULL,
	[SHR%] [float] NULL,
	[RCH%] [float] NULL,
	[RCH] [float] NULL,
 CONSTRAINT [PK_Fact] PRIMARY KEY CLUSTERED 
(
	[FactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Fact]  WITH CHECK ADD  CONSTRAINT [FK_Fact_2ndDescription] FOREIGN KEY([2ndDescriptionID])
REFERENCES [dbo].[2ndDescription] ([ID])
GO

ALTER TABLE [dbo].[Fact] CHECK CONSTRAINT [FK_Fact_2ndDescription]
GO

ALTER TABLE [dbo].[Fact]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Channel] FOREIGN KEY([ChannelID])
REFERENCES [dbo].[Channel] ([ID])
GO

ALTER TABLE [dbo].[Fact] CHECK CONSTRAINT [FK_Fact_Channel]
GO

ALTER TABLE [dbo].[Fact]  WITH CHECK ADD  CONSTRAINT [FK_Fact_DateTime] FOREIGN KEY([DateTimeID])
REFERENCES [dbo].[DateTime] ([ID])
GO

ALTER TABLE [dbo].[Fact] CHECK CONSTRAINT [FK_Fact_DateTime]
GO

ALTER TABLE [dbo].[Fact]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Description] FOREIGN KEY([DescriptionID])
REFERENCES [dbo].[Description] ([ID])
GO

ALTER TABLE [dbo].[Fact] CHECK CONSTRAINT [FK_Fact_Description]
GO

ALTER TABLE [dbo].[Fact]  WITH CHECK ADD  CONSTRAINT [FK_Fact_TargetGroups] FOREIGN KEY([TargetGroupID])
REFERENCES [dbo].[TargetGroups] ([ID])
GO

ALTER TABLE [dbo].[Fact] CHECK CONSTRAINT [FK_Fact_TargetGroups]
GO



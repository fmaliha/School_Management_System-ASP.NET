USE [SchoolManagement]
GO

/****** Object:  Table [dbo].[SMFeesCollection]    Script Date: 1/8/2020 10:46:22 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SMFeesCollection](
	[ReferenceNo] [int] IDENTITY(101,1) NOT NULL,
	[StudentAdmissionNo] [varchar](50) NULL,
	[Date] [date] NULL,
	[CollectionHead] [varchar](50) NULL,
	[CollectionMode] [varchar](50) NULL,
	[Amount] [decimal](18, 4) NULL,
	[Narration] [varchar](50) NULL,
 CONSTRAINT [PK_SMFeesCollection] PRIMARY KEY CLUSTERED 
(
	[ReferenceNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


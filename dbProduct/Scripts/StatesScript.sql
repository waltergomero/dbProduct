USE [dbProduct]
GO
/****** Object:  Table [dbo].[States]    Script Date: 10/22/2018 2:59:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateCode] [char](2) NOT NULL,
	[StateName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[States] ON 

INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (1, N'AL', N'Alabama')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (2, N'AK', N'Alaska')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (3, N'AZ', N'Arizona')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (4, N'AR', N'Arkansas')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (5, N'CA', N'California')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (6, N'CO', N'Colorado')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (7, N'CT', N'Connecticut')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (8, N'DE', N'Delaware')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (9, N'FL', N'Florida')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (10, N'GA', N'Georgia')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (11, N'HI', N'Hawaii')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (12, N'ID', N'Idaho')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (13, N'IL', N'Illinois')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (14, N'IN', N'Indiana')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (15, N'IA', N'Iowa')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (16, N'KS', N'Kansas')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (17, N'KY', N'Kentucky')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (18, N'LA', N'Louisiana')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (19, N'ME', N'Maine')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (20, N'MD', N'Maryland')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (21, N'MA', N'Massachusetts')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (22, N'MI', N'Michigan')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (23, N'MN', N'Minnesota')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (24, N'MS', N'Mississippi')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (25, N'MO', N'Missouri')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (26, N'MT', N'Montana')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (27, N'NE', N'Nebraska')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (28, N'NV', N'Nevada')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (29, N'NH', N'New Hampshire')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (30, N'NJ', N'New Jersey')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (31, N'NM', N'New Mexico')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (32, N'NY', N'New York')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (33, N'NC', N'North Carolina')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (34, N'ND', N'North Dakota')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (35, N'OH', N'Ohio')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (36, N'OK', N'Oklahoma')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (37, N'OR', N'Oregon')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (38, N'PA', N'Pennsylvania')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (39, N'RI', N'Rhode Island')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (40, N'SC', N'South Carolina')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (41, N'SD', N'South Dakota')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (42, N'TN', N'Tennessee')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (43, N'TX', N'Texas')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (44, N'UT', N'Utah')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (45, N'VT', N'Vermont')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (46, N'VA', N'Virginia')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (47, N'WA', N'Washington')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (48, N'WV', N'West Virginia')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (49, N'WI', N'Wisconsin')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (50, N'WY', N'Wyoming')
INSERT [dbo].[States] ([StateId], [StateCode], [StateName]) VALUES (51, N'DC', N'District of Columbia')
SET IDENTITY_INSERT [dbo].[States] OFF

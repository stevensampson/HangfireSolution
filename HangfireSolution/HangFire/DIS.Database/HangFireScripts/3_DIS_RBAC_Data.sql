Use DIS4_Dev
Go

/****** Object:  Table [dbo].[ApplicationAllowRole]    Script Date: 4/29/2015 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationAllowRole]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ApplicationAllowRole](
	[AppID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_ApplicationAllowRole] PRIMARY KEY CLUSTERED 
(
	[AppID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Role]    Script Date: 4/29/2015 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](200) NOT NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_Role_IsActive]  DEFAULT ((1)),
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[UIApplication]    Script Date: 4/29/2015 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UIApplication]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UIApplication](
	[AppID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationDescription] [varchar](200) NOT NULL,
 CONSTRAINT [PK_UIApplication] PRIMARY KEY CLUSTERED 
(
	[AppID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 4/29/2015 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRole]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserRole](
	[RoleID] [int] NOT NULL,
	[UserName] [varchar](200) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_RoleMembership] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC,
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([ID], [RoleName], [IsActive]) VALUES (1, N'Admin', 1)
INSERT [dbo].[Role] ([ID], [RoleName], [IsActive]) VALUES (2, N'User', 1)
INSERT [dbo].[Role] ([ID], [RoleName], [IsActive]) VALUES (3, N'Tech', 1)
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[UIApplication] ON 

INSERT [dbo].[UIApplication] ([AppID], [ApplicationDescription]) VALUES (1, N'HangFire Dashboard')
INSERT [dbo].[UIApplication] ([AppID], [ApplicationDescription]) VALUES (2, N'Hangfire Configuration')
SET IDENTITY_INSERT [dbo].[UIApplication] OFF
INSERT [dbo].[UserRole] ([RoleID], [UserName], [IsActive]) VALUES (1, N'cdi\STS IS Software Development', 1)
INSERT [dbo].[UserRole] ([RoleID], [UserName], [IsActive]) VALUES (3, N'cdi\App Dev Support', 1)
INSERT [dbo].[UserRole] ([RoleID], [UserName], [IsActive]) VALUES (3, N'cdi\STS Application Support Team', 1)
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ApplicationAllowRole_ApplicationAllowRole]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationAllowRole]'))
ALTER TABLE [dbo].[ApplicationAllowRole]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationAllowRole_ApplicationAllowRole] FOREIGN KEY([AppID], [RoleID])
REFERENCES [dbo].[ApplicationAllowRole] ([AppID], [RoleID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ApplicationAllowRole_ApplicationAllowRole]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationAllowRole]'))
ALTER TABLE [dbo].[ApplicationAllowRole] CHECK CONSTRAINT [FK_ApplicationAllowRole_ApplicationAllowRole]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ApplicationAllowRole_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationAllowRole]'))
ALTER TABLE [dbo].[ApplicationAllowRole]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationAllowRole_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ApplicationAllowRole_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationAllowRole]'))
ALTER TABLE [dbo].[ApplicationAllowRole] CHECK CONSTRAINT [FK_ApplicationAllowRole_Role]
GO

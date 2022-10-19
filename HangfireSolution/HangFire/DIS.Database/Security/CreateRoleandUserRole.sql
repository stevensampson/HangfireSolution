
if Exists(select * from INFORMATION_SCHEMA.TABLES where  TABLE_NAME in ('Role','UserRole'))
begin
-- delete all value from UserRole table
DELETE from [dbo].[UserRole]
-- delete all value from role table
delete from [dbo].[Role]
-- insert value in to role table
SET IDENTITY_INSERT [dbo].[Role] ON 
INSERT [dbo].[Role] ([ID], [RoleName], [IsActive]) VALUES (1, N'Admin', 1)
INSERT [dbo].[Role] ([ID], [RoleName], [IsActive]) VALUES (2, N'User', 1)
INSERT [dbo].[Role] ([ID], [RoleName], [IsActive]) VALUES (3, N'Tech', 1)
SET IDENTITY_INSERT [dbo].[Role] OFF

-- Insert value into UserRole Table
SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([RoleID], [UserName], [IsActive], [ID]) VALUES (1, N'cdi\STS IS Software Development', 0, 11)
INSERT [dbo].[UserRole] ([RoleID], [UserName], [IsActive], [ID]) VALUES (3, N'suvankar1', 1, 12)
INSERT [dbo].[UserRole] ([RoleID], [UserName], [IsActive], [ID]) VALUES (1, N'atalukdar1', 0, 13)
INSERT [dbo].[UserRole] ([RoleID], [UserName], [IsActive], [ID]) VALUES (1, N'cdi\atalukdar', 0, 14)
SET IDENTITY_INSERT [dbo].[UserRole] OFF


end

else
-- If table not exists create Role and UserRole table
begin
-- create Role Table
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](200) NOT NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_Role_IsActive]  DEFAULT ((1)),
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

--Create UseRole Table
CREATE TABLE [dbo].[UserRole](
	[RoleID] [int] NOT NULL,
	[UserName] [varchar](200) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_RoleMembership] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


SET IDENTITY_INSERT [dbo].[Role] ON 


INSERT [dbo].[Role] ([ID], [RoleName], [IsActive]) VALUES (1, N'Admin', 1)
INSERT [dbo].[Role] ([ID], [RoleName], [IsActive]) VALUES (2, N'User', 1)
INSERT [dbo].[Role] ([ID], [RoleName], [IsActive]) VALUES (3, N'Tech', 1)


SET IDENTITY_INSERT [dbo].[Role] OFF

SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([RoleID], [UserName], [IsActive], [ID]) VALUES (1, N'cdi\STS IS Software Development', 0, 11)
INSERT [dbo].[UserRole] ([RoleID], [UserName], [IsActive], [ID]) VALUES (2, N'suvankar', 1, 12)
INSERT [dbo].[UserRole] ([RoleID], [UserName], [IsActive], [ID]) VALUES (1, N'atalukdar', 0, 13)
INSERT [dbo].[UserRole] ([RoleID], [UserName], [IsActive], [ID]) VALUES (1, N'cdi\atalukdar', 0, 14)

SET IDENTITY_INSERT [dbo].[UserRole] OFF

ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]

end
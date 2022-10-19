CREATE TABLE [dbo].[UserRole] (
    [RoleID]   INT           NOT NULL,
    [UserName] VARCHAR (200) NOT NULL,
    [IsActive] BIT           NOT NULL,
    [ID]       INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_RoleMembership] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_UserRole_Role] FOREIGN KEY ([RoleID]) REFERENCES [dbo].[Role] ([ID])
);






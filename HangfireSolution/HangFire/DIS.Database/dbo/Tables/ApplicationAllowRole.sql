CREATE TABLE [dbo].[ApplicationAllowRole] (
    [AppID]  INT NOT NULL,
    [RoleID] INT NOT NULL,
    CONSTRAINT [PK_ApplicationAllowRole] PRIMARY KEY CLUSTERED ([AppID] ASC, [RoleID] ASC),
    CONSTRAINT [FK_ApplicationAllowRole_ApplicationAllowRole] FOREIGN KEY ([AppID], [RoleID]) REFERENCES [dbo].[ApplicationAllowRole] ([AppID], [RoleID]),
    CONSTRAINT [FK_ApplicationAllowRole_Role] FOREIGN KEY ([RoleID]) REFERENCES [dbo].[Role] ([ID])
);


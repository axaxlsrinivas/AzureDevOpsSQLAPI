CREATE TABLE [dbo].[Scope] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [HotWorkId]     INT            NULL,
    [WorkDetail]    NVARCHAR (500) NULL,
    [WorkLocation]  NVARCHAR (100) NULL,
    [CompanyName]   NVARCHAR (100) NULL,
    [StartDateTime] DATETIME       NULL,
    [EndDateTime]   DATETIME       NULL,
    CONSTRAINT [PK_Scope] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Scope_HotWork] FOREIGN KEY ([HotWorkId]) REFERENCES [dbo].[HotWork] ([Id]) ON DELETE CASCADE
);


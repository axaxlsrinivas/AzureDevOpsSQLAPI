CREATE TABLE [dbo].[ScopePerson] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [ScopeId]    INT            NULL,
    [PersonName] NVARCHAR (100) NULL,
    CONSTRAINT [PK_ScopePerson] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ScopePerson_Scope] FOREIGN KEY ([ScopeId]) REFERENCES [dbo].[Scope] ([Id]) ON DELETE CASCADE
);


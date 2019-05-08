CREATE TABLE [dbo].[ImpairmentClassMaster] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Description] NVARCHAR (100) NULL,
    CONSTRAINT [PK_ImpairmentClassMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);


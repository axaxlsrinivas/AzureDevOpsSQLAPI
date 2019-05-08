CREATE TABLE [dbo].[ImpairmentTypeMaster] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Description] NVARCHAR (100) NULL,
    CONSTRAINT [PK_ImpairmentTypeMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);


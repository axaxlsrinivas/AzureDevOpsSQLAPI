CREATE TABLE [dbo].[ImpairmentPrecautionMaster] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Description] NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_ImpairmentPrecautionMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);


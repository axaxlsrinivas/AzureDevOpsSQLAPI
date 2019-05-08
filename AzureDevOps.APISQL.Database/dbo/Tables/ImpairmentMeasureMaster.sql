CREATE TABLE [dbo].[ImpairmentMeasureMaster] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Description] NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_ImpairmentMeasureMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);


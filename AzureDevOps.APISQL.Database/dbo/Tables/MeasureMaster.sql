CREATE TABLE [dbo].[MeasureMaster] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Description] NVARCHAR (500) NULL,
    CONSTRAINT [PK_MeasureMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);


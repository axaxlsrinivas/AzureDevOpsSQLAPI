CREATE TABLE [dbo].[ShutDownReasonMaster] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Description] NVARCHAR (100) NULL,
    CONSTRAINT [PK_ShutDownReasonMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);


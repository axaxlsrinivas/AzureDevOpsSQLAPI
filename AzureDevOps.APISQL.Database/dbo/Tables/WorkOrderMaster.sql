CREATE TABLE [dbo].[WorkOrderMaster] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [WorkOrderName] NVARCHAR (100) NULL,
    CONSTRAINT [PK_WorkOrderMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);


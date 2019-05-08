CREATE TABLE [dbo].[ScopeWorkOrder] (
    [Id]          INT IDENTITY (1, 1) NOT NULL,
    [ScopeId]     INT NULL,
    [WorkOrderId] INT NULL,
    CONSTRAINT [PK_ScopeWorkOrder] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ScopeWorkOrder_Scope] FOREIGN KEY ([ScopeId]) REFERENCES [dbo].[Scope] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_ScopeWorkOrder_WorkOrderMaster] FOREIGN KEY ([WorkOrderId]) REFERENCES [dbo].[WorkOrderMaster] ([Id])
);


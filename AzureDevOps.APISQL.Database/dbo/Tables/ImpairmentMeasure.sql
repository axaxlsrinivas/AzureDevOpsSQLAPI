CREATE TABLE [dbo].[ImpairmentMeasure] (
    [ImpairmentId]              INT NOT NULL,
    [ImpairmentMeasureMasterId] INT NOT NULL,
    CONSTRAINT [PK_ImpairmentMeasure] PRIMARY KEY CLUSTERED ([ImpairmentId] ASC, [ImpairmentMeasureMasterId] ASC),
    CONSTRAINT [FK_ImpairmentMeasure_Impairment] FOREIGN KEY ([ImpairmentId]) REFERENCES [dbo].[Impairment] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_ImpairmentMeasure_ImpairmentMeasureMaster] FOREIGN KEY ([ImpairmentMeasureMasterId]) REFERENCES [dbo].[ImpairmentMeasureMaster] ([Id])
);


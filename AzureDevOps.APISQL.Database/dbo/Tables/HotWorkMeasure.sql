CREATE TABLE [dbo].[HotWorkMeasure] (
    [Id]                    INT           IDENTITY (1, 1) NOT NULL,
    [HotWorkId]             INT           NULL,
    [MeasureId]             INT           NULL,
    [MeasureStatus]         NVARCHAR (10) NULL,
    [FireHoseCount]         INT           NULL,
    [FireExtinguisherCount] INT           NULL,
    CONSTRAINT [PK_HotWorkMeasure] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_HotWorkMeasure_HotWork] FOREIGN KEY ([HotWorkId]) REFERENCES [dbo].[HotWork] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_HotWorkMeasure_MeasureMaster] FOREIGN KEY ([MeasureId]) REFERENCES [dbo].[MeasureMaster] ([Id])
);


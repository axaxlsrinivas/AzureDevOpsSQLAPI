CREATE TABLE [dbo].[ImpairmentPrecaution] (
    [ImpairmentId]                 INT            NOT NULL,
    [ImpairmentPrecautionMasterId] INT            NOT NULL,
    [OtherDescription]             NVARCHAR (100) NULL,
    CONSTRAINT [PK_ImpairmentPrecaution] PRIMARY KEY CLUSTERED ([ImpairmentId] ASC, [ImpairmentPrecautionMasterId] ASC),
    CONSTRAINT [FK_ImpairmentPrecaution_Impairment] FOREIGN KEY ([ImpairmentId]) REFERENCES [dbo].[Impairment] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_ImpairmentPrecaution_ImpairmentPrecautionMaster] FOREIGN KEY ([ImpairmentPrecautionMasterId]) REFERENCES [dbo].[ImpairmentPrecautionMaster] ([Id])
);


CREATE TABLE [dbo].[ReporterDetail] (
    [ImpairmentId] INT           NOT NULL,
    [Name]         NVARCHAR (50) NULL,
    [Email]        NVARCHAR (50) NULL,
    [Phone]        NVARCHAR (20) NULL,
    CONSTRAINT [PK_ReporterDetail] PRIMARY KEY CLUSTERED ([ImpairmentId] ASC),
    CONSTRAINT [FK_ReporterDetail_Impairment] FOREIGN KEY ([ImpairmentId]) REFERENCES [dbo].[Impairment] ([Id]) ON DELETE CASCADE
);


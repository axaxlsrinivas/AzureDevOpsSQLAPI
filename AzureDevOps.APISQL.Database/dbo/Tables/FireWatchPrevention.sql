CREATE TABLE [dbo].[FireWatchPrevention] (
    [Id]               INT            IDENTITY (1, 1) NOT NULL,
    [FirePreventionId] INT            NULL,
    [PersonName]       NVARCHAR (100) NULL,
    [StartTime]        TIME (7)       NULL,
    [EndTime]          TIME (7)       NULL,
    [FireWatchType]    NVARCHAR (20)  NULL,
    CONSTRAINT [PK_FireWatchPrevention] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FireWatchPrevention_FirePrevention] FOREIGN KEY ([FirePreventionId]) REFERENCES [dbo].[FirePrevention] ([Id]) ON DELETE CASCADE
);


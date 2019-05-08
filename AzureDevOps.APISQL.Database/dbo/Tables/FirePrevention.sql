CREATE TABLE [dbo].[FirePrevention] (
    [Id]                       INT            IDENTITY (1, 1) NOT NULL,
    [HotWorkId]                INT            NULL,
    [NearestFireAlarmLocation] NVARCHAR (100) NULL,
    [NearestPhone]             NVARCHAR (100) NULL,
    CONSTRAINT [PK_FirePrevention] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FirePrevention_HotWork] FOREIGN KEY ([HotWorkId]) REFERENCES [dbo].[HotWork] ([Id]) ON DELETE CASCADE
);


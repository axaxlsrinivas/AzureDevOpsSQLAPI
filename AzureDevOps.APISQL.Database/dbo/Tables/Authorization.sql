CREATE TABLE [dbo].[Authorization] (
    [Id]                       INT            IDENTITY (1, 1) NOT NULL,
    [HotWorkId]                INT            NULL,
    [AuthorizerName]           NVARCHAR (100) NULL,
    [Department]               NVARCHAR (100) NULL,
    [Location]                 NVARCHAR (100) NULL,
    [AuthorizationDateTime]    DATETIME       NULL,
    [IsHighHazardArea]         NVARCHAR (10)  NULL,
    [AreaSupervisorName]       NVARCHAR (100) NULL,
    [AreaSupervisorDepartment] NVARCHAR (100) NULL,
    CONSTRAINT [PK_Authorization] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Authorization_HotWork] FOREIGN KEY ([HotWorkId]) REFERENCES [dbo].[HotWork] ([Id]) ON DELETE CASCADE
);


CREATE TABLE [dbo].[HotWork] (
    [Id]              INT           IDENTITY (573, 8) NOT NULL,
    [HotWorkMobileId] INT           NULL,
    [AccountId]       NVARCHAR (50) NULL,
    [SiteId]          NVARCHAR (50) NULL,
    [IsParent]        BIT           NULL,
    [ParentHotWorkId] INT           NULL,
    [WorkFlowStatus]  NVARCHAR (20) NULL,
    [IsDeleted]       BIT           NULL,
    CONSTRAINT [PK_HotWork] PRIMARY KEY CLUSTERED ([Id] ASC)
);


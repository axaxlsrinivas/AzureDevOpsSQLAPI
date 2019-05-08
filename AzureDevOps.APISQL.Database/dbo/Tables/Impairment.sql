CREATE TABLE [dbo].[Impairment] (
    [Id]                    INT            IDENTITY (1023, 6) NOT NULL,
    [ImpairmentMobileId]    INT            NULL,
    [AccountId]             NVARCHAR (50)  NULL,
    [SiteId]                NVARCHAR (50)  NULL,
    [IsParent]              BIT            NULL,
    [ParentImpairmentId]    INT            NULL,
    [WorkFlowStatus]        NVARCHAR (20)  NULL,
    [ImpairmentTypeId]      INT            NULL,
    [ImpairmentClassId]     INT            NULL,
    [ShutDownReasonId]      INT            NULL,
    [ImpairmentDescription] NVARCHAR (200) NULL,
    [StartDateTime]         DATETIME       NULL,
    [EndDateTime]           DATETIME       NULL,
    [CloseDateTime]         DATETIME       NULL,
    [IsDeleted]             BIT            NULL,
    CONSTRAINT [PK_Impairment] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Impairment_Impairment] FOREIGN KEY ([ImpairmentTypeId]) REFERENCES [dbo].[ImpairmentTypeMaster] ([Id]),
    CONSTRAINT [FK_Impairment_ImpairmentClassMaster] FOREIGN KEY ([ImpairmentClassId]) REFERENCES [dbo].[ImpairmentClassMaster] ([Id]),
    CONSTRAINT [FK_Impairment_ShutDownReasonMaster] FOREIGN KEY ([ShutDownReasonId]) REFERENCES [dbo].[ShutDownReasonMaster] ([Id])
);


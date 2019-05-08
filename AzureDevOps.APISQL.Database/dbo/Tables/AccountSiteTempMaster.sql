CREATE TABLE [dbo].[AccountSiteTempMaster] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [AccountId]      NVARCHAR (50)  NOT NULL,
    [SiteId]         NVARCHAR (50)  NOT NULL,
    [CompanyName]    NVARCHAR (100) NULL,
    [CompanyAddress] NVARCHAR (500) NULL,
    [SiteName]       NVARCHAR (100) NULL,
    [Region]         NVARCHAR (50)  NULL,
    [City]           NVARCHAR (50)  NULL,
    [State]          NVARCHAR (50)  NULL,
    [Country]        NVARCHAR (50)  NULL,
    [PostalCode]     NVARCHAR (15)  NULL,
    CONSTRAINT [PK_AccountSiteTempMaster] PRIMARY KEY CLUSTERED ([AccountId] ASC, [SiteId] ASC)
);


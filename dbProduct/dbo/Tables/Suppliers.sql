CREATE TABLE [dbo].[Suppliers] (
    [SupplierID]   INT          IDENTITY (1, 1) NOT NULL,
    [CompanyName]  VARCHAR (40) NOT NULL,
    [ContactName]  VARCHAR (30) NULL,
    [ContactTitle] VARCHAR (30) NULL,
    [Address]      VARCHAR (60) NULL,
    [City]         VARCHAR (15) NULL,
    [StateId]      INT          NULL,
    [ZipCode]      VARCHAR (10) NULL,
	[RegionId]     INT          NULL,
    [Country]      VARCHAR (15) NULL,
    [Phone]        VARCHAR (24) NULL,
    [Email]        VARCHAR (64) NULL,
    [Notes]        VARCHAR (2048) NULL,
    CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED ([SupplierID] ASC)
);


CREATE TABLE [dbo].[Shippers] (
    [ShipperID]   INT          IDENTITY (1, 1) NOT NULL,
    [CompanyName] VARCHAR (50) NOT NULL,
	[ContactName] VARCHAR (50) NOT NULL,
    [Phone]       VARCHAR (24) NULL,
	[Email]       VARCHAR (50) NULL,
    CONSTRAINT [PK_Shippers] PRIMARY KEY CLUSTERED ([ShipperID] ASC)
);


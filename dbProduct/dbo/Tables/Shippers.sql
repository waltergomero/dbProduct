CREATE TABLE [dbo].[Shippers] (
    [ShipperID]   INT          IDENTITY (1, 1) NOT NULL,
    [CompanyName] VARCHAR (40) NOT NULL,
    [Phone]       VARCHAR (24) NULL,
    CONSTRAINT [PK_Shippers] PRIMARY KEY CLUSTERED ([ShipperID] ASC)
);


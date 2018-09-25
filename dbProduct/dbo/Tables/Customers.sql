CREATE TABLE [dbo].[Customers] (
    [CustomerID]   CHAR (5)     NOT NULL,
    [CompanyName]  VARCHAR (40) NOT NULL,
    [ContactName]  VARCHAR (30) NULL,
    [ContactTitle] VARCHAR (30) NULL,
    [Address]      VARCHAR (60) NULL,
    [City]         VARCHAR (15) NULL,
    [StateId]       INT NULL,
    [PostalCode]   VARCHAR (10) NULL,
    [Phone]        VARCHAR (24) NULL,
    [Fax]          VARCHAR (24) NULL,
    [Email] VARCHAR(50) NULL, 
    [CreatedDate] DATETIME NOT NULL, 
    [UpdatedDate] DATETIME NOT NULL, 
    [CreatedBy] VARCHAR(50) NOT NULL, 
    [UpdatedBy] VARCHAR(50) NOT NULL, 
    CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ([CustomerID] ASC)
);


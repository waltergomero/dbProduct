CREATE TABLE [dbo].[Orders] (
    [OrderID]        INT          IDENTITY (1, 1) NOT NULL,
    [CustomerID]     CHAR (5)     NULL,
    [EmployeeID]     INT          NULL,
    [OrderDate]      DATETIME     NULL,
    [RequiredDate]   DATETIME     NULL,
    [ShippedDate]    DATETIME     NULL,
    [ShipVia]        INT          NULL,
    [Freight]        MONEY        CONSTRAINT [DF_Orders_Freight] DEFAULT ((0)) NULL,
    [ShipName]       VARCHAR (40) NULL,
    [ShipAddress]    VARCHAR (60) NULL,
    [ShipCity]       VARCHAR (15) NULL,
    [ShipRegion]     VARCHAR (15) NULL,
    [ShipPostalCode] VARCHAR (10) NULL,
    [ShipCountry]    VARCHAR (15) NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([OrderID] ASC),
    CONSTRAINT [FK_Orders_Customers] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID]),
    CONSTRAINT [FK_Orders_Employees] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employees] ([EmployeeID]),
    CONSTRAINT [FK_Orders_Shippers] FOREIGN KEY ([ShipVia]) REFERENCES [dbo].[Shippers] ([ShipperID])
);


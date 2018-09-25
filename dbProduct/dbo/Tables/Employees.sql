CREATE TABLE [dbo].[Employees] (
    [EmployeeID]      INT           IDENTITY (1, 1) NOT NULL,
    [LastName]        VARCHAR (20)  NOT NULL,
    [FirstName]       VARCHAR (10)  NOT NULL,
    [Title]           VARCHAR (30)  NULL,
    [TitleOfCourtesy] VARCHAR (25)  NULL,
    [BirthDate]       DATETIME      NULL,
    [HireDate]        DATETIME      NULL,
    [Address]         VARCHAR (60)  NULL,
    [City]            VARCHAR (15)  NULL,
    [Region]          VARCHAR (15)  NULL,
    [PostalCode]      VARCHAR (10)  NULL,
    [Country]         VARCHAR (15)  NULL,
    [HomePhone]       VARCHAR (24)  NULL,
    [Extension]       VARCHAR (4)   NULL,
    [Photo]           IMAGE         NULL,
    [Notes]           NTEXT         NULL,
    [ReportsTo]       INT           NULL,
    [PhotoPath]       VARCHAR (255) NULL,
    CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED ([EmployeeID] ASC),
    CONSTRAINT [CK_Birthdate] CHECK ([BirthDate]<getdate()),
    CONSTRAINT [FK_Employees_Employees] FOREIGN KEY ([ReportsTo]) REFERENCES [dbo].[Employees] ([EmployeeID])
);


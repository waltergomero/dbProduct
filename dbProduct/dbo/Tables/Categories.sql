CREATE TABLE [dbo].[Categories] (
    [CategoryID]   INT          IDENTITY (1, 1) NOT NULL,
    [CategoryName] VARCHAR (15) NOT NULL,
    [Description]  VARCHAR(512)        NULL,
    [Picture]      IMAGE        NULL,
    [ParentCategoryId] INT NOT NULL, 
    [StatusId] INT NULL, 
    CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([CategoryID] ASC)
);


CREATE TABLE [dbo].[Categories] (
    [CategoryID]   INT          IDENTITY (1, 1) NOT NULL,
    [CategoryName] VARCHAR (15)			NOT NULL,
    [Description]  VARCHAR(512)         NULL,
    [Picture]      VARCHAR(64)			NULL,
    [ParentCategoryId] INT				NOT NULL, 
    [StatusId] INT						NULL, 
    CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([CategoryID] ASC)
);


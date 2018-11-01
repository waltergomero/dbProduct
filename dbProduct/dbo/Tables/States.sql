CREATE TABLE [dbo].[States]
(
	[StateId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [StateCode] CHAR(10) NULL, 
    [StateName] VARCHAR(50) NOT NULL
)

CREATE TABLE [dbo].[CustomerDemographics] (
    [CustomerTypeID] CHAR (10) NOT NULL,
    [CustomerDesc]   NTEXT     NULL,
    CONSTRAINT [PK_CustomerDemographics] PRIMARY KEY NONCLUSTERED ([CustomerTypeID] ASC)
);


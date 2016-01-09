
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/09/2016 16:00:40
-- Generated from EDMX file: c:\users\hammad.tawfig\documents\visual studio 2015\Projects\VRSMS\src\VRSMS\VRSMS.Data\VRSMSModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [VRSMS_DEVL];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ServiceProviderAvailabilityServiceProvider]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Accounts_ServiceProvider] DROP CONSTRAINT [FK_ServiceProviderAvailabilityServiceProvider];
GO
IF OBJECT_ID(N'[dbo].[FK_AddressProvinceType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [FK_AddressProvinceType];
GO
IF OBJECT_ID(N'[dbo].[FK_ServiceProvider_inherits_Account]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Accounts_ServiceProvider] DROP CONSTRAINT [FK_ServiceProvider_inherits_Account];
GO
IF OBJECT_ID(N'[dbo].[FK_ServiceRequester_inherits_Account]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Accounts_ServiceRequester] DROP CONSTRAINT [FK_ServiceRequester_inherits_Account];
GO
IF OBJECT_ID(N'[dbo].[FK_ServiceReceiver_inherits_Account]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Accounts_ServiceReceiver] DROP CONSTRAINT [FK_ServiceReceiver_inherits_Account];
GO
IF OBJECT_ID(N'[dbo].[FK_ProvinceType_inherits_BaseType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BaseTypes_ProvinceType] DROP CONSTRAINT [FK_ProvinceType_inherits_BaseType];
GO
IF OBJECT_ID(N'[dbo].[FK_ServiceOrganizer_inherits_Account]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Accounts_ServiceOrganizer] DROP CONSTRAINT [FK_ServiceOrganizer_inherits_Account];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Accounts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Accounts];
GO
IF OBJECT_ID(N'[dbo].[ServiceRequests]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ServiceRequests];
GO
IF OBJECT_ID(N'[dbo].[ServiceProviderAvailabilities]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ServiceProviderAvailabilities];
GO
IF OBJECT_ID(N'[dbo].[Addresses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Addresses];
GO
IF OBJECT_ID(N'[dbo].[BaseTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BaseTypes];
GO
IF OBJECT_ID(N'[dbo].[Accounts_ServiceProvider]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Accounts_ServiceProvider];
GO
IF OBJECT_ID(N'[dbo].[Accounts_ServiceRequester]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Accounts_ServiceRequester];
GO
IF OBJECT_ID(N'[dbo].[Accounts_ServiceReceiver]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Accounts_ServiceReceiver];
GO
IF OBJECT_ID(N'[dbo].[BaseTypes_ProvinceType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BaseTypes_ProvinceType];
GO
IF OBJECT_ID(N'[dbo].[Accounts_ServiceOrganizer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Accounts_ServiceOrganizer];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Accounts'
CREATE TABLE [dbo].[Accounts] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'ServiceRequests'
CREATE TABLE [dbo].[ServiceRequests] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [LocationName] nvarchar(max)  NOT NULL,
    [Status_Id] int  NOT NULL
);
GO

-- Creating table 'ServiceProviderAvailabilities'
CREATE TABLE [dbo].[ServiceProviderAvailabilities] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Addresses'
CREATE TABLE [dbo].[Addresses] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [AddressLine1] nvarchar(max)  NOT NULL,
    [AddressLine2] nvarchar(max)  NOT NULL,
    [City] nvarchar(max)  NOT NULL,
    [PostalCode] nvarchar(max)  NOT NULL,
    [Province_Id] int  NOT NULL
);
GO

-- Creating table 'BaseTypes'
CREATE TABLE [dbo].[BaseTypes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Code] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Accounts_ServiceProvider'
CREATE TABLE [dbo].[Accounts_ServiceProvider] (
    [ServiceProviderAvailabilityId] int  NOT NULL,
    [ContactInformation_Phone] nvarchar(max)  NOT NULL,
    [ContactInformation_Email] nvarchar(max)  NOT NULL,
    [Id] int  NOT NULL,
    [Type_Id] int  NOT NULL
);
GO

-- Creating table 'BaseTypes_ProvinceType'
CREATE TABLE [dbo].[BaseTypes_ProvinceType] (
    [Id] int  NOT NULL
);
GO

-- Creating table 'Accounts_ServiceReceiver'
CREATE TABLE [dbo].[Accounts_ServiceReceiver] (
    [ContactInformation_Phone] nvarchar(max)  NOT NULL,
    [ContactInformation_Email] nvarchar(max)  NOT NULL,
    [Id] int  NOT NULL,
    [Type_Id] int  NOT NULL
);
GO

-- Creating table 'BaseTypes_ServiceReceiverType'
CREATE TABLE [dbo].[BaseTypes_ServiceReceiverType] (
    [Id] int  NOT NULL
);
GO

-- Creating table 'Accounts_ServiceOrganizer'
CREATE TABLE [dbo].[Accounts_ServiceOrganizer] (
    [Id] int  NOT NULL,
    [Type_Id] int  NOT NULL
);
GO

-- Creating table 'BaseTypes_ServiceOrganizerType'
CREATE TABLE [dbo].[BaseTypes_ServiceOrganizerType] (
    [Id] int  NOT NULL
);
GO

-- Creating table 'BaseTypes_ServiceRequestStatusType'
CREATE TABLE [dbo].[BaseTypes_ServiceRequestStatusType] (
    [Id] int  NOT NULL
);
GO

-- Creating table 'Accounts_ServiceRequester'
CREATE TABLE [dbo].[Accounts_ServiceRequester] (
    [Name] nvarchar(max)  NOT NULL,
    [ContactInformation_Phone] nvarchar(max)  NOT NULL,
    [ContactInformation_Email] nvarchar(max)  NOT NULL,
    [Id] int  NOT NULL,
    [Type_Id] int  NOT NULL
);
GO

-- Creating table 'BaseTypes_ServiceRequesterType'
CREATE TABLE [dbo].[BaseTypes_ServiceRequesterType] (
    [Id] int  NOT NULL
);
GO

-- Creating table 'BaseTypes_ServiceProviderType'
CREATE TABLE [dbo].[BaseTypes_ServiceProviderType] (
    [Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Accounts'
ALTER TABLE [dbo].[Accounts]
ADD CONSTRAINT [PK_Accounts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ServiceRequests'
ALTER TABLE [dbo].[ServiceRequests]
ADD CONSTRAINT [PK_ServiceRequests]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ServiceProviderAvailabilities'
ALTER TABLE [dbo].[ServiceProviderAvailabilities]
ADD CONSTRAINT [PK_ServiceProviderAvailabilities]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [PK_Addresses]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BaseTypes'
ALTER TABLE [dbo].[BaseTypes]
ADD CONSTRAINT [PK_BaseTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Accounts_ServiceProvider'
ALTER TABLE [dbo].[Accounts_ServiceProvider]
ADD CONSTRAINT [PK_Accounts_ServiceProvider]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BaseTypes_ProvinceType'
ALTER TABLE [dbo].[BaseTypes_ProvinceType]
ADD CONSTRAINT [PK_BaseTypes_ProvinceType]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Accounts_ServiceReceiver'
ALTER TABLE [dbo].[Accounts_ServiceReceiver]
ADD CONSTRAINT [PK_Accounts_ServiceReceiver]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BaseTypes_ServiceReceiverType'
ALTER TABLE [dbo].[BaseTypes_ServiceReceiverType]
ADD CONSTRAINT [PK_BaseTypes_ServiceReceiverType]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Accounts_ServiceOrganizer'
ALTER TABLE [dbo].[Accounts_ServiceOrganizer]
ADD CONSTRAINT [PK_Accounts_ServiceOrganizer]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BaseTypes_ServiceOrganizerType'
ALTER TABLE [dbo].[BaseTypes_ServiceOrganizerType]
ADD CONSTRAINT [PK_BaseTypes_ServiceOrganizerType]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BaseTypes_ServiceRequestStatusType'
ALTER TABLE [dbo].[BaseTypes_ServiceRequestStatusType]
ADD CONSTRAINT [PK_BaseTypes_ServiceRequestStatusType]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Accounts_ServiceRequester'
ALTER TABLE [dbo].[Accounts_ServiceRequester]
ADD CONSTRAINT [PK_Accounts_ServiceRequester]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BaseTypes_ServiceRequesterType'
ALTER TABLE [dbo].[BaseTypes_ServiceRequesterType]
ADD CONSTRAINT [PK_BaseTypes_ServiceRequesterType]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BaseTypes_ServiceProviderType'
ALTER TABLE [dbo].[BaseTypes_ServiceProviderType]
ADD CONSTRAINT [PK_BaseTypes_ServiceProviderType]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ServiceProviderAvailabilityId] in table 'Accounts_ServiceProvider'
ALTER TABLE [dbo].[Accounts_ServiceProvider]
ADD CONSTRAINT [FK_ServiceProviderAvailabilityServiceProvider]
    FOREIGN KEY ([ServiceProviderAvailabilityId])
    REFERENCES [dbo].[ServiceProviderAvailabilities]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ServiceProviderAvailabilityServiceProvider'
CREATE INDEX [IX_FK_ServiceProviderAvailabilityServiceProvider]
ON [dbo].[Accounts_ServiceProvider]
    ([ServiceProviderAvailabilityId]);
GO

-- Creating foreign key on [Province_Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_AddressProvinceType]
    FOREIGN KEY ([Province_Id])
    REFERENCES [dbo].[BaseTypes_ProvinceType]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AddressProvinceType'
CREATE INDEX [IX_FK_AddressProvinceType]
ON [dbo].[Addresses]
    ([Province_Id]);
GO

-- Creating foreign key on [Type_Id] in table 'Accounts_ServiceReceiver'
ALTER TABLE [dbo].[Accounts_ServiceReceiver]
ADD CONSTRAINT [FK_ServiceReceiverServiceReceiverType]
    FOREIGN KEY ([Type_Id])
    REFERENCES [dbo].[BaseTypes_ServiceReceiverType]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ServiceReceiverServiceReceiverType'
CREATE INDEX [IX_FK_ServiceReceiverServiceReceiverType]
ON [dbo].[Accounts_ServiceReceiver]
    ([Type_Id]);
GO

-- Creating foreign key on [Type_Id] in table 'Accounts_ServiceOrganizer'
ALTER TABLE [dbo].[Accounts_ServiceOrganizer]
ADD CONSTRAINT [FK_ServiceOrganizerServiceOrganizerType]
    FOREIGN KEY ([Type_Id])
    REFERENCES [dbo].[BaseTypes_ServiceOrganizerType]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ServiceOrganizerServiceOrganizerType'
CREATE INDEX [IX_FK_ServiceOrganizerServiceOrganizerType]
ON [dbo].[Accounts_ServiceOrganizer]
    ([Type_Id]);
GO

-- Creating foreign key on [Status_Id] in table 'ServiceRequests'
ALTER TABLE [dbo].[ServiceRequests]
ADD CONSTRAINT [FK_ServiceRequestServiceRequestStatusType]
    FOREIGN KEY ([Status_Id])
    REFERENCES [dbo].[BaseTypes_ServiceRequestStatusType]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ServiceRequestServiceRequestStatusType'
CREATE INDEX [IX_FK_ServiceRequestServiceRequestStatusType]
ON [dbo].[ServiceRequests]
    ([Status_Id]);
GO

-- Creating foreign key on [Type_Id] in table 'Accounts_ServiceRequester'
ALTER TABLE [dbo].[Accounts_ServiceRequester]
ADD CONSTRAINT [FK_ServiceRequesterServiceRequesterType]
    FOREIGN KEY ([Type_Id])
    REFERENCES [dbo].[BaseTypes_ServiceRequesterType]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ServiceRequesterServiceRequesterType'
CREATE INDEX [IX_FK_ServiceRequesterServiceRequesterType]
ON [dbo].[Accounts_ServiceRequester]
    ([Type_Id]);
GO

-- Creating foreign key on [Type_Id] in table 'Accounts_ServiceProvider'
ALTER TABLE [dbo].[Accounts_ServiceProvider]
ADD CONSTRAINT [FK_ServiceProviderServiceProviderType]
    FOREIGN KEY ([Type_Id])
    REFERENCES [dbo].[BaseTypes_ServiceProviderType]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ServiceProviderServiceProviderType'
CREATE INDEX [IX_FK_ServiceProviderServiceProviderType]
ON [dbo].[Accounts_ServiceProvider]
    ([Type_Id]);
GO

-- Creating foreign key on [Id] in table 'Accounts_ServiceProvider'
ALTER TABLE [dbo].[Accounts_ServiceProvider]
ADD CONSTRAINT [FK_ServiceProvider_inherits_Account]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Accounts]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'BaseTypes_ProvinceType'
ALTER TABLE [dbo].[BaseTypes_ProvinceType]
ADD CONSTRAINT [FK_ProvinceType_inherits_BaseType]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[BaseTypes]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Accounts_ServiceReceiver'
ALTER TABLE [dbo].[Accounts_ServiceReceiver]
ADD CONSTRAINT [FK_ServiceReceiver_inherits_Account]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Accounts]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'BaseTypes_ServiceReceiverType'
ALTER TABLE [dbo].[BaseTypes_ServiceReceiverType]
ADD CONSTRAINT [FK_ServiceReceiverType_inherits_BaseType]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[BaseTypes]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Accounts_ServiceOrganizer'
ALTER TABLE [dbo].[Accounts_ServiceOrganizer]
ADD CONSTRAINT [FK_ServiceOrganizer_inherits_Account]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Accounts]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'BaseTypes_ServiceOrganizerType'
ALTER TABLE [dbo].[BaseTypes_ServiceOrganizerType]
ADD CONSTRAINT [FK_ServiceOrganizerType_inherits_BaseType]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[BaseTypes]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'BaseTypes_ServiceRequestStatusType'
ALTER TABLE [dbo].[BaseTypes_ServiceRequestStatusType]
ADD CONSTRAINT [FK_ServiceRequestStatusType_inherits_BaseType]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[BaseTypes]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Accounts_ServiceRequester'
ALTER TABLE [dbo].[Accounts_ServiceRequester]
ADD CONSTRAINT [FK_ServiceRequester_inherits_Account]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Accounts]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'BaseTypes_ServiceRequesterType'
ALTER TABLE [dbo].[BaseTypes_ServiceRequesterType]
ADD CONSTRAINT [FK_ServiceRequesterType_inherits_BaseType]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[BaseTypes]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'BaseTypes_ServiceProviderType'
ALTER TABLE [dbo].[BaseTypes_ServiceProviderType]
ADD CONSTRAINT [FK_ServiceProviderType_inherits_BaseType]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[BaseTypes]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
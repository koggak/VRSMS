
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/06/2016 21:38:49
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


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


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
    [ServiceRequestStatusId] int  NOT NULL
);
GO

-- Creating table 'ServiceProviderTypes'
CREATE TABLE [dbo].[ServiceProviderTypes] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'ServiceRequesterTypes'
CREATE TABLE [dbo].[ServiceRequesterTypes] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'ServiceReceiverTypes'
CREATE TABLE [dbo].[ServiceReceiverTypes] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'ServiceProviderAvailabilities'
CREATE TABLE [dbo].[ServiceProviderAvailabilities] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'ServiceRequestStatus'
CREATE TABLE [dbo].[ServiceRequestStatus] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Accounts_ServiceProvider'
CREATE TABLE [dbo].[Accounts_ServiceProvider] (
    [ServiceProviderAvailabilityId] int  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'Accounts_ServiceRequester'
CREATE TABLE [dbo].[Accounts_ServiceRequester] (
    [Id] int  NOT NULL
);
GO

-- Creating table 'Accounts_ServiceReceiver'
CREATE TABLE [dbo].[Accounts_ServiceReceiver] (
    [Id] int  NOT NULL
);
GO

-- Creating table 'Accounts_ServiceOrganizer'
CREATE TABLE [dbo].[Accounts_ServiceOrganizer] (
    [ServiceOrganizerTypeId] int  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'ServiceProviderTypeServiceProvider'
CREATE TABLE [dbo].[ServiceProviderTypeServiceProvider] (
    [ServiceProviderTypes_Id] int  NOT NULL,
    [ServiceProviders_Id] int  NOT NULL
);
GO

-- Creating table 'ServiceRequesterTypeServiceRequester'
CREATE TABLE [dbo].[ServiceRequesterTypeServiceRequester] (
    [ServiceRequesterTypes_Id] int  NOT NULL,
    [ServiceRequesters_Id] int  NOT NULL
);
GO

-- Creating table 'ServiceReceiverTypeServiceReceiver'
CREATE TABLE [dbo].[ServiceReceiverTypeServiceReceiver] (
    [ServiceReceiverTypes_Id] int  NOT NULL,
    [ServiceReceivers_Id] int  NOT NULL
);
GO

-- Creating table 'ServiceProviderServiceRequest'
CREATE TABLE [dbo].[ServiceProviderServiceRequest] (
    [ServiceProviders_Id] int  NOT NULL,
    [ServiceRequests_Id] int  NOT NULL
);
GO

-- Creating table 'ServiceRequesterServiceRequest'
CREATE TABLE [dbo].[ServiceRequesterServiceRequest] (
    [ServiceRequesters_Id] int  NOT NULL,
    [ServiceRequests_Id] int  NOT NULL
);
GO

-- Creating table 'ServiceReceiverServiceRequest'
CREATE TABLE [dbo].[ServiceReceiverServiceRequest] (
    [ServiceReceivers_Id] int  NOT NULL,
    [ServiceRequests_Id] int  NOT NULL
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

-- Creating primary key on [Id] in table 'ServiceProviderTypes'
ALTER TABLE [dbo].[ServiceProviderTypes]
ADD CONSTRAINT [PK_ServiceProviderTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ServiceRequesterTypes'
ALTER TABLE [dbo].[ServiceRequesterTypes]
ADD CONSTRAINT [PK_ServiceRequesterTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ServiceReceiverTypes'
ALTER TABLE [dbo].[ServiceReceiverTypes]
ADD CONSTRAINT [PK_ServiceReceiverTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ServiceProviderAvailabilities'
ALTER TABLE [dbo].[ServiceProviderAvailabilities]
ADD CONSTRAINT [PK_ServiceProviderAvailabilities]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ServiceRequestStatus'
ALTER TABLE [dbo].[ServiceRequestStatus]
ADD CONSTRAINT [PK_ServiceRequestStatus]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Accounts_ServiceProvider'
ALTER TABLE [dbo].[Accounts_ServiceProvider]
ADD CONSTRAINT [PK_Accounts_ServiceProvider]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Accounts_ServiceRequester'
ALTER TABLE [dbo].[Accounts_ServiceRequester]
ADD CONSTRAINT [PK_Accounts_ServiceRequester]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Accounts_ServiceReceiver'
ALTER TABLE [dbo].[Accounts_ServiceReceiver]
ADD CONSTRAINT [PK_Accounts_ServiceReceiver]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Accounts_ServiceOrganizer'
ALTER TABLE [dbo].[Accounts_ServiceOrganizer]
ADD CONSTRAINT [PK_Accounts_ServiceOrganizer]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [ServiceProviderTypes_Id], [ServiceProviders_Id] in table 'ServiceProviderTypeServiceProvider'
ALTER TABLE [dbo].[ServiceProviderTypeServiceProvider]
ADD CONSTRAINT [PK_ServiceProviderTypeServiceProvider]
    PRIMARY KEY CLUSTERED ([ServiceProviderTypes_Id], [ServiceProviders_Id] ASC);
GO

-- Creating primary key on [ServiceRequesterTypes_Id], [ServiceRequesters_Id] in table 'ServiceRequesterTypeServiceRequester'
ALTER TABLE [dbo].[ServiceRequesterTypeServiceRequester]
ADD CONSTRAINT [PK_ServiceRequesterTypeServiceRequester]
    PRIMARY KEY CLUSTERED ([ServiceRequesterTypes_Id], [ServiceRequesters_Id] ASC);
GO

-- Creating primary key on [ServiceReceiverTypes_Id], [ServiceReceivers_Id] in table 'ServiceReceiverTypeServiceReceiver'
ALTER TABLE [dbo].[ServiceReceiverTypeServiceReceiver]
ADD CONSTRAINT [PK_ServiceReceiverTypeServiceReceiver]
    PRIMARY KEY CLUSTERED ([ServiceReceiverTypes_Id], [ServiceReceivers_Id] ASC);
GO

-- Creating primary key on [ServiceProviders_Id], [ServiceRequests_Id] in table 'ServiceProviderServiceRequest'
ALTER TABLE [dbo].[ServiceProviderServiceRequest]
ADD CONSTRAINT [PK_ServiceProviderServiceRequest]
    PRIMARY KEY CLUSTERED ([ServiceProviders_Id], [ServiceRequests_Id] ASC);
GO

-- Creating primary key on [ServiceRequesters_Id], [ServiceRequests_Id] in table 'ServiceRequesterServiceRequest'
ALTER TABLE [dbo].[ServiceRequesterServiceRequest]
ADD CONSTRAINT [PK_ServiceRequesterServiceRequest]
    PRIMARY KEY CLUSTERED ([ServiceRequesters_Id], [ServiceRequests_Id] ASC);
GO

-- Creating primary key on [ServiceReceivers_Id], [ServiceRequests_Id] in table 'ServiceReceiverServiceRequest'
ALTER TABLE [dbo].[ServiceReceiverServiceRequest]
ADD CONSTRAINT [PK_ServiceReceiverServiceRequest]
    PRIMARY KEY CLUSTERED ([ServiceReceivers_Id], [ServiceRequests_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ServiceProviderTypes_Id] in table 'ServiceProviderTypeServiceProvider'
ALTER TABLE [dbo].[ServiceProviderTypeServiceProvider]
ADD CONSTRAINT [FK_ServiceProviderTypeServiceProvider_ServiceProviderType]
    FOREIGN KEY ([ServiceProviderTypes_Id])
    REFERENCES [dbo].[ServiceProviderTypes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ServiceProviders_Id] in table 'ServiceProviderTypeServiceProvider'
ALTER TABLE [dbo].[ServiceProviderTypeServiceProvider]
ADD CONSTRAINT [FK_ServiceProviderTypeServiceProvider_ServiceProvider]
    FOREIGN KEY ([ServiceProviders_Id])
    REFERENCES [dbo].[Accounts_ServiceProvider]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ServiceProviderTypeServiceProvider_ServiceProvider'
CREATE INDEX [IX_FK_ServiceProviderTypeServiceProvider_ServiceProvider]
ON [dbo].[ServiceProviderTypeServiceProvider]
    ([ServiceProviders_Id]);
GO

-- Creating foreign key on [ServiceRequesterTypes_Id] in table 'ServiceRequesterTypeServiceRequester'
ALTER TABLE [dbo].[ServiceRequesterTypeServiceRequester]
ADD CONSTRAINT [FK_ServiceRequesterTypeServiceRequester_ServiceRequesterType]
    FOREIGN KEY ([ServiceRequesterTypes_Id])
    REFERENCES [dbo].[ServiceRequesterTypes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ServiceRequesters_Id] in table 'ServiceRequesterTypeServiceRequester'
ALTER TABLE [dbo].[ServiceRequesterTypeServiceRequester]
ADD CONSTRAINT [FK_ServiceRequesterTypeServiceRequester_ServiceRequester]
    FOREIGN KEY ([ServiceRequesters_Id])
    REFERENCES [dbo].[Accounts_ServiceRequester]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ServiceRequesterTypeServiceRequester_ServiceRequester'
CREATE INDEX [IX_FK_ServiceRequesterTypeServiceRequester_ServiceRequester]
ON [dbo].[ServiceRequesterTypeServiceRequester]
    ([ServiceRequesters_Id]);
GO

-- Creating foreign key on [ServiceReceiverTypes_Id] in table 'ServiceReceiverTypeServiceReceiver'
ALTER TABLE [dbo].[ServiceReceiverTypeServiceReceiver]
ADD CONSTRAINT [FK_ServiceReceiverTypeServiceReceiver_ServiceReceiverType]
    FOREIGN KEY ([ServiceReceiverTypes_Id])
    REFERENCES [dbo].[ServiceReceiverTypes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ServiceReceivers_Id] in table 'ServiceReceiverTypeServiceReceiver'
ALTER TABLE [dbo].[ServiceReceiverTypeServiceReceiver]
ADD CONSTRAINT [FK_ServiceReceiverTypeServiceReceiver_ServiceReceiver]
    FOREIGN KEY ([ServiceReceivers_Id])
    REFERENCES [dbo].[Accounts_ServiceReceiver]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ServiceReceiverTypeServiceReceiver_ServiceReceiver'
CREATE INDEX [IX_FK_ServiceReceiverTypeServiceReceiver_ServiceReceiver]
ON [dbo].[ServiceReceiverTypeServiceReceiver]
    ([ServiceReceivers_Id]);
GO

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

-- Creating foreign key on [ServiceRequestStatusId] in table 'ServiceRequests'
ALTER TABLE [dbo].[ServiceRequests]
ADD CONSTRAINT [FK_ServiceRequestStatusServiceRequest]
    FOREIGN KEY ([ServiceRequestStatusId])
    REFERENCES [dbo].[ServiceRequestStatus]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ServiceRequestStatusServiceRequest'
CREATE INDEX [IX_FK_ServiceRequestStatusServiceRequest]
ON [dbo].[ServiceRequests]
    ([ServiceRequestStatusId]);
GO

-- Creating foreign key on [ServiceProviders_Id] in table 'ServiceProviderServiceRequest'
ALTER TABLE [dbo].[ServiceProviderServiceRequest]
ADD CONSTRAINT [FK_ServiceProviderServiceRequest_ServiceProvider]
    FOREIGN KEY ([ServiceProviders_Id])
    REFERENCES [dbo].[Accounts_ServiceProvider]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ServiceRequests_Id] in table 'ServiceProviderServiceRequest'
ALTER TABLE [dbo].[ServiceProviderServiceRequest]
ADD CONSTRAINT [FK_ServiceProviderServiceRequest_ServiceRequest]
    FOREIGN KEY ([ServiceRequests_Id])
    REFERENCES [dbo].[ServiceRequests]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ServiceProviderServiceRequest_ServiceRequest'
CREATE INDEX [IX_FK_ServiceProviderServiceRequest_ServiceRequest]
ON [dbo].[ServiceProviderServiceRequest]
    ([ServiceRequests_Id]);
GO

-- Creating foreign key on [ServiceRequesters_Id] in table 'ServiceRequesterServiceRequest'
ALTER TABLE [dbo].[ServiceRequesterServiceRequest]
ADD CONSTRAINT [FK_ServiceRequesterServiceRequest_ServiceRequester]
    FOREIGN KEY ([ServiceRequesters_Id])
    REFERENCES [dbo].[Accounts_ServiceRequester]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ServiceRequests_Id] in table 'ServiceRequesterServiceRequest'
ALTER TABLE [dbo].[ServiceRequesterServiceRequest]
ADD CONSTRAINT [FK_ServiceRequesterServiceRequest_ServiceRequest]
    FOREIGN KEY ([ServiceRequests_Id])
    REFERENCES [dbo].[ServiceRequests]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ServiceRequesterServiceRequest_ServiceRequest'
CREATE INDEX [IX_FK_ServiceRequesterServiceRequest_ServiceRequest]
ON [dbo].[ServiceRequesterServiceRequest]
    ([ServiceRequests_Id]);
GO

-- Creating foreign key on [ServiceReceivers_Id] in table 'ServiceReceiverServiceRequest'
ALTER TABLE [dbo].[ServiceReceiverServiceRequest]
ADD CONSTRAINT [FK_ServiceReceiverServiceRequest_ServiceReceiver]
    FOREIGN KEY ([ServiceReceivers_Id])
    REFERENCES [dbo].[Accounts_ServiceReceiver]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ServiceRequests_Id] in table 'ServiceReceiverServiceRequest'
ALTER TABLE [dbo].[ServiceReceiverServiceRequest]
ADD CONSTRAINT [FK_ServiceReceiverServiceRequest_ServiceRequest]
    FOREIGN KEY ([ServiceRequests_Id])
    REFERENCES [dbo].[ServiceRequests]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ServiceReceiverServiceRequest_ServiceRequest'
CREATE INDEX [IX_FK_ServiceReceiverServiceRequest_ServiceRequest]
ON [dbo].[ServiceReceiverServiceRequest]
    ([ServiceRequests_Id]);
GO

-- Creating foreign key on [Id] in table 'Accounts_ServiceProvider'
ALTER TABLE [dbo].[Accounts_ServiceProvider]
ADD CONSTRAINT [FK_ServiceProvider_inherits_Account]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Accounts]
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

-- Creating foreign key on [Id] in table 'Accounts_ServiceReceiver'
ALTER TABLE [dbo].[Accounts_ServiceReceiver]
ADD CONSTRAINT [FK_ServiceReceiver_inherits_Account]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Accounts]
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

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
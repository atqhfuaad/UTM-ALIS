/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 12.1 		*/
/*  Created On : 31-Dec-2020 7:21:07 AM 				*/
/*  DBMS       : SQLServer7 						*/
/* ---------------------------------------------------- */

/* Drop Foreign Key Constraints */

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Non-alumni_Reservation]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Non-alumni] DROP CONSTRAINT [FK_Non-alumni_Reservation]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Payment_Reservation]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Payment] DROP CONSTRAINT [FK_Payment_Reservation]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Reservation_Facility]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Reservation] DROP CONSTRAINT [FK_Reservation_Facility]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_UtmAlumni_Activity]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [UtmAlumni] DROP CONSTRAINT [FK_UtmAlumni_Activity]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_UtmAlumni_Donation]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [UtmAlumni] DROP CONSTRAINT [FK_UtmAlumni_Donation]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_UtmAlumni_Reservation]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [UtmAlumni] DROP CONSTRAINT [FK_UtmAlumni_Reservation]
GO

/* Drop Tables */

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Activity]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Activity]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Donation]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Donation]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Facility]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Facility]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Non-alumni]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Non-alumni]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Payment]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Payment]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Reservation]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Reservation]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[UtmAlumni]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [UtmAlumni]
GO

/* Create Tables */

CREATE TABLE [Activity]
(
	[Activitydate] date NULL,
	[Activityname] varchar(50) NULL,
	[Maxperson] int NULL,
	[ActivityID] int NOT NULL
)
GO

CREATE TABLE [Donation]
(
	[Donateamount] real NULL,
	[DonationID] int NOT NULL
)
GO

CREATE TABLE [Facility]
(
	[Facilityname] varchar(50) NULL,
	[Facilityprice] real NULL,
	[Facilitytype] varchar(50) NULL,
	[FacilityID] int NOT NULL
)
GO

CREATE TABLE [Non-alumni]
(
	[Email] varchar(50) NULL,
	[Name] varchar(50) NULL,
	[Phone] int NULL,
	[Non-alumniID] int NOT NULL,
	[ReservationID] int NULL
)
GO

CREATE TABLE [Payment]
(
	[Paymentamount] real NULL,
	[Paymentdate] date NULL,
	[Paymenttype] varchar(50) NULL,
	[PaymentID] int NOT NULL,
	[ReservationID] int NULL
)
GO

CREATE TABLE [Reservation]
(
	[Package] varchar(50) NULL,
	[Reservationdate] date NULL,
	[ReservationID] int NOT NULL,
	[FacilityID] int NULL
)
GO

CREATE TABLE [UtmAlumni]
(
	[Alumnipoint] int NULL,
	[Email] varchar(50) NULL,
	[Name] varchar(50) NULL,
	[Password] varchar(50) NULL,
	[Phone] int NULL,
	[UtmAlumniID] int NOT NULL,
	[ActivityID] int NULL,
	[DonationID] int NULL,
	[ReservationID] int NULL
)
GO

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE [Activity] 
 ADD CONSTRAINT [PK_Activity]
	PRIMARY KEY CLUSTERED ([ActivityID] ASC)
GO

ALTER TABLE [Donation] 
 ADD CONSTRAINT [PK_Donation]
	PRIMARY KEY CLUSTERED ([DonationID] ASC)
GO

ALTER TABLE [Facility] 
 ADD CONSTRAINT [PK_Facility]
	PRIMARY KEY CLUSTERED ([FacilityID] ASC)
GO

ALTER TABLE [Non-alumni] 
 ADD CONSTRAINT [PK_Non-alumni]
	PRIMARY KEY CLUSTERED ([Non-alumniID] ASC)
GO

ALTER TABLE [Payment] 
 ADD CONSTRAINT [PK_Payment]
	PRIMARY KEY CLUSTERED ([PaymentID] ASC)
GO

ALTER TABLE [Reservation] 
 ADD CONSTRAINT [PK_Reservation]
	PRIMARY KEY CLUSTERED ([ReservationID] ASC)
GO

ALTER TABLE [UtmAlumni] 
 ADD CONSTRAINT [PK_UtmAlumni]
	PRIMARY KEY CLUSTERED ([UtmAlumniID] ASC)
GO

/* Create Foreign Key Constraints */

ALTER TABLE [Non-alumni] ADD CONSTRAINT [FK_Non-alumni_Reservation]
	FOREIGN KEY ([ReservationID]) REFERENCES [Reservation] ([ReservationID]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Payment] ADD CONSTRAINT [FK_Payment_Reservation]
	FOREIGN KEY ([ReservationID]) REFERENCES [Reservation] ([ReservationID]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Reservation] ADD CONSTRAINT [FK_Reservation_Facility]
	FOREIGN KEY ([FacilityID]) REFERENCES [Facility] ([FacilityID]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [UtmAlumni] ADD CONSTRAINT [FK_UtmAlumni_Activity]
	FOREIGN KEY ([ActivityID]) REFERENCES [Activity] ([ActivityID]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [UtmAlumni] ADD CONSTRAINT [FK_UtmAlumni_Donation]
	FOREIGN KEY ([DonationID]) REFERENCES [Donation] ([DonationID]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [UtmAlumni] ADD CONSTRAINT [FK_UtmAlumni_Reservation]
	FOREIGN KEY ([ReservationID]) REFERENCES [Reservation] ([ReservationID]) ON DELETE No Action ON UPDATE No Action
GO
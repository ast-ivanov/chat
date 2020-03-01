﻿USE [Chat]
GO

/****** Object: Table [dbo].[User] Script Date: 22.02.2020 22:41:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Messages]
(
	[Id] UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID() NOT NULL PRIMARY KEY,
	[Text] NVARCHAR(MAX) NOT NULL,
	[Time] DATETIME NOT NULL,
	[UserId] int NOT NULL,
	CONSTRAINT [FK_Messages_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users]([Id])
)
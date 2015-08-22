USE [DBTCC]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CONDUTOR_USUARIO]') AND parent_object_id = OBJECT_ID(N'[dbo].[CONDUTOR]'))
ALTER TABLE [dbo].[CONDUTOR] DROP CONSTRAINT [FK_CONDUTOR_USUARIO]
GO

USE [DBTCC]
GO

/****** Object:  Table [dbo].[CONDUTOR]    Script Date: 08/22/2015 14:11:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CONDUTOR]') AND type in (N'U'))
DROP TABLE [dbo].[CONDUTOR]
GO

USE [DBTCC]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RESPONSAVEL_USUARIO]') AND parent_object_id = OBJECT_ID(N'[dbo].[RESPONSAVEL]'))
ALTER TABLE [dbo].[RESPONSAVEL] DROP CONSTRAINT [FK_RESPONSAVEL_USUARIO]
GO

IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_RESPONSAVEL_SEXO]') AND parent_object_id = OBJECT_ID(N'[dbo].[RESPONSAVEL]'))
ALTER TABLE [dbo].[RESPONSAVEL] DROP CONSTRAINT [CK_RESPONSAVEL_SEXO]
GO

USE [DBTCC]
GO

/****** Object:  Table [dbo].[RESPONSAVEL]    Script Date: 08/22/2015 14:11:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RESPONSAVEL]') AND type in (N'U'))
DROP TABLE [dbo].[RESPONSAVEL]
GO

USE [DBTCC]
GO

/****** Object:  Table [dbo].[USUARIO]    Script Date: 08/22/2015 14:11:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USUARIO]') AND type in (N'U'))
DROP TABLE [dbo].[USUARIO]
GO

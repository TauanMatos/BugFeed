USE [master]
GO
/****** Object:  Database [BugFeed]    Script Date: 20/05/2018 20:34:44 ******/
CREATE DATABASE [BugFeed]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BugFeed.mdf', FILENAME = N'C:\Users\Tauan\Desktop\BugFeed\BugFeed\App_Data\BugFeed.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BugFeed_log.ldf', FILENAME = N'C:\Users\Tauan\Desktop\BugFeed\BugFeed\App_Data\BugFeed_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BugFeed] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BugFeed].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BugFeed] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BugFeed] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BugFeed] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BugFeed] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BugFeed] SET ARITHABORT OFF 
GO
ALTER DATABASE [BugFeed] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BugFeed] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BugFeed] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BugFeed] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BugFeed] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BugFeed] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BugFeed] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BugFeed] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BugFeed] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BugFeed] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BugFeed] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BugFeed] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BugFeed] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BugFeed] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BugFeed] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BugFeed] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BugFeed] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BugFeed] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BugFeed] SET  MULTI_USER 
GO
ALTER DATABASE [BugFeed] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BugFeed] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BugFeed] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BugFeed] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BugFeed] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BugFeed] SET QUERY_STORE = OFF
GO
USE [BugFeed]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [BugFeed]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 20/05/2018 20:34:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comentarios]    Script Date: 20/05/2018 20:34:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comentarios](
	[ComentarioId] [int] IDENTITY(1,1) NOT NULL,
	[Conteudo] [nvarchar](max) NOT NULL,
	[DataHora] [datetime] NOT NULL,
	[Apagado] [bit] NOT NULL,
	[Data] [datetime] NOT NULL,
	[UltimaRevisao] [datetime] NOT NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
	[Programa_ProgramaRecompensasId] [int] NULL,
	[Relatorio_RelatorioBugId] [int] NULL,
	[Usuario_UsuarioId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Comentarios] PRIMARY KEY CLUSTERED 
(
	[ComentarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DadosBancarios]    Script Date: 20/05/2018 20:34:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DadosBancarios](
	[DadosBancariosId] [int] IDENTITY(1,1) NOT NULL,
	[CPF] [nvarchar](max) NOT NULL,
	[Agencia] [int] NOT NULL,
	[DigitoAgencia] [int] NOT NULL,
	[Conta] [int] NOT NULL,
	[DigitoConta] [int] NOT NULL,
	[Confirmado] [bit] NOT NULL,
	[Pesquisador_UsuarioId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.DadosBancarios] PRIMARY KEY CLUSTERED 
(
	[DadosBancariosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emails]    Script Date: 20/05/2018 20:34:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emails](
	[EmailId] [int] NOT NULL,
	[Endereco] [nvarchar](256) NOT NULL,
	[Confirmado] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Emails] PRIMARY KEY CLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresas]    Script Date: 20/05/2018 20:34:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresas](
	[EmpresaId] [int] IDENTITY(1,1) NOT NULL,
	[Site] [nvarchar](100) NOT NULL,
	[CNPJ] [nvarchar](max) NULL,
	[Endereco_EnderecoId] [int] NULL,
	[Nome] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Empresas] PRIMARY KEY CLUSTERED 
(
	[EmpresaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enderecoes]    Script Date: 20/05/2018 20:34:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enderecoes](
	[EnderecoId] [int] IDENTITY(1,1) NOT NULL,
	[Destinatario] [nvarchar](max) NOT NULL,
	[Organizacao] [nvarchar](max) NULL,
	[Linha1] [nvarchar](max) NOT NULL,
	[Linha2] [nvarchar](max) NULL,
	[Linha3] [nvarchar](max) NULL,
	[Cidade] [nvarchar](50) NOT NULL,
	[Bairro] [nvarchar](30) NOT NULL,
	[CEP] [int] NOT NULL,
	[Estado] [nvarchar](50) NOT NULL,
	[Pais] [nvarchar](2) NOT NULL,
 CONSTRAINT [PK_dbo.Enderecoes] PRIMARY KEY CLUSTERED 
(
	[EnderecoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formacaos]    Script Date: 20/05/2018 20:34:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formacaos](
	[FormacaoId] [int] IDENTITY(1,1) NOT NULL,
	[TipoFormacao] [int] NOT NULL,
	[Descricao] [nvarchar](max) NOT NULL,
	[Pesquisador_UsuarioId] [int] NULL,
 CONSTRAINT [PK_dbo.Formacaos] PRIMARY KEY CLUSTERED 
(
	[FormacaoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoFuncionarios]    Script Date: 20/05/2018 20:34:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoFuncionarios](
	[GrupoFuncionariosId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.GrupoFuncionarios] PRIMARY KEY CLUSTERED 
(
	[GrupoFuncionariosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permissaos]    Script Date: 20/05/2018 20:34:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissaos](
	[PermissaoId] [int] IDENTITY(1,1) NOT NULL,
	[Perfil] [int] NOT NULL,
	[GrupoFuncionarios_GrupoFuncionariosId] [int] NULL,
 CONSTRAINT [PK_dbo.Permissaos] PRIMARY KEY CLUSTERED 
(
	[PermissaoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramaRecompensas]    Script Date: 20/05/2018 20:34:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramaRecompensas](
	[ProgramaRecompensasId] [int] IDENTITY(1,1) NOT NULL,
	[Ativo] [bit] NOT NULL,
	[DataCriacao] [datetime] NOT NULL,
	[UltimaRevisao] [datetime] NOT NULL,
	[Empresa_EmpresaId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProgramaRecompensas] PRIMARY KEY CLUSTERED 
(
	[ProgramaRecompensasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recompensas]    Script Date: 20/05/2018 20:34:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recompensas](
	[RecompensaId] [int] IDENTITY(1,1) NOT NULL,
	[Valor] [decimal](18, 2) NOT NULL,
	[Processada] [bit] NOT NULL,
	[Avaliador_UsuarioId] [int] NULL,
	[Pagador_UsuarioId] [int] NULL,
	[Pesquisador_UsuarioId] [int] NULL,
	[Programa_ProgramaRecompensasId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Recompensas] PRIMARY KEY CLUSTERED 
(
	[RecompensaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RelatorioBugs]    Script Date: 20/05/2018 20:34:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RelatorioBugs](
	[RelatorioBugId] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](150) NOT NULL,
	[Descricao] [nvarchar](max) NOT NULL,
	[Impacto] [nvarchar](max) NOT NULL,
	[Estado] [int] NOT NULL,
	[Pesquisador_UsuarioId] [int] NOT NULL,
	[Programa_ProgramaRecompensasId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.RelatorioBugs] PRIMARY KEY CLUSTERED 
(
	[RelatorioBugId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Retiradas]    Script Date: 20/05/2018 20:34:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Retiradas](
	[RetiradaId] [int] IDENTITY(1,1) NOT NULL,
	[Valor] [decimal](18, 2) NOT NULL,
	[Data] [datetime] NOT NULL,
	[Estado] [int] NOT NULL,
	[DadosBancarios_DadosBancariosId] [int] NOT NULL,
	[Pesquisador_UsuarioId] [int] NULL,
 CONSTRAINT [PK_dbo.Retiradas] PRIMARY KEY CLUSTERED 
(
	[RetiradaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 20/05/2018 20:34:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[UsuarioId] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](max) NOT NULL,
	[Sobrenome] [nvarchar](max) NOT NULL,
	[Username] [nvarchar](30) NOT NULL,
	[Senha] [nvarchar](256) NOT NULL,
	[Ativo] [bit] NOT NULL,
	[DataNascimento] [datetime] NOT NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
	[Grupo_GrupoFuncionariosId] [int] NULL,
	[Endereco_EnderecoId] [int] NULL,
	[Empresa_EmpresaId] [int] NULL,
 CONSTRAINT [PK_dbo.Usuarios] PRIMARY KEY CLUSTERED 
(
	[UsuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_Programa_ProgramaRecompensasId]    Script Date: 20/05/2018 20:34:45 ******/
CREATE NONCLUSTERED INDEX [IX_Programa_ProgramaRecompensasId] ON [dbo].[Comentarios]
(
	[Programa_ProgramaRecompensasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Relatorio_RelatorioBugId]    Script Date: 20/05/2018 20:34:45 ******/
CREATE NONCLUSTERED INDEX [IX_Relatorio_RelatorioBugId] ON [dbo].[Comentarios]
(
	[Relatorio_RelatorioBugId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Usuario_UsuarioId]    Script Date: 20/05/2018 20:34:45 ******/
CREATE NONCLUSTERED INDEX [IX_Usuario_UsuarioId] ON [dbo].[Comentarios]
(
	[Usuario_UsuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pesquisador_UsuarioId]    Script Date: 20/05/2018 20:34:45 ******/
CREATE NONCLUSTERED INDEX [IX_Pesquisador_UsuarioId] ON [dbo].[DadosBancarios]
(
	[Pesquisador_UsuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmailId]    Script Date: 20/05/2018 20:34:45 ******/
CREATE NONCLUSTERED INDEX [IX_EmailId] ON [dbo].[Emails]
(
	[EmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Endereco_EnderecoId]    Script Date: 20/05/2018 20:34:45 ******/
CREATE NONCLUSTERED INDEX [IX_Endereco_EnderecoId] ON [dbo].[Empresas]
(
	[Endereco_EnderecoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pesquisador_UsuarioId]    Script Date: 20/05/2018 20:34:45 ******/
CREATE NONCLUSTERED INDEX [IX_Pesquisador_UsuarioId] ON [dbo].[Formacaos]
(
	[Pesquisador_UsuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_GrupoFuncionarios_GrupoFuncionariosId]    Script Date: 20/05/2018 20:34:45 ******/
CREATE NONCLUSTERED INDEX [IX_GrupoFuncionarios_GrupoFuncionariosId] ON [dbo].[Permissaos]
(
	[GrupoFuncionarios_GrupoFuncionariosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Empresa_EmpresaId]    Script Date: 20/05/2018 20:34:45 ******/
CREATE NONCLUSTERED INDEX [IX_Empresa_EmpresaId] ON [dbo].[ProgramaRecompensas]
(
	[Empresa_EmpresaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Avaliador_UsuarioId]    Script Date: 20/05/2018 20:34:45 ******/
CREATE NONCLUSTERED INDEX [IX_Avaliador_UsuarioId] ON [dbo].[Recompensas]
(
	[Avaliador_UsuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pagador_UsuarioId]    Script Date: 20/05/2018 20:34:45 ******/
CREATE NONCLUSTERED INDEX [IX_Pagador_UsuarioId] ON [dbo].[Recompensas]
(
	[Pagador_UsuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pesquisador_UsuarioId]    Script Date: 20/05/2018 20:34:45 ******/
CREATE NONCLUSTERED INDEX [IX_Pesquisador_UsuarioId] ON [dbo].[Recompensas]
(
	[Pesquisador_UsuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Programa_ProgramaRecompensasId]    Script Date: 20/05/2018 20:34:45 ******/
CREATE NONCLUSTERED INDEX [IX_Programa_ProgramaRecompensasId] ON [dbo].[Recompensas]
(
	[Programa_ProgramaRecompensasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pesquisador_UsuarioId]    Script Date: 20/05/2018 20:34:45 ******/
CREATE NONCLUSTERED INDEX [IX_Pesquisador_UsuarioId] ON [dbo].[RelatorioBugs]
(
	[Pesquisador_UsuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Programa_ProgramaRecompensasId]    Script Date: 20/05/2018 20:34:45 ******/
CREATE NONCLUSTERED INDEX [IX_Programa_ProgramaRecompensasId] ON [dbo].[RelatorioBugs]
(
	[Programa_ProgramaRecompensasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DadosBancarios_DadosBancariosId]    Script Date: 20/05/2018 20:34:45 ******/
CREATE NONCLUSTERED INDEX [IX_DadosBancarios_DadosBancariosId] ON [dbo].[Retiradas]
(
	[DadosBancarios_DadosBancariosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pesquisador_UsuarioId]    Script Date: 20/05/2018 20:34:45 ******/
CREATE NONCLUSTERED INDEX [IX_Pesquisador_UsuarioId] ON [dbo].[Retiradas]
(
	[Pesquisador_UsuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Empresa_EmpresaId]    Script Date: 20/05/2018 20:34:45 ******/
CREATE NONCLUSTERED INDEX [IX_Empresa_EmpresaId] ON [dbo].[Usuarios]
(
	[Empresa_EmpresaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Endereco_EnderecoId]    Script Date: 20/05/2018 20:34:45 ******/
CREATE NONCLUSTERED INDEX [IX_Endereco_EnderecoId] ON [dbo].[Usuarios]
(
	[Endereco_EnderecoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Grupo_GrupoFuncionariosId]    Script Date: 20/05/2018 20:34:45 ******/
CREATE NONCLUSTERED INDEX [IX_Grupo_GrupoFuncionariosId] ON [dbo].[Usuarios]
(
	[Grupo_GrupoFuncionariosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Empresas] ADD  DEFAULT ('') FOR [Nome]
GO
ALTER TABLE [dbo].[Comentarios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Comentarios_dbo.ProgramaRecompensas_Programa_ProgramaRecompensasId] FOREIGN KEY([Programa_ProgramaRecompensasId])
REFERENCES [dbo].[ProgramaRecompensas] ([ProgramaRecompensasId])
GO
ALTER TABLE [dbo].[Comentarios] CHECK CONSTRAINT [FK_dbo.Comentarios_dbo.ProgramaRecompensas_Programa_ProgramaRecompensasId]
GO
ALTER TABLE [dbo].[Comentarios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Comentarios_dbo.RelatorioBugs_Relatorio_RelatorioBugId] FOREIGN KEY([Relatorio_RelatorioBugId])
REFERENCES [dbo].[RelatorioBugs] ([RelatorioBugId])
GO
ALTER TABLE [dbo].[Comentarios] CHECK CONSTRAINT [FK_dbo.Comentarios_dbo.RelatorioBugs_Relatorio_RelatorioBugId]
GO
ALTER TABLE [dbo].[Comentarios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Comentarios_dbo.Usuarios_Usuario_UsuarioId] FOREIGN KEY([Usuario_UsuarioId])
REFERENCES [dbo].[Usuarios] ([UsuarioId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comentarios] CHECK CONSTRAINT [FK_dbo.Comentarios_dbo.Usuarios_Usuario_UsuarioId]
GO
ALTER TABLE [dbo].[DadosBancarios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DadosBancarios_dbo.Usuarios_Pesquisador_UsuarioId] FOREIGN KEY([Pesquisador_UsuarioId])
REFERENCES [dbo].[Usuarios] ([UsuarioId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DadosBancarios] CHECK CONSTRAINT [FK_dbo.DadosBancarios_dbo.Usuarios_Pesquisador_UsuarioId]
GO
ALTER TABLE [dbo].[Emails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Emails_dbo.Usuarios_EmailId] FOREIGN KEY([EmailId])
REFERENCES [dbo].[Usuarios] ([UsuarioId])
GO
ALTER TABLE [dbo].[Emails] CHECK CONSTRAINT [FK_dbo.Emails_dbo.Usuarios_EmailId]
GO
ALTER TABLE [dbo].[Empresas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Empresas_dbo.Enderecoes_Endereco_EnderecoId] FOREIGN KEY([Endereco_EnderecoId])
REFERENCES [dbo].[Enderecoes] ([EnderecoId])
GO
ALTER TABLE [dbo].[Empresas] CHECK CONSTRAINT [FK_dbo.Empresas_dbo.Enderecoes_Endereco_EnderecoId]
GO
ALTER TABLE [dbo].[Formacaos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Formacaos_dbo.Usuarios_Pesquisador_UsuarioId] FOREIGN KEY([Pesquisador_UsuarioId])
REFERENCES [dbo].[Usuarios] ([UsuarioId])
GO
ALTER TABLE [dbo].[Formacaos] CHECK CONSTRAINT [FK_dbo.Formacaos_dbo.Usuarios_Pesquisador_UsuarioId]
GO
ALTER TABLE [dbo].[Permissaos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Permissaos_dbo.GrupoFuncionarios_GrupoFuncionarios_GrupoFuncionariosId] FOREIGN KEY([GrupoFuncionarios_GrupoFuncionariosId])
REFERENCES [dbo].[GrupoFuncionarios] ([GrupoFuncionariosId])
GO
ALTER TABLE [dbo].[Permissaos] CHECK CONSTRAINT [FK_dbo.Permissaos_dbo.GrupoFuncionarios_GrupoFuncionarios_GrupoFuncionariosId]
GO
ALTER TABLE [dbo].[ProgramaRecompensas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProgramaRecompensas_dbo.Empresas_Empresa_EmpresaId] FOREIGN KEY([Empresa_EmpresaId])
REFERENCES [dbo].[Empresas] ([EmpresaId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProgramaRecompensas] CHECK CONSTRAINT [FK_dbo.ProgramaRecompensas_dbo.Empresas_Empresa_EmpresaId]
GO
ALTER TABLE [dbo].[Recompensas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Recompensas_dbo.ProgramaRecompensas_Programa_ProgramaRecompensasId] FOREIGN KEY([Programa_ProgramaRecompensasId])
REFERENCES [dbo].[ProgramaRecompensas] ([ProgramaRecompensasId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Recompensas] CHECK CONSTRAINT [FK_dbo.Recompensas_dbo.ProgramaRecompensas_Programa_ProgramaRecompensasId]
GO
ALTER TABLE [dbo].[Recompensas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Recompensas_dbo.Usuarios_Avaliador_UsuarioId] FOREIGN KEY([Avaliador_UsuarioId])
REFERENCES [dbo].[Usuarios] ([UsuarioId])
GO
ALTER TABLE [dbo].[Recompensas] CHECK CONSTRAINT [FK_dbo.Recompensas_dbo.Usuarios_Avaliador_UsuarioId]
GO
ALTER TABLE [dbo].[Recompensas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Recompensas_dbo.Usuarios_Pagador_UsuarioId] FOREIGN KEY([Pagador_UsuarioId])
REFERENCES [dbo].[Usuarios] ([UsuarioId])
GO
ALTER TABLE [dbo].[Recompensas] CHECK CONSTRAINT [FK_dbo.Recompensas_dbo.Usuarios_Pagador_UsuarioId]
GO
ALTER TABLE [dbo].[Recompensas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Recompensas_dbo.Usuarios_Pesquisador_UsuarioId] FOREIGN KEY([Pesquisador_UsuarioId])
REFERENCES [dbo].[Usuarios] ([UsuarioId])
GO
ALTER TABLE [dbo].[Recompensas] CHECK CONSTRAINT [FK_dbo.Recompensas_dbo.Usuarios_Pesquisador_UsuarioId]
GO
ALTER TABLE [dbo].[RelatorioBugs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RelatorioBugs_dbo.ProgramaRecompensas_Programa_ProgramaRecompensasId] FOREIGN KEY([Programa_ProgramaRecompensasId])
REFERENCES [dbo].[ProgramaRecompensas] ([ProgramaRecompensasId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RelatorioBugs] CHECK CONSTRAINT [FK_dbo.RelatorioBugs_dbo.ProgramaRecompensas_Programa_ProgramaRecompensasId]
GO
ALTER TABLE [dbo].[RelatorioBugs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RelatorioBugs_dbo.Usuarios_Pesquisador_UsuarioId] FOREIGN KEY([Pesquisador_UsuarioId])
REFERENCES [dbo].[Usuarios] ([UsuarioId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RelatorioBugs] CHECK CONSTRAINT [FK_dbo.RelatorioBugs_dbo.Usuarios_Pesquisador_UsuarioId]
GO
ALTER TABLE [dbo].[Retiradas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Retiradas_dbo.DadosBancarios_DadosBancarios_DadosBancariosId] FOREIGN KEY([DadosBancarios_DadosBancariosId])
REFERENCES [dbo].[DadosBancarios] ([DadosBancariosId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Retiradas] CHECK CONSTRAINT [FK_dbo.Retiradas_dbo.DadosBancarios_DadosBancarios_DadosBancariosId]
GO
ALTER TABLE [dbo].[Retiradas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Retiradas_dbo.Usuarios_Pesquisador_UsuarioId] FOREIGN KEY([Pesquisador_UsuarioId])
REFERENCES [dbo].[Usuarios] ([UsuarioId])
GO
ALTER TABLE [dbo].[Retiradas] CHECK CONSTRAINT [FK_dbo.Retiradas_dbo.Usuarios_Pesquisador_UsuarioId]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Usuarios_dbo.Empresas_Empresa_EmpresaId] FOREIGN KEY([Empresa_EmpresaId])
REFERENCES [dbo].[Empresas] ([EmpresaId])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_dbo.Usuarios_dbo.Empresas_Empresa_EmpresaId]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Usuarios_dbo.Enderecoes_Endereco_EnderecoId] FOREIGN KEY([Endereco_EnderecoId])
REFERENCES [dbo].[Enderecoes] ([EnderecoId])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_dbo.Usuarios_dbo.Enderecoes_Endereco_EnderecoId]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Usuarios_dbo.GrupoFuncionarios_Grupo_GrupoFuncionariosId] FOREIGN KEY([Grupo_GrupoFuncionariosId])
REFERENCES [dbo].[GrupoFuncionarios] ([GrupoFuncionariosId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_dbo.Usuarios_dbo.GrupoFuncionarios_Grupo_GrupoFuncionariosId]
GO
USE [master]
GO
ALTER DATABASE [BugFeed] SET  READ_WRITE 
GO

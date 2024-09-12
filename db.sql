USE master
GO
IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'TrilhaApiDesafio'
)
CREATE DATABASE TrilhaApiDesafio
GO

USE TrilhaApiDesafio

-- Drop the table if it already exists
IF OBJECT_ID('dbo.Tarefas', 'U') IS NOT NULL
DROP TABLE dbo.Tarefas
GO

CREATE TABLE dbo.Tarefas
(
    id INT NOT NULL IDENTITY(1,1) PRIMARY KEY, -- primary key column
    titulo [NVARCHAR](200) NULL,
    descricao [NVARCHAR](200) NULL,
    [data] datetime NOT NULL,
    [status] INT NOT NULL
);
GO

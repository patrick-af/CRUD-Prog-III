-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/07/2024 às 22:00
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `rh`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id_fun` int(10) NOT NULL,
  `nome_fun` varchar(50) NOT NULL,
  `cpf_fun` varchar(15) NOT NULL,
  `salario_fun` decimal(10,0) NOT NULL,
  `funcao_fun` varchar(15) NOT NULL,
  `dpto_fun` varchar(20) NOT NULL,
  `cep_fun` int(8) NOT NULL,
  `logradouro_fun` varchar(100) NOT NULL,
  `numero_fun` int(5) NOT NULL,
  `bairro_fun` varchar(50) NOT NULL,
  `cidade_fun` varchar(50) NOT NULL,
  `uf_fun` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tabela de Funcinários';

--
-- Despejando dados para a tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id_fun`, `nome_fun`, `cpf_fun`, `salario_fun`, `funcao_fun`, `dpto_fun`, `cep_fun`, `logradouro_fun`, `numero_fun`, `bairro_fun`, `cidade_fun`, `uf_fun`) VALUES
(1, 'Patrick', '09954812610', 2500, 'Vendedor', 'Higiene Pessoal', 37148000, 'Rua barão do Carmo', 50, 'Centro', 'Conceição da Aparecida', 'MG');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_us` int(10) NOT NULL,
  `nome_us` varchar(50) NOT NULL,
  `email_us` varchar(100) NOT NULL,
  `senha_us` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tabela de Usuários';

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id_fun`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_us`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id_fun` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_us` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

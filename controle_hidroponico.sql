-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Fev-2020 às 14:47
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `controle_hidroponico`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `dados_horta`
--

CREATE TABLE `dados_horta` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `tempo` varchar(20) NOT NULL,
  `pulso` varchar(20) NOT NULL,
  `litros` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dados_horta`
--

INSERT INTO `dados_horta` (`id`, `date`, `tempo`, `pulso`, `litros`) VALUES
(16, '2019-11-23 03:16:46', '01:00:00', '193', '0.428888888888889'),
(17, '2019-11-23 03:16:59', '02:00:00', '367', '0.815555555555556'),
(18, '2019-11-23 03:17:12', '03:00:00', '555', '1.23333333333333'),
(19, '2019-11-23 03:17:24', '03:00:00', '749', '1.66444444444444');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `dados_horta`
--
ALTER TABLE `dados_horta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `dados_horta`
--
ALTER TABLE `dados_horta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

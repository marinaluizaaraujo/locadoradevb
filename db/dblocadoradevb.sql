-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13/06/2024 às 15:37
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
-- Banco de dados: `dblocadoradevb`
--
CREATE DATABASE IF NOT EXISTS `dblocadoradevb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dblocadoradevb`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbcategorias`
--

CREATE TABLE `tbcategorias` (
  `idCategoria` int(11) NOT NULL,
  `nomeCategoria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbcategorias`
--

INSERT INTO `tbcategorias` (`idCategoria`, `nomeCategoria`) VALUES
(1, 'Ação'),
(2, 'Aventura'),
(3, 'Terror'),
(4, 'Comédia'),
(5, 'Ficção Ciêntifica'),
(6, 'Suspense'),
(7, 'Romance'),
(8, 'Animação'),
(9, 'Documentário'),
(10, 'Drama'),
(11, 'Mistério'),
(12, 'Musical'),
(13, 'Fantasia');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbclientes`
--

CREATE TABLE `tbclientes` (
  `idCliente` int(11) NOT NULL,
  `nomeCliente` varchar(45) NOT NULL,
  `emailCliente` varchar(45) NOT NULL,
  `telefoneCliente` varchar(45) NOT NULL,
  `cpfCliente` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbclientes`
--

INSERT INTO `tbclientes` (`idCliente`, `nomeCliente`, `emailCliente`, `telefoneCliente`, `cpfCliente`) VALUES
(1, 'Leticia Agatha', 'foxbele@gmail.com', '19993630447', '54357676878'),
(2, 'Luan Yuzo', 'luanyuzo@gmail.com', '19999991106', '53066193802'),
(3, 'Pedro Henrique', 'ph.ruffo.s@gmail.com', '19984304787', '59126007851'),
(4, 'Marina Paiva', 'mluizadearaujopaiva@gmail.com', '19987040338', '47222252819'),
(5, 'Taina Batista', 'tainadossantosbatista3@gmail.com', '41992219076', '49127133842'),
(6, 'Yara Cristina', 'yarinharodrigues08@gmail.com', '19974271181', '51728693870'),
(7, 'Iris da Silva', 'silvairis150406@gmail.com', '19984433513', '50798098848');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbvideos`
--

CREATE TABLE `tbvideos` (
  `idVideo` int(11) NOT NULL,
  `tituloVideo` varchar(200) NOT NULL,
  `duracaoVideo` varchar(45) NOT NULL,
  `valorLocacaoVideo` decimal(10,2) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `statusVideo` int(11) NOT NULL DEFAULT 1 COMMENT '1 - Disponivel\n2 - Locado\n3 - Indisponivel'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbvideos`
--

INSERT INTO `tbvideos` (`idVideo`, `tituloVideo`, `duracaoVideo`, `valorLocacaoVideo`, `idCategoria`, `statusVideo`) VALUES
(1, 'Caça Fantasmas', '1:58 horas', 10.00, 5, 1),
(2, 'Crepusculo', '2:10 horas', 15.00, 7, 1),
(3, 'Rambo - Programado para Matar', '1:33 horas', 18.00, 1, 1),
(4, 'Coraline e o Mundo Secreto', '1:40 horas', 15.00, 8, 1),
(5, 'ParaNorman', '1:33 horas', 20.00, 8, 1),
(6, 'Zathura: Uma Aventura Espacial', '1:41 horas', 8.00, 1, 1),
(7, 'Meu malvado Favorito', '1:35 horas', 10.00, 8, 1),
(8, 'Upgrade: As Cores do Amor', '1:44 horas', 25.00, 7, 1),
(9, 'Harry Potter e a Pedra Filosofal', '2:38 horas', 20.00, 13, 1),
(10, 'Harry Potter e a Câmara Secreta', '2:41 horas', 18.00, 13, 1),
(11, 'Harry Potter e o Prisioneiro de AzkabaN', '2:21 horas', 35.00, 13, 1),
(12, 'Harry Potter e o Cálice de Fogo', '2:07 horas', 26.00, 13, 1),
(13, 'Harry Potter e a Ordem da Fênix', '2:18 horas', 15.00, 13, 1),
(14, 'Harry Potter e o Enigma do Príncipe', '2:33 horas', 20.00, 13, 1),
(15, 'Harry Potter e as Relíquias da Morte: Parte 1', '2:26 horas', 30.00, 13, 1),
(16, 'Harry Potter e as Relíquias da Morte: Parte 2', '2:10 horas', 35.00, 13, 1),
(17, 'Titanic', '3:14 horas', 29.90, 7, 1),
(18, 'Vermelho, Branco e Sangue Azul', '1:58 horas', 15.00, 7, 1),
(19, 'Festa no ceu', '1:35 horas', 20.00, 7, 1),
(20, 'O Senhor dos Anéis: A Sociedade do Anel', '2:58 horas', 0.00, 13, 1),
(21, 'O Senhor dos Anéis: As Duas Torres', '2:59 horas', 35.00, 13, 1),
(22, 'O Senhor dos Anéis: O Retorno do Rei', '3:21 horas', 40.00, 13, 1),
(23, 'Avatar', '2:48 horas', 38.00, 1, 1),
(24, 'Avatar: O Caminho da Água', '3:12 horas', 48.90, 1, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tbcategorias`
--
ALTER TABLE `tbcategorias`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Índices de tabela `tbclientes`
--
ALTER TABLE `tbclientes`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices de tabela `tbvideos`
--
ALTER TABLE `tbvideos`
  ADD PRIMARY KEY (`idVideo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbcategorias`
--
ALTER TABLE `tbcategorias`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `tbclientes`
--
ALTER TABLE `tbclientes`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tbvideos`
--
ALTER TABLE `tbvideos`
  MODIFY `idVideo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

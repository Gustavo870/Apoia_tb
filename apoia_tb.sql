-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Ago-2026 às 22:35
-- Versão do servidor: 8.0.35
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `apoia_tb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anuncios`
--

CREATE TABLE `anuncios` (
  `IdAnuncio` int NOT NULL,
  `Usuarios_idUsuario` int NOT NULL,
  `fotoAnuncio` varchar(300) NOT NULL,
  `tituloAnuncio` varchar(150) NOT NULL,
  `descricaoAnuncio` varchar(300) NOT NULL,
  `categoriaAnuncio` varchar(100) NOT NULL,
  `valorAnuncio` decimal(20,2) NOT NULL,
  `dataAnuncio` date NOT NULL,
  `horaAnuncio` time NOT NULL,
  `statusAnuncio` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `anuncios`
--

INSERT INTO `anuncios` (`IdAnuncio`, `Usuarios_idUsuario`, `fotoAnuncio`, `tituloAnuncio`, `descricaoAnuncio`, `categoriaAnuncio`, `valorAnuncio`, `dataAnuncio`, `horaAnuncio`, `statusAnuncio`) VALUES
(1, 29, 'assets/img/coelho.jpg', 'Coelho fofinho', 'É um dos colehos mais fodas do planeta', 'Outra', '1500.00', '2026-08-19', '19:08:50', 'Disponível'),
(2, 29, 'assets/img/gataodagua-pixilart.png', 'Gato foda', 'kjsadkhsakhdsakjh', 'Alimentos', '1982372183.00', '2026-08-19', '19:16:44', 'Disponível'),
(3, 29, 'assets/img/corimthians.png', 'sadsadsad', 'sadsasasa', 'Alimentos', '21321321321.00', '2026-08-19', '19:44:54', 'Disponível');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL,
  `nome_usuario` varchar(100) NOT NULL,
  `nome_empresa` varchar(150) DEFAULT NULL,
  `email_usuario` varchar(150) NOT NULL,
  `senha_usuario` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cpf_cnpj_usuario` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status_usuario` varchar(15) NOT NULL,
  `data_cadastro` date NOT NULL,
  `tipo_usuario` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `telefone_usuario` varchar(11) NOT NULL,
  `endereco_usuario` varchar(100) NOT NULL,
  `cidade_usuario` varchar(50) NOT NULL,
  `instagram_usuario` varchar(50) NOT NULL,
  `site_usuario` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome_usuario`, `nome_empresa`, `email_usuario`, `senha_usuario`, `cpf_cnpj_usuario`, `status_usuario`, `data_cadastro`, `tipo_usuario`, `telefone_usuario`, `endereco_usuario`, `cidade_usuario`, `instagram_usuario`, `site_usuario`) VALUES
(28, 'gustavo', NULL, 'Gustavo@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '110.046.899-42', '', '2026-08-11', '', '', '', '', '', NULL),
(29, 'Sarah', NULL, 'Sarah@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '11.111.111/1111-11', '', '2026-08-11', '', '', '', '', '', NULL),
(30, 'Helena', NULL, 'Gustavodopo@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '21.321.321/3213-21', 'Ativo', '2026-08-19', 'Microempreendedor', '42998141929', 'rua jardim bandeirantes numero 58', 'Telêmaco Borba', 'guxsta_hb', NULL),
(31, 'gustavo', NULL, 'gustavo22@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '110.046.899-42', 'Ativo', '2026-08-19', 'Cliente', '', '', 'Telêmaco Borba', '', NULL),
(32, 'sadsadsadsadsa', NULL, '1234@1234', '81dc9bdb52d04dc20036dbd8313ed055', '123.212.223-22', 'Ativo', '2026-08-19', 'Cliente', '', '', 'Telêmaco Borba', '', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `anuncios`
--
ALTER TABLE `anuncios`
  ADD PRIMARY KEY (`IdAnuncio`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `anuncios`
--
ALTER TABLE `anuncios`
  MODIFY `IdAnuncio` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

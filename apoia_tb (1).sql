-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Ago-2026 às 21:05
-- Versão do servidor: 8.0.29
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
  `statusAnuncio` varchar(30) NOT NULL,
  `localizacaoAnuncio` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ifoodAnuncio` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `whatsappAnuncio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `anuncios`
--

INSERT INTO `anuncios` (`IdAnuncio`, `Usuarios_idUsuario`, `fotoAnuncio`, `tituloAnuncio`, `descricaoAnuncio`, `categoriaAnuncio`, `valorAnuncio`, `dataAnuncio`, `horaAnuncio`, `statusAnuncio`, `localizacaoAnuncio`, `ifoodAnuncio`, `whatsappAnuncio`) VALUES
(2, 29, 'assets/img/gataodagua-pixilart.png', 'Gato foda', 'kjsadkhsakhdsakjh', 'Alimentos', '1982372183.00', '2026-08-19', '19:16:44', 'Disponível', '', '', ''),
(14, 29, 'assets/img/bah.jpg', 'brasil', '213213213qdsadsadsadsad', 'Moda', '213213213213.00', '2026-08-26', '19:04:26', 'Disponível', '', '', ''),
(16, 33, 'assets/img/bolo.png', 'Bolo', 'Um dos bolos mais bem feitos da terra feitos pela tatatatatat', 'Alimentos', '15.00', '2026-08-26', '19:19:21', 'Disponível', '', '', ''),
(17, 33, 'assets/img/atividade2.png', 'adsadsad', 'sadsadsad', 'Alimentos', '1232323.00', '2026-08-26', '19:47:17', 'Disponível', '', '', ''),
(18, 33, 'assets/img/a.jpg', 'Marmitas baratas', 'Marmita', 'Alimentos', '15.00', '2026-08-26', '19:57:22', 'Disponível', 'https://www.ifood.com.br/delivery/telemaco-borba-pr/marmitas-tb-nossa-senhora-do-perpetuo-socorro/bbb46ae2-b898-4587-a6e1-480679bb9e0f', 'https://www.ifood.com.br/delivery/telemaco-borba-pr/marmitas-tb-nossa-senhora-do-perpetuo-socorro/bbb46ae2-b898-4587-a6e1-480679bb9e0f', ''),
(19, 33, 'assets/img/aaa.png', 'marmitas', 'jsadahdusahdsaudhsaudih', 'Alimentos', '25.00', '2026-08-26', '19:57:56', 'Disponível', 'https://www.google.com/maps/place/IFPR+Campus+Tel%C3%AAmaco+Borba/@-24.3433472,-50.6560512,14z/data=!4m6!3m5!1s0x94e982ea5bf894ab:0xd8a9d8e17c62247a!8m2!3d-24.3374316!4d-50.6567214!16s%2Fg%2F11dfsn7gbd?entry=ttu&amp;g_ep=EgoyMDI2MDgyMy4wIKXMDSoASAFQAw%3D%3D', 'https://www.ifood.com.br/delivery/telemaco-borba-pr/marmitas-tb-nossa-senhora-do-perpetuo-socorro/bbb46ae2-b898-4587-a6e1-480679bb9e0f', ''),
(20, 33, 'assets/img/batatas .png', 'adsadsadsada', 'asdsadsadsadsa', 'Alimentos', '155.00', '2026-08-26', '20:03:57', 'Disponível', 'https://www.google.com/maps/place/IFPR+Campus+Tel%C3%AAmaco+Borba/@-24.3433472,-50.6560512,14z/data=!4m6!3m5!1s0x94e982ea5bf894ab:0xd8a9d8e17c62247a!8m2!3d-24.3374316!4d-50.6567214!16s%2Fg%2F11dfsn7gbd?entry=ttu&amp;g_ep=EgoyMDI2MDgyMy4wIKXMDSoASAFQAw%3D%3D', 'https://www.ifood.com.br/delivery/telemaco-borba-pr/marmitas-tb-nossa-senhora-do-perpetuo-socorro/bbb46ae2-b898-4587-a6e1-480679bb9e0f', 'https://wa.me/5542998141929'),
(21, 33, 'assets/img/atividade2 BD.png', 'sadsadsad', 'sadsadsad', 'Alimentação', '123213.00', '2026-08-26', '20:09:52', 'Disponível', '', '', ''),
(22, 33, 'assets/img/batatas .png', 'batatas', 'khkjshadkjsadsakjhd', 'Alimentação', '150.00', '2026-08-26', '20:49:48', 'Disponível', 'https://www.google.com/maps/place/UNIFATEB/@-24.3433472,-50.6564804,14z/data=!4m6!3m5!1s0x94e982df73a6ff59:0xf006ea03f6aadb1!8m2!3d-24.3350464!4d-50.6407471!16s%2Fm%2F0k0tf55?entry=ttu&amp;g_ep=EgoyMDI2MDgyMy4wIKXMDSoASAFQAw%3D%3D', 'https://www.ifood.com.br/delivery/telemaco-borba-pr/acai-e-fast-food-cristal-centro/dc170950-9b3b-4319-a0f5-82c7d072645d', 'https://wa.me/5542998141929');

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
(32, 'sadsadsadsadsa', NULL, '1234@1234', '81dc9bdb52d04dc20036dbd8313ed055', '123.212.223-22', 'Ativo', '2026-08-19', 'Cliente', '', '', 'Telêmaco Borba', '', NULL),
(33, 'Gustavo', NULL, 'Gustavopo@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '91.239.929/9292-99', 'Ativo', '2026-08-26', 'Microempreendedor', '4299814929', 'rua jardim bandeirantes', 'Telêmaco Borba', '@guxsta_hb', NULL);

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
  MODIFY `IdAnuncio` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

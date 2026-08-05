-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/08/2026 às 22:40
-- Versão do servidor: 8.4.8
-- Versão do PHP: 8.2.12

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
-- Estrutura para tabela `post`
--

CREATE TABLE `post` (
  `titulo_post` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `data_post` date NOT NULL,
  `descricao_post` varchar(300) NOT NULL,
  `imagem_post` varchar(300) NOT NULL,
  `id_post` int NOT NULL,
  `resumo_post` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `post`
--

INSERT INTO `post` (`titulo_post`, `data_post`, `descricao_post`, `imagem_post`, `id_post`, `resumo_post`) VALUES
('O gato cara feia', '2026-08-03', 'O gato com uma cara muito feia', 'gato.jpg', 2, 'O gato com a cara mais feia do mundo'),
('Segundo Post', '2026-08-18', '213123213asdasdasd', 'asassadasd.jpg', 4, 'asdasdasdasdasdasda'),
('O cachorro mais feio do mundo', '2026-08-24', 'O cachorro mais feio q vc ja viu', 'cachorrofeio.jpg', 5, 'O cachorro feio');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL,
  `nome_usuario` varchar(100) NOT NULL,
  `email_usuario` varchar(150) NOT NULL,
  `senha_usuario` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cpf_cnpj_usuario` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status_usuario` varchar(15) NOT NULL,
  `data_cadastro` date NOT NULL,
  `tipo_usuario` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome_usuario`, `email_usuario`, `senha_usuario`, `cpf_cnpj_usuario`, `status_usuario`, `data_cadastro`, `tipo_usuario`) VALUES
(22, 'iuoasdhusadioasiou', '12321312@aasdas', '81dc9bdb52d04dc20036dbd8313ed055', '261.312.321-63', '', '2026-08-05', ''),
(23, 'dasdaszxsadas', 'hjasdasd@jhasdajs', '81dc9bdb52d04dc20036dbd8313ed055', '11.782.371/2732-17', '', '2026-08-05', ''),
(24, 'jihasdghsaduyasduiasi', '123123@jasdask', '81dc9bdb52d04dc20036dbd8313ed055', '140.728.349-98', '', '2026-08-05', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

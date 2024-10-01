-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/10/2024 às 19:53
-- Versão do servidor: 10.4.25-MariaDB
-- Versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `emprestimos`
--

CREATE TABLE `emprestimos` (
  `CodEmprestimo` int(11) NOT NULL,
  `Data_Emprestimo` date DEFAULT NULL,
  `Data_Devolucao` date DEFAULT NULL,
  `CodLivro` int(11) NOT NULL,
  `CodLeitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `emprestimos`
--

INSERT INTO `emprestimos` (`CodEmprestimo`, `Data_Emprestimo`, `Data_Devolucao`, `CodLivro`, `CodLeitor`) VALUES
(1, '2024-09-01', '2024-09-15', 1, 3),
(2, '2024-09-05', '2024-09-20', 5, 2),
(3, '2024-09-10', '2024-09-25', 3, 1),
(4, '2024-09-12', '2024-09-26', 4, 5),
(5, '2024-09-15', '2024-09-30', 2, 4),
(6, '2024-09-20', '2024-10-05', 1, 2),
(7, '2024-09-22', '2024-10-07', 2, 3),
(8, '2024-09-25', '2024-10-10', 3, 4),
(9, '2024-09-28', '2024-10-12', 4, 1),
(10, '2024-09-30', '2024-10-15', 5, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `leitores`
--

CREATE TABLE `leitores` (
  `CodLeitor` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `DtNasc` date DEFAULT NULL,
  `Celular` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `RA` int(11) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `NumEnd` varchar(255) DEFAULT NULL,
  `Bairro` varchar(255) DEFAULT NULL,
  `CidadeUF` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `leitores`
--

INSERT INTO `leitores` (`CodLeitor`, `Nome`, `DtNasc`, `Celular`, `Email`, `RA`, `Endereco`, `NumEnd`, `Bairro`, `CidadeUF`) VALUES
(1, 'João Silva Sauro', '2001-04-01', '(11)98788-2311', 'joao@hotmail.com', 631113101, 'Rua Boa Esperança', '201', 'Janga', 'Paulista/PE'),
(2, 'Maria Silva Nascimento', '2011-07-21', '(11)98788-2311', 'maria@hotmail.com', 631113102, 'Rua da Vovó', '101', 'MAranguape I', 'Paulista/PE'),
(3, 'Mateus Novaes Abreu', '2012-06-11', '(11)98788-2311', 'mateus@hotmail.com', 631113105, 'Rua da Praia', '41', 'Bosque 2', 'Olinda/PE'),
(4, 'Joana Maria de Souza', '2008-05-31', '(11)98788-2311', 'joana@hotmail.com', 631113155, 'Rua da Casa', '121', 'Bosque 1', 'Olinda/PE'),
(5, 'Maria  das Graças Menezes', '2007-11-12', '(11)98788-2311', 'maria@hotmail.com', 631113121, 'Avenida dos Lirios', '78', 'Boa Viagem', 'Recife/PE');

-- --------------------------------------------------------

--
-- Estrutura para tabela `livros`
--

CREATE TABLE `livros` (
  `CodLivro` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `Autor` varchar(255) DEFAULT NULL,
  `Editora` varchar(255) DEFAULT NULL,
  `Sinopse` varchar(255) DEFAULT NULL,
  `AnoPublicacao` int(11) DEFAULT NULL,
  `Genero` varchar(255) DEFAULT NULL,
  `Paginas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `livros`
--

INSERT INTO `livros` (`CodLivro`, `Titulo`, `Autor`, `Editora`, `Sinopse`, `AnoPublicacao`, `Genero`, `Paginas`) VALUES
(1, ' O Sol é Para Todos ', ' Harper Lee ', ' Companhia das Letras ', ' Ambientado na década de 1930 no sul dos Estados Unidos, este romance aborda temas de racismo, injustiça e perda da inocência através dos olhos da jovem Scout Finch. A história gira em torno do julgamento de um homem negro acusado de estuprar uma mulher b', 1960, ' Ficção Clássica ', 336),
(2, ' Todos os Garotos que Já Amei ', ' Jenny Han ', ' Intrínseca ', ' Lara Jean Covey é uma garota que guarda cartas de amor secretas que escreveu para todos os meninos que já se apaixonou. Quando essas cartas misteriosamente são enviadas, sua vida amorosa se complica. Lara Jean precisa lidar com as consequências e descobr', 2014, ' Jovem Adulto / Romance ', 368),
(3, ' Talvez a Sua Jornada Agora Seja Sobre Você ', ' louylouy ', ' Lenna Jonk ', ' Em meio a transições e descobertas, a protagonista embarca em uma jornada de autoconhecimento. Confrontando medos e segredos do passado, ela encontra novas amizades e uma possibilidade de amor que pode mudar sua vida. Através de desafios emocionais, ela ', 2014, ' Jovem Adulto / Romance ', 368),
(4, ' A Culpa é das Estrelas ', ' John Green ', ' Intrínseca ', ' Hazel Grace Lancaster, uma adolescente com câncer, não espera muito da vida, mas tudo muda quando conhece Augustus Waters em um grupo de apoio. Juntos, eles exploram o amor, a dor e a beleza da vida, desafiando as incertezas que a doença impõe. Através d', 2012, ' Jovem Adulto / Romance ', 336),
(5, ' A Cabana ', ' William P. Young ', ' Editora Sextante ', ' Após a tragédia da perda de sua filha, Mackenzie Allen Phillips se vê em uma profunda crise de fé. Ele recebe um convite misterioso para retornar à cabana onde sua filha foi assassinada. Lá, encontra Deus em formas inesperadas e passa por uma jornada de ', 2007, ' Ficção / Espiritualidade ', 256);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `leitores`
--
ALTER TABLE `leitores`
  ADD PRIMARY KEY (`CodLeitor`);

--
-- Índices de tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`CodLivro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

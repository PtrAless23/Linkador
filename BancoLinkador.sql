-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06-Nov-2020 às 23:00
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aluno`
--
CREATE DATABASE IF NOT EXISTS `aluno` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aluno`;
--
-- Database: `aluno_ajax`
--
CREATE DATABASE IF NOT EXISTS `aluno_ajax` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aluno_ajax`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `nome` varchar(50) NOT NULL,
  `responsavel` varchar(50) NOT NULL,
  `TotaldeHoras` int(11) NOT NULL,
  `NumDeParcelas` int(11) NOT NULL,
  `preco` float NOT NULL,
  `Finalizado` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Database: `aluno_brasileirao`
--
CREATE DATABASE IF NOT EXISTS `aluno_brasileirao` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aluno_brasileirao`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clubes`
--

CREATE TABLE `clubes` (
  `id` int(11) NOT NULL,
  `time` varchar(50) DEFAULT NULL,
  `P` int(3) DEFAULT NULL,
  `v` int(3) DEFAULT NULL,
  `e` int(3) DEFAULT NULL,
  `d` int(3) DEFAULT NULL,
  `gp` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `clubes`
--

INSERT INTO `clubes` (`id`, `time`, `P`, `v`, `e`, `d`, `gp`) VALUES
(1, 'Flamengo', 78, 24, 6, 3, 72),
(2, 'Palmeiras', 67, 19, 10, 3, 51),
(3, 'Santos', 64, 19, 7, 6, 48),
(4, 'Grêmio', 56, 16, 8, 8, 55),
(5, 'São Paulo', 52, 14, 10, 8, 32),
(6, 'Atlético-PR', 50, 14, 8, 10, 45),
(7, 'Internacional', 49, 14, 7, 11, 37),
(8, 'Corinthians', 49, 12, 13, 7, 36),
(9, 'Bahia', 43, 11, 10, 11, 35),
(10, 'Vasco', 43, 11, 10, 12, 35),
(11, 'Goiás', 42, 12, 6, 14, 34),
(12, 'Atlético-MG', 40, 11, 7, 14, 38),
(13, 'Fortaleza', 39, 11, 6, 15, 39),
(14, 'Botafogo', 36, 11, 3, 18, 28),
(15, 'Ceará', 36, 10, 6, 16, 32),
(16, 'Cruzeiro', 35, 7, 14, 11, 26),
(17, 'Fluminense', 34, 9, 7, 16, 32),
(18, 'CSA', 29, 7, 8, 17, 21),
(19, 'Chapecoense', 22, 4, 10, 18, 25),
(20, 'Avaí', 17, 3, 8, 21, 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clubes`
--
ALTER TABLE `clubes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clubes`
--
ALTER TABLE `clubes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Database: `aluno_cadastro`
--
CREATE DATABASE IF NOT EXISTS `aluno_cadastro` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aluno_cadastro`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `nome` varchar(50) NOT NULL,
  `responsavel` varchar(50) NOT NULL,
  `TotaldeHoras` int(11) NOT NULL,
  `NumDeParcelas` int(11) NOT NULL,
  `DataEntrega` date NOT NULL,
  `preco` float NOT NULL,
  `Finalizado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`nome`, `responsavel`, `TotaldeHoras`, `NumDeParcelas`, `DataEntrega`, `preco`, `Finalizado`) VALUES
('Maria', 'Lucas', 50, 4, '2019-12-26', 2000, 0);
--
-- Database: `aluno_cript`
--
CREATE DATABASE IF NOT EXISTS `aluno_cript` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aluno_cript`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_u` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_u`, `nome`, `email`, `senha`) VALUES
(1, 'Administrador', 'admin@gmail.com', '$2a$08$Cf1f11ePArKlBJomM0F6a.lGoZSmh2xQ.6pW0TleNWENx8G6YQvf.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_u`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_u` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `aluno_db`
--
CREATE DATABASE IF NOT EXISTS `aluno_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aluno_db`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `crianca`
--

CREATE TABLE `crianca` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `sexo` varchar(15) NOT NULL,
  `idade` int(11) DEFAULT NULL,
  `parto` char(2) DEFAULT NULL,
  `etnia` varchar(10) DEFAULT NULL,
  `mae` varchar(60) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `crianca`
--

INSERT INTO `crianca` (`id`, `nome`, `sexo`, `idade`, `parto`, `etnia`, `mae`, `email`, `telefone`) VALUES
(12, 'Francisca', 'Masculino', 7, 'N', 'pardo', 'Suzana', 'Suze@gmail.com', '992787325'),
(16, 'Carol', 'Feminino', 4, '', 'pardo', 'Maria', 'mari@gmail.com', '54 3578 9090'),
(17, 'Patrick', 'Masculino', 10, 'N', 'indigina', 'Marlove', 'mar@gmail.com', '54 3452 8976'),
(18, 'Mario Filho', 'Masculino', 11, 'N', 'amarela', 'Isaura Filho', 'Filho@gmail.com', '99 91234566'),
(19, 'Josefina', 'Feminino', 3, 'N', 'pardo', 'ewe', 'Lar@gmail.com', '992787325');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vacina`
--

CREATE TABLE `vacina` (
  `lote` char(6) NOT NULL,
  `id_crianca` int(11) DEFAULT NULL,
  `vacina` varchar(20) NOT NULL,
  `data_vac` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vacina`
--

INSERT INTO `vacina` (`lote`, `id_crianca`, `vacina`, `data_vac`) VALUES
('ABX333', 12, 'sarampo', '2018-08-03'),
('CCCTT9', 12, 'sarampo', '2018-04-30'),
('GRI202', 17, 'gripe', '2019-06-15'),
('SRP777', 12, 'sarampo', '2018-07-07'),
('SRP780', 12, 'sarampo', '2018-10-09'),
('TET876', 16, 'tÃ©tano', '2019-02-02'),
('TTR543', 16, 'tetano', '2019-05-10'),
('xxxxxx', 18, 'gripe', '2019-07-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crianca`
--
ALTER TABLE `crianca`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vacina`
--
ALTER TABLE `vacina`
  ADD PRIMARY KEY (`lote`),
  ADD KEY `id_crianca` (`id_crianca`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crianca`
--
ALTER TABLE `crianca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `vacina`
--
ALTER TABLE `vacina`
  ADD CONSTRAINT `vacina_ibfk_1` FOREIGN KEY (`id_crianca`) REFERENCES `crianca` (`id`);
--
-- Database: `aluno_insetario`
--
CREATE DATABASE IF NOT EXISTS `aluno_insetario` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aluno_insetario`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `familia`
--

CREATE TABLE `familia` (
  `nome_f` varchar(50) DEFAULT NULL,
  `id_f` int(11) NOT NULL,
  `id_o` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `familia`
--

INSERT INTO `familia` (`nome_f`, `id_f`, `id_o`) VALUES
('Nymphalidae', 1, 2),
('Muscidae', 2, 2),
('nome', 3, 4),
('laranja', 4, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagem`
--

CREATE TABLE `imagem` (
  `arquivo` varchar(50) NOT NULL,
  `id_img` int(11) NOT NULL,
  `autor` varchar(50) DEFAULT NULL,
  `id_i` int(11) NOT NULL,
  `dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `imagem`
--

INSERT INTO `imagem` (`arquivo`, `id_img`, `autor`, `id_i`, `dt`) VALUES
('img_3.jpeg', 1, 'Patrick', 1, '2018-12-05 00:00:00'),
('fa223edfb726d8206db06efb59184168.jpg', 6, 'Regina', 1, '2019-11-03 14:15:57'),
('83e8cb470853e0ef82b0690191dedb9d.jpg', 8, 'Regina', 1, '2019-11-03 14:16:47'),
('5ea41455aadd6b7f45e53172e91e0803.jpg', 9, 'Patrick', 2, '2019-11-03 15:20:31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `inseto`
--

CREATE TABLE `inseto` (
  `nome_ci` varchar(50) DEFAULT NULL,
  `nome_co1` varchar(50) DEFAULT NULL,
  `nome_co2` varchar(50) DEFAULT NULL,
  `nome_co3` varchar(50) DEFAULT NULL,
  `controle` varchar(5000) DEFAULT NULL,
  `id_i` int(11) NOT NULL,
  `id_f` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `inseto`
--

INSERT INTO `inseto` (`nome_ci`, `nome_co1`, `nome_co2`, `nome_co3`, `controle`, `id_i`, `id_f`) VALUES
('lycorea cleobaea', 'borboleta', 'borboleta-tigre', '', '', 1, 1),
('Musca domestica', 'Mosca-doméstica', '', '', 'Algumas variedades podem ser imunes a insecticidas. Apesar de existirem métodos caseiros de tentar-se mantê-las afastadas, a desinsetização por empresas especializadas ainda é o método mais eficaz de controle dessa praga urbana.', 2, 2),
('Scarabaeus sacer', 'sssssss', '', '', '', 3, 2),
('Scarabaeus sacer', 'sssssss', '', '', '', 4, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ordem`
--

CREATE TABLE `ordem` (
  `nome_o` varchar(50) DEFAULT NULL,
  `id_o` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ordem`
--

INSERT INTO `ordem` (`nome_o`, `id_o`) VALUES
('lepidoptera', 1),
('diptera', 2),
('aaa9jgjdk', 3),
('Coleoptera', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_u` int(11) NOT NULL,
  `cpf` char(14) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `tipo` char(2) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_u`, `cpf`, `nome`, `tipo`, `email`, `senha`) VALUES
(1, '011.794.520-03', 'Aline Zich', 'b', 'aline@gmail.com', 'e7d80ffeefa212b7c5c55700e4f7193e'),
(2, '013.688.870-15', 'Admin123', 'c', 'admin@gmail.com', '042f032e6076a349ce0efadc5f597bc5'),
(3, '777.777.777-77', 'Marlon', 'b', 'marli@gmail.com', '27df854c4e604adf77c0f771a6c263eb'),
(4, '342.343.214-23', 'nome5', 'c', 'novo@gmail.com', 'e7d80ffeefa212b7c5c55700e4f7193e'),
(5, '342.343.214-23', 'nome5', 'c', 'novo@gmail.com', 'e7d80ffeefa212b7c5c55700e4f7193e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `familia`
--
ALTER TABLE `familia`
  ADD PRIMARY KEY (`id_f`),
  ADD KEY `id_o` (`id_o`);

--
-- Indexes for table `imagem`
--
ALTER TABLE `imagem`
  ADD PRIMARY KEY (`id_img`),
  ADD KEY `id_i` (`id_i`);

--
-- Indexes for table `inseto`
--
ALTER TABLE `inseto`
  ADD PRIMARY KEY (`id_i`),
  ADD KEY `id_f` (`id_f`);

--
-- Indexes for table `ordem`
--
ALTER TABLE `ordem`
  ADD PRIMARY KEY (`id_o`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_u`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `familia`
--
ALTER TABLE `familia`
  MODIFY `id_f` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `imagem`
--
ALTER TABLE `imagem`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `inseto`
--
ALTER TABLE `inseto`
  MODIFY `id_i` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ordem`
--
ALTER TABLE `ordem`
  MODIFY `id_o` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_u` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `familia`
--
ALTER TABLE `familia`
  ADD CONSTRAINT `familia_ibfk_1` FOREIGN KEY (`id_o`) REFERENCES `ordem` (`id_o`);

--
-- Limitadores para a tabela `imagem`
--
ALTER TABLE `imagem`
  ADD CONSTRAINT `imagem_ibfk_1` FOREIGN KEY (`id_i`) REFERENCES `inseto` (`id_i`);

--
-- Limitadores para a tabela `inseto`
--
ALTER TABLE `inseto`
  ADD CONSTRAINT `inseto_ibfk_1` FOREIGN KEY (`id_f`) REFERENCES `familia` (`id_f`);
--
-- Database: `aluno_mydb`
--
CREATE DATABASE IF NOT EXISTS `aluno_mydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aluno_mydb`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `aluno_vaccinare`
--
CREATE DATABASE IF NOT EXISTS `aluno_vaccinare` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aluno_vaccinare`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `crianca`
--

CREATE TABLE `crianca` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `idade` int(3) NOT NULL,
  `sexo` char(1) NOT NULL,
  `parto` tinyint(1) NOT NULL,
  `etnia` char(1) NOT NULL,
  `nome_mae` varchar(80) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `crianca`
--

INSERT INTO `crianca` (`id`, `nome`, `idade`, `sexo`, `parto`, `etnia`, `nome_mae`, `email`, `telefone`) VALUES
(2, 'Aninha Lemos', 8, 'F', 0, 'I', 'Luiza Lemos', 'luiza@gmail.com', '(51) 34517896'),
(6, 'Josefina', 10, 'F', 0, 'B', 'dgr', 'Lar@gmail.com', '99 91234566'),
(7, 'Patrick', 10, 'M', 1, 'N', 'dgr', 'jos@gmail.com', '54 3578 9090'),
(9, 'Josefina', 10, 'M', 1, 'P', 'jghy', 'jos@gmail.com', '99 91234566'),
(10, 'Jorge', 7, 'M', 1, 'N', 'jghy', 'patrickdemelloalessi@gmail.com', '54 3702 4750'),
(12, 'Josefina', 13, 'M', 1, 'P', 'fhjgkg', 'w@gmail.com', '54 3702 4750'),
(13, 'Josefina', 33, 'F', 1, 'I', 'olloll', 'josefina@gmail.com', '99 91234566'),
(14, 'Josefina', 33, 'F', 1, 'I', 'olloll', 'josefina@gmail.com', '99 91234566'),
(15, 'Lucas', 2, 'M', 0, 'P', 'vhlhy', 'w@gmail.com', '54 3702 4750'),
(16, 'dghdh', 7, 'F', 1, 'P', 'v,hlhy', 'w@gmail.com', '60'),
(17, 'Josefina', 3, 'M', 1, 'P', 'jghy', 'Lar@gmail.com', '54 3578 9090'),
(18, 'Lucas', 10, 'M', 0, 'N', 'olloll', 'Lar@gmail.com', '992787325'),
(19, 'Vini', 12, 'M', 1, 'I', 'vhlhy', 'josefina@gmail.com', '54 3702 4750');

-- --------------------------------------------------------

--
-- Estrutura da tabela `crianca_vacina`
--

CREATE TABLE `crianca_vacina` (
  `id_crianca` int(11) NOT NULL,
  `id_vacina` int(11) NOT NULL,
  `lote` varchar(10) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `crianca_vacina`
--

INSERT INTO `crianca_vacina` (`id_crianca`, `id_vacina`, `lote`, `data`) VALUES
(2, 1, 'gjjjjjjjjj', '2018-02-04'),
(7, 1, 'TET876', '2018-09-15'),
(14, 2, 'CCCTT9', '2019-07-12'),
(15, 2, 'ddd090', '2019-04-12'),
(16, 2, 'SRP780', '2019-10-09'),
(19, 1, 'aaa000', '2018-11-23');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'Administrador', 'admin@gmail.com', 'senha'),
(2, 'Funcionário', 'fun@gmail.com', 'pass');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vacina`
--

CREATE TABLE `vacina` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vacina`
--

INSERT INTO `vacina` (`id`, `nome`) VALUES
(1, 'Febre amarela'),
(2, 'Tétano');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crianca`
--
ALTER TABLE `crianca`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crianca_vacina`
--
ALTER TABLE `crianca_vacina`
  ADD PRIMARY KEY (`id_crianca`,`id_vacina`),
  ADD KEY `FK_vacina_id` (`id_vacina`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vacina`
--
ALTER TABLE `vacina`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crianca`
--
ALTER TABLE `crianca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vacina`
--
ALTER TABLE `vacina`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `crianca_vacina`
--
ALTER TABLE `crianca_vacina`
  ADD CONSTRAINT `FK_crianca_id` FOREIGN KEY (`id_crianca`) REFERENCES `crianca` (`id`),
  ADD CONSTRAINT `FK_vacina_id` FOREIGN KEY (`id_vacina`) REFERENCES `vacina` (`id`);
--
-- Database: `banco`
--
CREATE DATABASE IF NOT EXISTS `banco` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `banco`;
--
-- Database: `bancodereservas`
--
CREATE DATABASE IF NOT EXISTS `bancodereservas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bancodereservas`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `artigo`
--

CREATE TABLE `artigo` (
  `id_a` int(11) NOT NULL,
  `titulo` varchar(500) DEFAULT NULL,
  `texto` text,
  `clube` int(11) DEFAULT NULL,
  `autor` int(11) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  `hora` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clube`
--

CREATE TABLE `clube` (
  `id_c` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `pais` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clube`
--

INSERT INTO `clube` (`id_c`, `nome`, `logo`, `pais`) VALUES
(1, 'Grêmio FBPA', '1b455d3289657db63947b0754c1d56f1.png', 'Brasil'),
(2, 'SC Internacional', '475618fdd72b32b40da79c0431297dbd.png', 'Brasil'),
(3, 'Esportivo BG ', '1bab758a5fe9ba2a5be3519df49ecb33.png', 'Brasil'),
(4, 'FC Barcelona', 'ff49bc1722863491bb48b34e15720059.png', 'Espanha'),
(5, 'Real Madrid CF', '151e0dad2a4d1ac375345049ae255abc.png', 'Espanha'),
(6, 'Juventus FC', '51c4886d179266d9939a0358a7b1860d.png', 'Itália'),
(7, 'Liverpool FC', '4f84e61e31cab9c563e1452fa38dc1ce.png', 'Inglaterra'),
(8, 'Manchester United', '369a32604defea0eb1b752682b7f388a.png', 'Inglaterra');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagem`
--

CREATE TABLE `imagem` (
  `id_i` int(11) NOT NULL,
  `partida` int(11) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  `descri` varchar(50) DEFAULT NULL,
  `fotografo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `partida`
--

CREATE TABLE `partida` (
  `id_p` int(11) NOT NULL,
  `titulo` varchar(500) DEFAULT NULL,
  `texto` text,
  `time_c` int(11) DEFAULT NULL,
  `time_f` int(11) DEFAULT NULL,
  `autor` int(11) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  `hora` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `partida`
--

INSERT INTO `partida` (`id_p`, `titulo`, `texto`, `time_c`, `time_f`, `autor`, `img`, `hora`) VALUES
(1, 'Quem segura o Liverpool ?!?', ' <p>No Anfield o Liverpool recebeu o Manchester United buscando abrir ainda mais sua vantagem na liderança do campeonato após o tropeço do City em Manchester contra o Crystal Palace no sábado(18/01) em jogo eletrizante que terminou em 2 a 2.</p>\r\n<p>Quando a bola rolou, o United iniciou pressionando a defesa do time da casa mas sem agredir a meta defendida por Alisson. Essa pressão durou até cerca dos 10 minutos de jogo quando Mati? recebeu o primeiro amarelo da partida por chegada perigosa com pé alto.\r\n<br>A partir daí o Liverpool cresceu no jogo e abriu o placar aos 14 minutos com van Dijk que subiu absoluto e sem dificuldades para fazer de cabeça em cobrança de escanteio. Placar 1 a 0 Liverpool.</p>\r\n<p>O Manchester acabou sentindo o gol e o Liverpool aproveitou para assumir o controle da partida. Após rápida troca de passes Mané recebeu com liberdade e chutou para defesa de De Gea que jogou pra escanteio.<br>\r\nDo escanteio o Liverpool conseguiu um cruzamento, van Dijk e De Gea acabaram se chocando e a bola sobrou para Firmino que marcou aos 25 minutos o que seria o segundo do Liverpool. Porém, após muita reclamação com auxílio do VAR o gol foi anulado. Firmino aos 27 teve outra chance após cruzamento de Mané, mas dessa vez a bola foi pra fora.</p>\r\n<p>O Manchester tenta retomar a pressão mas o Liverpool usa das inversões para sair jogando. Aos 35 minutos Wijnaldum marca também para o time da casa mas impedido.\r\n<br>Alisson é um “ICE-MAN” frente a pressão do ataque visitante e sai jogando sempre com a bola no chão que chega redonda aos zagueiros. O Manchester United só finaliza pela primeira vez aos 39 com Martial e direto pra fora.</p><br>\r\n<p>Liverpool começa o segundo tempo com tudo, sem deixar espaços para o United respirar nos primeiros 5 minutos, chega até a acertar a trave em chute de Henderson.<br>\r\nSomente aos 12 minutos da segunda o United chega na área do Liverpool mas Fred acaba finalizando pra fora em rara achada de espaço na defesa do time da casa. Aos 13 minutos a defesa deixa outro espaço e dessa vez quem não aproveita é Martial que chuta por cima do gol. A pressão do Manchester surte efeito e o “ICE-MAN” é obrigado a sair no chutão.</p>\r\n\r\n<p>Fred comanda o meio dos Red Devils, desarmando jogadas, controlando a bola e criando espaços, uma grande partida do brasileiro.</p>\r\n\r\n<p>Jogo fica lá e cá pela metade do segundo tempo. Os técnicos fazem mudanças, no Liverpool Lallana entra muito abaixo, no United Juan Mata vai para ser o cara dos passes mas passa apagado. Destaque também para Fabinho que entrou no lugar de Mané, o brasileiro não jogava desde novembro quando sofreu uma lesão grave no tornozelo.</p>\r\n\r\n<p>Manchester cresce nos momentos finais e vai com tudo para cima em busca do empate. Porém após escanteio Alisson lança Salah que recebe no meio campo e dispara até chutar tirando de De Gea para fazer 2 a 0 no último lance aos 93 minutos decorridos na partida.</p>\r\n\r\n<p>Liverpool dispara na liderança, 16 pontos de vantagem sobre o Manchester City faltando 16 partidas para o Liverpool que tem um jogo a menos. O United estaciona na quinta colocação com 34.</p>\r\n', 7, 8, 1, 'e5123025554384f6f7c7d5bce18f9573.jpg', '2020-01-19 20:24:23');

-- --------------------------------------------------------

--
-- Estrutura da tabela `seguindo`
--

CREATE TABLE `seguindo` (
  `id_s` int(11) NOT NULL,
  `id_c` int(11) DEFAULT NULL,
  `id_u` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `seguindo`
--

INSERT INTO `seguindo` (`id_s`, `id_c`, `id_u`) VALUES
(2, 1, 1),
(3, 7, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_u` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `tipo` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_u`, `nome`, `usuario`, `senha`, `tipo`) VALUES
(1, 'Patrick Alessi', 'PatrickAlessi23', '318469ec8f53ece2cb1915c5f3f95d37', 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artigo`
--
ALTER TABLE `artigo`
  ADD PRIMARY KEY (`id_a`),
  ADD KEY `clube` (`clube`),
  ADD KEY `autor` (`autor`);

--
-- Indexes for table `clube`
--
ALTER TABLE `clube`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `imagem`
--
ALTER TABLE `imagem`
  ADD PRIMARY KEY (`id_i`),
  ADD KEY `partida` (`partida`);

--
-- Indexes for table `partida`
--
ALTER TABLE `partida`
  ADD PRIMARY KEY (`id_p`),
  ADD KEY `time_c` (`time_c`),
  ADD KEY `time_f` (`time_f`),
  ADD KEY `autor` (`autor`);

--
-- Indexes for table `seguindo`
--
ALTER TABLE `seguindo`
  ADD PRIMARY KEY (`id_s`),
  ADD KEY `id_c` (`id_c`),
  ADD KEY `id_u` (`id_u`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_u`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artigo`
--
ALTER TABLE `artigo`
  MODIFY `id_a` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clube`
--
ALTER TABLE `clube`
  MODIFY `id_c` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `imagem`
--
ALTER TABLE `imagem`
  MODIFY `id_i` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partida`
--
ALTER TABLE `partida`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seguindo`
--
ALTER TABLE `seguindo`
  MODIFY `id_s` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_u` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `artigo`
--
ALTER TABLE `artigo`
  ADD CONSTRAINT `artigo_ibfk_1` FOREIGN KEY (`clube`) REFERENCES `clube` (`id_c`),
  ADD CONSTRAINT `artigo_ibfk_2` FOREIGN KEY (`autor`) REFERENCES `usuario` (`id_u`);

--
-- Limitadores para a tabela `imagem`
--
ALTER TABLE `imagem`
  ADD CONSTRAINT `imagem_ibfk_1` FOREIGN KEY (`partida`) REFERENCES `partida` (`id_p`);

--
-- Limitadores para a tabela `partida`
--
ALTER TABLE `partida`
  ADD CONSTRAINT `partida_ibfk_1` FOREIGN KEY (`time_c`) REFERENCES `clube` (`id_c`),
  ADD CONSTRAINT `partida_ibfk_2` FOREIGN KEY (`time_f`) REFERENCES `clube` (`id_c`),
  ADD CONSTRAINT `partida_ibfk_3` FOREIGN KEY (`autor`) REFERENCES `usuario` (`id_u`);

--
-- Limitadores para a tabela `seguindo`
--
ALTER TABLE `seguindo`
  ADD CONSTRAINT `seguindo_ibfk_1` FOREIGN KEY (`id_c`) REFERENCES `clube` (`id_c`),
  ADD CONSTRAINT `seguindo_ibfk_2` FOREIGN KEY (`id_u`) REFERENCES `usuario` (`id_u`);
--
-- Database: `banco_gi`
--
CREATE DATABASE IF NOT EXISTS `banco_gi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `banco_gi`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador`
--

CREATE TABLE `administrador` (
  `id_a` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `administrador`
--

INSERT INTO `administrador` (`id_a`, `email`, `senha`) VALUES
(1, 'admin@gmail.com', 'PatrickJane');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fundos`
--

CREATE TABLE `fundos` (
  `id_f` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `fundo` varchar(500) NOT NULL,
  `tema` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `logos`
--

CREATE TABLE `logos` (
  `id_l` int(11) NOT NULL,
  `logo` varchar(500) NOT NULL,
  `academia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `logos`
--

INSERT INTO `logos` (`id_l`, `logo`, `academia`) VALUES
(1, 'https://s3.amazonaws.com/4gym-app-resources/suporte//opt/appserver/apache-tomcat-8.5.35_server1/temp/efeito-ideal.png?AWSAccessKeyId=AKIAJMZADIQLOUF2DOAA&Expires=1962369037&Signature=AfFeV6eHBmG72rrCqiRbZSGwM%2Fg%3D', 'Efeito Ideal'),
(2, 'https://s3.amazonaws.com/4gym-app-resources/suporte//opt/appserver/apache-tomcat-8.5.35_server1/temp/limit-fitness.png?AWSAccessKeyId=AKIAJMZADIQLOUF2DOAA&Expires=1962369055&Signature=EMTZjfL1cIPdws8Cg9HovEfxJNg%3D', 'Limit-Fitness'),
(3, 'https://s3.amazonaws.com/4gym-app-resources/suporte//opt/appserver/apache-tomcat-8.5.35_server1/temp/moviment.png?AWSAccessKeyId=AKIAJMZADIQLOUF2DOAA&Expires=1962369075&Signature=YiHdlHeWzgYJC8f3zE0kcgyo7tg%3D', 'Moviment'),
(4, 'https://s3.amazonaws.com/4gym-app-resources/suporte//opt/appserver/apache-tomcat-8.5.35_server1/temp/super-acao.png?AWSAccessKeyId=AKIAJMZADIQLOUF2DOAA&Expires=1962369112&Signature=0OG536p%2Bv4uFK4q%2BgsesfmTY%2F9A%3D', 'Super-Ação'),
(5, 'https://s3.amazonaws.com/4gym-app-resources/suporte//opt/appserver/apache-tomcat-8.5.35_server1/temp/vibe-plus.png?AWSAccessKeyId=AKIAJMZADIQLOUF2DOAA&Expires=1962369131&Signature=tNQi3DHQKZnZF7Y55yYyHrG81JU%3D', 'Vibe Plus'),
(6, 'https://s3.amazonaws.com/4gym-app-resources/suporte//opt/appserver/apache-tomcat-8.5.35_server1/temp/pessoa.png?AWSAccessKeyId=AKIAJMZADIQLOUF2DOAA&Expires=1962369093&Signature=HHiGg9XmKJ2eQRMmMcPBLYWlY6I%3D', 'Academia Pessoa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `temas`
--

CREATE TABLE `temas` (
  `id_t` int(11) NOT NULL,
  `tema` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `temas`
--

INSERT INTO `temas` (`id_t`, `tema`) VALUES
(1, 'Ano Novo'),
(12, 'Natal'),
(13, 'Dia dos Pais'),
(14, 'Dia das Mães'),
(15, 'Dia do Trabalhador'),
(16, 'Dia do Amigo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_a`);

--
-- Indexes for table `fundos`
--
ALTER TABLE `fundos`
  ADD PRIMARY KEY (`id_f`),
  ADD KEY `tema` (`tema`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id_l`);

--
-- Indexes for table `temas`
--
ALTER TABLE `temas`
  ADD PRIMARY KEY (`id_t`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_a` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fundos`
--
ALTER TABLE `fundos`
  MODIFY `id_f` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id_l` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `temas`
--
ALTER TABLE `temas`
  MODIFY `id_t` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `fundos`
--
ALTER TABLE `fundos`
  ADD CONSTRAINT `fundos_ibfk_1` FOREIGN KEY (`tema`) REFERENCES `temas` (`id_t`);
--
-- Database: `linkador`
--
CREATE DATABASE IF NOT EXISTS `linkador` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `linkador`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_cat` int(11) NOT NULL,
  `nome` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id_cat`, `nome`) VALUES
(3, 'Futebol'),
(4, 'PolÃ­tica'),
(5, 'Games'),
(6, 'Desenvolvimento');

-- --------------------------------------------------------

--
-- Estrutura da tabela `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `descricao` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `imagem` varchar(1000) NOT NULL,
  `link` varchar(500) NOT NULL,
  `id_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `links`
--

INSERT INTO `links` (`id`, `titulo`, `descricao`, `keywords`, `imagem`, `link`, `id_cat`) VALUES
(9, 'Sorteio da Copa do Brasil 2020 define quartas de final; veja os jogos', 'Novo sorteio da Copa do Brasil definiu ainda caminho atÃ© a final. Destaque para o jogo entre SÃ£o Paulo x Flamengo jÃ¡ na prÃ³xima semana.', 'copa-do-brasil-2020,cbf,sorteio copa do brasil,chaveamento copa brasil,sorteio fase final copa brasil,copa-do-brasil-2020,cbf,sorteio copa do brasil,chaveamento copa brasil,sorteio fase final copa brasil', 'https://www.minhatorcida.com.br/imagens/post/9867/sorteio-copa-brasil.jpg', 'https://www.minhatorcida.com.br/copa-do-brasil-2020/9867-sorteio-da-copa-do-brasil-2020-e-nesta-sexta-acompanhe-ao-vivo', 3),
(10, 'Trump ainda tem chances de se reeleger nos EUA; veja cenÃ¡rios', 'Republicano precisa vencer em 4 estados onde a disputa ainda estÃ¡ em aberto para se manter na Casa Branca. HÃ¡ tambÃ©m a possibilidade de reverter a derrota no Arizona.', '', 'https://s2.glbimg.com/BKIwbaOhAw9yPb-qhJhcT9__40U%3D/1200x/smart/filters:cover%28%29:strip_icc%28%29/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2020/Q/v/WU0wcgS263yAn0f5AKsQ/2020-11-04t083300z-741573032-rc28wj92zny0-rtrmadp-3-usa-election-trump.jpg', 'https://g1.globo.com/mundo/eleicoes-nos-eua/2020/noticia/2020/11/05/trump-ainda-tem-chances-de-se-reeleger-presidente-dos-eua-veja-cenarios.ghtml', 4),
(14, 'Cyberpunk 2077: sete curiosidades que vocÃª provavelmente nÃ£o sabia', 'Confira curiosidades interessantes sobre Cyberpunk 2077, o jogo futurista da CD Projekt Red que Ã© um dos mais aguardados do ano', '', 'https://s2.glbimg.com/ZlLXKzOA-ajdXJtOReLjrlrmD2k%3D/1200x/smart/filters:cover%28%29:strip_icc%28%29/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2020/I/E/VbD8zfTAabMrgxRy9uRA/cyberpunk-2077-release-date.jpg', 'https://www.techtudo.com.br/listas/2020/11/cyberpunk-2077-sete-curiosidades-que-voce-provavelmente-nao-sabia.ghtml', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `links` (`id_cat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `links`
--
ALTER TABLE `links`
  ADD CONSTRAINT `links` FOREIGN KEY (`id_cat`) REFERENCES `categorias` (`id_cat`);
--
-- Database: `mvc`
--
CREATE DATABASE IF NOT EXISTS `mvc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mvc`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clubes`
--

CREATE TABLE `clubes` (
  `id_time` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clubes`
--

INSERT INTO `clubes` (`id_time`, `nome`) VALUES
(2, 'FC Barcelona'),
(6, 'GrÃªmio '),
(7, 'Paris Saint-Germain'),
(11, 'Internacional');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogadores`
--

CREATE TABLE `jogadores` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `posicao` varchar(255) DEFAULT NULL,
  `overall` int(11) DEFAULT NULL,
  `id_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `jogadores`
--

INSERT INTO `jogadores` (`id`, `nome`, `posicao`, `overall`, `id_time`) VALUES
(1, 'Lionel Messi', 'Atacante', 93, 2),
(4, 'Neymar Jr', 'Atacante', 91, 7),
(5, 'Diego ChurÃ­n', 'Centroavante', 78, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clubes`
--
ALTER TABLE `clubes`
  ADD PRIMARY KEY (`id_time`);

--
-- Indexes for table `jogadores`
--
ALTER TABLE `jogadores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_time` (`id_time`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clubes`
--
ALTER TABLE `clubes`
  MODIFY `id_time` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `jogadores`
--
ALTER TABLE `jogadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `jogadores`
--
ALTER TABLE `jogadores`
  ADD CONSTRAINT `jogadores_ibfk_1` FOREIGN KEY (`id_time`) REFERENCES `clubes` (`id_time`);
--
-- Database: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mydb`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Extraindo dados da tabela `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'BancoGI', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"administrador\",\"fundos\",\"logos\",\"temas\"],\"table_structure[]\":[\"administrador\",\"fundos\",\"logos\",\"temas\"],\"table_data[]\":[\"administrador\",\"fundos\",\"logos\",\"temas\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"estructura da tabela @TABLE@\",\"latex_structure_continued_caption\":\"estructura da tabela @TABLE@ (continuaÃ§Ã£o)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"ConteÃºdo da tabela @TABLE@\",\"latex_data_continued_caption\":\"ConteÃºdo da tabela @TABLE@ (continuaÃ§Ã£o)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Extraindo dados da tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"linkador\",\"table\":\"links\"},{\"db\":\"linkador\",\"table\":\"categorias\"},{\"db\":\"mvc\",\"table\":\"clubes\"},{\"db\":\"mvc\",\"table\":\"jogadores\"},{\"db\":\"mvc\",\"table\":\"times\"},{\"db\":\"banco_gi\",\"table\":\"temas\"},{\"db\":\"banco_gi\",\"table\":\"administrador\"},{\"db\":\"banco_gi\",\"table\":\"logos\"},{\"db\":\"banco_gi\",\"table\":\"fundos\"},{\"db\":\"mysql\",\"table\":\"columns_priv\"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('banco_gi', 'fundos', 'tema'),
('linkador', 'links', 'id_cat'),
('mvc', 'clubes', 'id_time');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Extraindo dados da tabela `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'aluno_db', 'crianca', '{\"sorted_col\":\"`crianca`.`sexo`  DESC\"}', '2019-08-25 19:11:36');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-11-06 21:59:05', '{\"Console\\/Mode\":\"show\",\"NavigationDisplayLogo\":false,\"Server\\/hide_db\":\"\",\"Server\\/only_db\":\"\",\"lang\":\"pt\",\"Console\\/Height\":0}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

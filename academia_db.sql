-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/09/2024 às 02:10
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
-- Banco de dados: `academia_db`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `email` varchar(60) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `idade` int(11) NOT NULL,
  `id_plano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `cpf`, `nome`, `email`, `telefone`, `idade`, `id_plano`) VALUES
(1, '348.765.567-01', 'Marcelo Pereira', 'marcelo.pereira@yahoo.com', '9 95688-9878', 34, 102),
(2, '183.723.519-23', 'Letícia Costa', 'leticia.costa@outlook.com', '9 95688-9879', 46, 101),
(3, '078.459.113-83', 'Roberto Nascimento', 'beto.nascimento@hotmail.com', '9 95688-9880', 20, 101),
(4, '617.944.321-86', 'Juliana Souza', 'juliana.souza@gmail.com', '9 95688-9881', 59, 103),
(5, '977.654.321-00', 'Lucas Oliveira', 'lucas.oliveira@live.com', '9 95688-9882', 28, 106),
(6, '381.654.987-11', 'Ana Silva', 'ana.silva@gmail.com', '9 95688-9883', 30, 107),
(7, '654.321.987-22', 'Carlos Pereira', 'carlos.pereira@yahoo.com', '9 95688-9884', 40, 108),
(8, '567.890.123-33', 'Fernanda Lima', 'fernanda.lima@hotmail.com', '9 95688-9885', 29, 109),
(9, '678.901.234-44', 'Rodrigo Santos', 'rodrigo.santos@outlook.com', '9 95688-9886', 35, 102),
(10, '789.012.345-55', 'Mariana Costa', 'mariana.costa@gmail.com', '9 95688-9887', 33, 104),
(11, '890.123.456-66', 'Eduardo Almeida', 'eduardo.almeida@gmail.com', '9 95688-9888', 45, 101),
(12, '901.234.567-77', 'Isabela Rocha', 'isabela.rocha@yahoo.com', '9 95688-9889', 32, 103),
(13, '012.345.678-88', 'Gabriel Santos', 'gabriel.santos@hotmail.com', '9 95688-9890', 38, 102),
(14, '123.456.789-99', 'Juliana Almeida', 'juliana.almeida@live.com', '9 95688-9891', 24, 101),
(15, '234.567.890-10', 'Ricardo Oliveira', 'maria.nova@gmail.com', '9 95688-9892', 28, 104),
(16, '345.678.901-21', 'Tatiane Martins', 'tatiane.martins@hotmail.com', '9 95688-9893', 31, 103),
(17, '456.789.012-32', 'Mateus Ferreira', 'mateus.ferreira@gmail.com', '9 95688-9894', 39, 102),
(19, '678.901.234-54', 'Diego Souza', 'diego.souza@gmail.com', '9 95688-9896', 50, 104),
(20, '789.012.345-65', 'Paula Mendes', 'paula.mendes@yahoo.com', '9 95688-9897', 29, 103),
(21, '890.123.456-76', 'Fernando Castro', 'fernando.castro@hotmail.com', '9 95688-9898', 31, 102),
(22, '901.234.567-87', 'Cláudia Martins', 'claudia.martins@gmail.com', '9 95688-9899', 40, 101),
(23, '012.345.678-98', 'Roberta Santos', 'roberta.santos@live.com', '9 95688-9900', 35, 104),
(24, '123.456.789-01', 'Jorge Lima', 'jorge.lima@hotmail.com', '9 95688-9901', 41, 102),
(25, '234.567.890-12', 'Marcio Pereira', 'marcio.pereira@gmail.com', '9 95688-9902', 48, 103),
(26, '345.678.901-23', 'Luciana Costa', 'luciana.costa@outlook.com', '9 95688-9903', 26, 101),
(27, '456.789.012-34', 'André Oliveira', 'andre.oliveira@gmail.com', '9 95688-9904', 33, 104),
(28, '567.890.123-45', 'Viviane Rocha', 'viviane.rocha@yahoo.com', '9 95688-9905', 38, 102),
(29, '678.901.234-56', 'Tiago Santos', 'tiago.santos@hotmail.com', '9 95688-9906', 27, 103),
(30, '789.012.345-67', 'Aline Almeida', 'aline.almeida@gmail.com', '9 95688-9907', 29, 104),
(32, '901.234.567-89', 'Gustavo Pereira', 'gustavo.pereira@gmail.com', '9 95688-9909', 32, 103);

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal`
--

CREATE TABLE `personal` (
  `id_personal` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `idade` int(11) NOT NULL,
  `especialidade` varchar(60) NOT NULL,
  `contato` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `personal`
--

INSERT INTO `personal` (`id_personal`, `nome`, `idade`, `especialidade`, `contato`) VALUES
(1001, 'Mariana Barros', 40, 'Pilates', '(31) 95323-3387'),
(1002, 'Renato Lima', 30, 'Musculação', '(31) 99577-6163'),
(1003, 'Mateus Gomes', 37, 'Crossfit', '(31) 92339-4979'),
(1004, 'Amanda Rocha', 27, 'Yoga', '(31) 98218-1387'),
(1005, 'Juliana Silva', 35, 'Natação', '(31) 97123-4567'),
(1006, 'Carlos Pereira', 45, 'Corrida', '(31) 96432-7890'),
(1007, 'Ana Costa', 29, 'Treinamento Funcional', '(31) 97865-4321'),
(1008, 'Rodrigo Alves', 32, 'Boxe', '(31) 96234-5678'),
(1009, 'Patrícia Martins', 38, 'Alongamento', '(31) 95567-8901'),
(1010, 'Felipe Souza', 33, 'Futsal', '(31) 96478-1234'),
(1011, 'Laura Rodrigues', 41, 'Treinamento Personalizado', '(31) 96321-6548'),
(1012, 'Bruno Santos', 28, 'Esportes Aquáticos', '(31) 95234-6789'),
(1013, 'Camila Ferreira', 31, 'Condicionamento Físico', '(31) 97123-9876'),
(1014, 'André Silva', 36, 'Reabilitação Física', '(31) 95543-2109'),
(1015, 'Beatriz Oliveira', 43, 'Treinamento de Força', '(31) 97456-7891');

-- --------------------------------------------------------

--
-- Estrutura para tabela `plano`
--

CREATE TABLE `plano` (
  `id_plano` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `tipo_plano` varchar(255) DEFAULT NULL,
  `duração` varchar(60) NOT NULL,
  `valor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `plano`
--

INSERT INTO `plano` (`id_plano`, `nome`, `tipo_plano`, `duração`, `valor`) VALUES
(101, 'Fit Start', 'Mensal', '3 meses', 300),
(102, 'Power Boost', 'Anual', '12 meses', 747.1),
(103, 'Full Body', 'Trimestral', '10 meses', 550),
(104, 'Zen Balance', 'Bimestral', '6 meses', 150.8),
(105, 'Strength Pro', 'Mensal', '4 meses', 890.5),
(106, 'Endurance Plus', 'Anual', '14 meses', 1020.75),
(107, 'Flexibility Max', 'Trimestral', '9 meses', 540.6),
(108, 'Cardio Extreme', 'Bimestral', '8 meses', 275.3),
(109, 'Wellness Journey', 'Semestral', '6 meses', 350);

-- --------------------------------------------------------

--
-- Estrutura para tabela `treinamento`
--

CREATE TABLE `treinamento` (
  `id_treinamento` int(11) NOT NULL,
  `id_personal` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `data_ini_treino` date NOT NULL,
  `data_fim_treino` date NOT NULL,
  `valor_treino` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `treinamento`
--

INSERT INTO `treinamento` (`id_treinamento`, `id_personal`, `id_cliente`, `data_ini_treino`, `data_fim_treino`, `valor_treino`) VALUES
(14, 1002, 4, '2024-05-17', '2024-06-25', 578.94),
(15, 1001, 2, '2024-07-22', '2024-08-25', 640.1),
(16, 1002, 3, '2024-01-19', '2024-04-06', 448.61),
(17, 1004, 4, '2024-09-05', '2024-10-23', 225.84),
(18, 1003, 5, '2024-02-15', '2024-05-01', 520.75),
(19, 1005, 6, '2024-03-10', '2024-07-20', 675.3),
(20, 1006, 7, '2024-04-05', '2024-08-15', 590.2),
(21, 1008, 8, '2024-06-01', '2024-10-01', 799.5),
(22, 1007, 9, '2024-05-12', '2024-09-10', 635),
(23, 1009, 10, '2024-07-15', '2024-11-05', 710.8),
(24, 1010, 11, '2024-08-20', '2024-12-15', 550.4),
(25, 1001, 12, '2024-01-10', '2024-03-28', 430.9),
(26, 1003, 13, '2024-02-01', '2024-06-30', 490.6),
(27, 1005, 14, '2024-07-01', '2024-11-15', 715.25),
(28, 1006, 15, '2024-09-10', '2024-12-20', 605.7);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`,`id_plano`),
  ADD UNIQUE KEY `id_cliente_UNIQUE` (`id_cliente`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  ADD KEY `fk_cliente_plano1_idx` (`id_plano`);

--
-- Índices de tabela `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id_personal`),
  ADD UNIQUE KEY `id_personal_UNIQUE` (`id_personal`);

--
-- Índices de tabela `plano`
--
ALTER TABLE `plano`
  ADD PRIMARY KEY (`id_plano`),
  ADD UNIQUE KEY `id_plano_UNIQUE` (`id_plano`);

--
-- Índices de tabela `treinamento`
--
ALTER TABLE `treinamento`
  ADD PRIMARY KEY (`id_treinamento`,`id_personal`,`id_cliente`),
  ADD UNIQUE KEY `id_treino_UNIQUE` (`id_treinamento`),
  ADD KEY `fk_personal_trainer_has_cliente_cliente1_idx` (`id_cliente`),
  ADD KEY `fk_personal_trainer_has_cliente_personal_trainer1_idx` (`id_personal`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `personal`
--
ALTER TABLE `personal`
  MODIFY `id_personal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1016;

--
-- AUTO_INCREMENT de tabela `plano`
--
ALTER TABLE `plano`
  MODIFY `id_plano` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_cliente_plano1` FOREIGN KEY (`id_plano`) REFERENCES `plano` (`id_plano`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `treinamento`
--
ALTER TABLE `treinamento`
  ADD CONSTRAINT `fk_personal_trainer_has_cliente_cliente1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_personal_trainer_has_cliente_personal_trainer1` FOREIGN KEY (`id_personal`) REFERENCES `personal` (`id_personal`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

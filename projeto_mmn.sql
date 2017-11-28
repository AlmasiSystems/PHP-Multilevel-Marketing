-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 28, 2017 at 03:16 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projeto_mmn`
--

-- --------------------------------------------------------

--
-- Table structure for table `patentes`
--

CREATE TABLE `patentes` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `min` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patentes`
--

INSERT INTO `patentes` (`id`, `nome`, `min`) VALUES
(1, 'Iniciante', 0),
(2, 'Junior', 1),
(3, 'Diretor', 3),
(4, 'Diretor Senior', 5),
(5, 'Executivo', 10);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `id_pai` int(11) DEFAULT NULL,
  `patente` int(11) NOT NULL DEFAULT '1',
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `id_pai`, `patente`, `nome`, `email`, `senha`) VALUES
(1, NULL, 5, 'Sistema', 'sistema@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 1, 3, 'Giorgi', 'giorgicb@gmail.com', '202cb962ac59075b964b07152d234b70'),
(3, 1, 4, 'Ana Paula', 'anapaula@gmail.com', '202cb962ac59075b964b07152d234b70'),
(4, 3, 3, 'Bruna', 'bruna@gmail.com', '202cb962ac59075b964b07152d234b70'),
(5, 3, 1, 'Isis Bastos', 'isis@gmail.com', '202cb962ac59075b964b07152d234b70'),
(6, 4, 2, 'maria', 'maria@gmail.com', '202cb962ac59075b964b07152d234b70'),
(7, 6, 2, 'Jose', 'jose@gmail.com', '202cb962ac59075b964b07152d234b70'),
(8, 7, 1, 'Paulo', 'paulo@gmail.com', '202cb962ac59075b964b07152d234b70'),
(9, 1, 1, 'gilmar@gmail.com', 'gilmar@gmail.com', '202cb962ac59075b964b07152d234b70'),
(10, 1, 1, 'fabricio@gmail.com', 'fabricio@gmail.com', '202cb962ac59075b964b07152d234b70'),
(11, 1, 1, 'ricardo@gmail.com', 'ricardo@gmail.com', '202cb962ac59075b964b07152d234b70'),
(12, 1, 1, 'fernanda@gmail.com', 'fernanda@gmail.com', '202cb962ac59075b964b07152d234b70'),
(13, 1, 1, 'fabio@gmail.com', 'fabio@gmail.com', '202cb962ac59075b964b07152d234b70'),
(14, 2, 1, 'tom@gmail.com', 'tom@gmail.com', '202cb962ac59075b964b07152d234b70'),
(15, 2, 1, 'moacir@gmail.com', 'moacir@gmail.com', '202cb962ac59075b964b07152d234b70'),
(16, 2, 1, 'andreia@gmail.com', 'andreia@gmail.com', '202cb962ac59075b964b07152d234b70'),
(17, 2, 1, 'julio@gmail.com', 'julio@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patentes`
--
ALTER TABLE `patentes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patentes`
--
ALTER TABLE `patentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

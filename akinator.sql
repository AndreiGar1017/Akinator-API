-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2023 a las 08:16:08
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `akinator`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `players`
--

CREATE TABLE `players` (
  `player_id` int(11) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `player_club` varchar(255) NOT NULL,
  `player_country` varchar(255) NOT NULL,
  `player_age` int(11) NOT NULL,
  `player_number` int(11) NOT NULL,
  `player_position` varchar(255) NOT NULL,
  `player_img` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `players`
--

INSERT INTO `players` (`player_id`, `player_name`, `player_club`, `player_country`, `player_age`, `player_number`, `player_position`, `player_img`, `createdAt`, `updatedAt`) VALUES
(1, 'Alisson Becker', 'Liverpool FC', 'Brasil', 31, 1, 'portero', 'https://digitalhub.fifa.com/transform/6f442f76-255f-4989-9fc7-e3263e2e9a0a/1443020790?io=transform:fill,width:792,height:900', '2023-11-22 03:01:44', '2023-11-22 23:48:55'),
(2, 'Danilo', 'Juventus FC', 'Brasil', 31, 2, 'defensa', 'https://digitalhub.fifa.com/transform/f730d6f2-bcd5-4e1d-965c-4edfdd69ec3f/1443025794?io=transform:fill,width:792,height:900', '2023-11-22 03:01:44', '2023-11-22 03:01:44'),
(3, 'Thiago Silva', 'Chelsea FC', 'Brasil', 38, 3, 'defensa', 'https://digitalhub.fifa.com/transform/328d2c02-44e8-479c-97e1-764e3affac8c/1443023175?io=transform:fill,width:792,height:900', '2023-11-22 03:01:44', '2023-11-22 03:01:44'),
(4, 'Marquinhos', 'PSG', 'Brasil', 28, 4, 'defensa', 'https://digitalhub.fifa.com/transform/a29ddb25-361b-4f6f-8fb3-50690cb01dbf/1443022046?io=transform:fill,width:792,height:900', '2023-11-22 03:01:44', '2023-11-22 03:01:44'),
(5, 'Eder Militao', 'Real Madrid', 'Brasil', 24, 14, 'defensa', 'https://digitalhub.fifa.com/transform/01e1c7e3-ae46-4eca-9409-1afe1619b77b/1443021700?io=transform:fill,width:792,height:900', '2023-11-22 03:01:44', '2023-11-22 03:01:44'),
(6, 'Casemiro', 'Manchester United', 'Brasil', 30, 5, 'mediocampista', 'https://digitalhub.fifa.com/transform/dcc8b999-a4e2-4bd6-badb-97b4c448789f/1443025808?io=transform:fill,width:792,height:900', '2023-11-22 03:01:44', '2023-11-22 03:01:44'),
(7, 'Lucas Paqueta', 'West Ham United', 'Brasil', 25, 7, 'mediocampista', 'https://digitalhub.fifa.com/transform/f7387d44-c265-4de5-b361-6e2563d7cc23/1443021748?io=transform:fill,width:792,height:900', '2023-11-22 03:01:44', '2023-11-22 03:01:44'),
(8, 'Vinicius Jr', 'Real Madrid', 'Brasil', 22, 20, 'delantero', 'https://digitalhub.fifa.com/transform/f7e48956-e85e-403d-b728-2b2f3a6419ec/1443025821?io=transform:fill,width:792,height:900', '2023-11-22 03:01:44', '2023-11-22 03:01:44'),
(9, 'Neymar', 'PSG', 'Brasil', 30, 10, 'delantero', 'https://digitalhub.fifa.com/transform/c4e4c789-9423-47cd-8e4e-21a416f2cb06/1443025860?io=transform:fill,width:792,height:900', '2023-11-22 03:01:44', '2023-11-22 03:01:44'),
(10, 'Raphinha', 'FC Barcelona', 'Brasil', 26, 11, 'delantero', 'https://digitalhub.fifa.com/transform/896f5ae1-98f6-47df-a717-85320040f605/1443022143?io=transform:fill,width:792,height:900', '2023-11-22 03:01:44', '2023-11-22 03:01:44'),
(11, 'Richarlison', 'Tottenham Hotspur FC', 'Brasil', 25, 9, 'delantero', 'https://digitalhub.fifa.com/transform/49fe3ff4-3fd9-4555-981d-615d711ce248/1443023503?io=transform:fill,width:792,height:900', '2023-11-22 03:01:44', '2023-11-22 03:01:44'),
(12, 'Thibaut Courtois', 'Real Madrid', 'Bélgica', 30, 1, 'portero', 'https://digitalhub.fifa.com/transform/0ac06079-73ec-4dd4-a0ca-77e9c79cb411/1442830156?io=transform:fill,width:792,height:900', '2023-11-22 03:12:16', '2023-11-22 03:12:16'),
(13, 'Thomas Meunier', 'Borussia Dortmund', 'Bélgica', 31, 15, 'defensa', 'https://digitalhub.fifa.com/transform/e2f176f4-542a-4aaa-82b0-0348fc5c0367/1442831098?io=transform:fill,width:792,height:900', '2023-11-22 03:12:16', '2023-11-22 03:12:16'),
(14, 'Toby Alderweireld', 'Royal Antwerp FC', 'Bélgica', 33, 2, 'defensa', 'https://digitalhub.fifa.com/transform/dc6a2ee5-576e-406b-86ef-39e0f8052f1c/1442831258?io=transform:fill,width:792,height:900', '2023-11-22 03:12:16', '2023-11-22 03:12:16'),
(15, 'Jan Vertonghen', 'Royal Sporting Club Anderlecht', 'Bélgica', 35, 5, 'defensa', 'https://digitalhub.fifa.com/transform/eb24f201-91f8-4594-824a-fc79d3d847ed/1442831389?io=transform:fill,width:792,height:900', '2023-11-22 03:12:16', '2023-11-22 03:12:16'),
(16, 'Timothy Castagne', 'Leicester City FC', 'Bélgica', 27, 21, 'defensa', 'https://digitalhub.fifa.com/transform/ff063eea-bf14-42ea-9095-fb0a8aba2431/1442830230?io=transform:fill,width:792,height:900', '2023-11-22 03:12:16', '2023-11-22 03:12:16'),
(17, 'Amadou Onana', 'Everton FC', 'Bélgica', 21, 18, 'mediocampista', 'https://digitalhub.fifa.com/transform/c20efb33-edb9-4fc6-b810-813163640c76/1442831239?io=transform:fill,width:792,height:900', '2023-11-22 03:12:16', '2023-11-22 03:12:16'),
(18, 'Axel Witsel', 'Atlético de Madrid', 'Bélgica', 33, 6, 'mediocampista', 'https://digitalhub.fifa.com/transform/7babea7d-4bac-4fc4-a166-21625949283d/1442831359?io=transform:fill,width:792,height:900', '2023-11-22 03:12:16', '2023-11-22 03:12:16'),
(19, 'Kevin De Bruyne', 'Manchester City', 'Bélgica', 31, 7, 'mediocampista', 'https://digitalhub.fifa.com/transform/4ea8805b-e75b-4bf7-8d1c-1f5b3fa5d9b0/1442830273?io=transform:fill,width:792,height:900', '2023-11-22 03:12:16', '2023-11-22 03:12:16'),
(20, 'Eden Hazard', 'Real Madrid', 'Bélgica', 31, 7, 'delantero', 'https://digitalhub.fifa.com/transform/f2c177b8-0919-4b6d-8494-e0c74d235b2c/1442831074?io=transform:fill,width:792,height:900', '2023-11-22 03:12:16', '2023-11-22 03:12:16'),
(21, 'Thorgan Hazard', 'Borussia Dortmund', 'Bélgica', 29, 16, 'delantero', 'https://digitalhub.fifa.com/transform/3741a815-1de2-424d-811a-d1385a11a5ce/1442831048?io=transform:fill,width:792,height:900', '2023-11-22 03:12:16', '2023-11-22 03:12:16'),
(22, 'Michy Batshuayi', 'Fenerbahçe Spor Kulübü', 'Bélgica', 29, 23, 'delantero', 'https://digitalhub.fifa.com/transform/0076a0d4-18ff-4e44-a9b5-297b5693dfe4/1442831198?io=transform:fill,width:792,height:900', '2023-11-22 03:12:16', '2023-11-22 03:12:16'),
(23, 'Jordan Pickford', 'Everton FC', 'Inglaterra', 28, 1, 'portero', 'https://digitalhub.fifa.com/transform/ccfc6c04-ef86-4b16-bf62-7d6cec2e6737/1441944281?io=transform:fill,width:792,height:900', '2023-11-22 03:15:58', '2023-11-22 03:15:58'),
(24, 'Kieran Trippier', 'Newcastle United', 'Inglaterra', 32, 12, 'defensa', 'https://digitalhub.fifa.com/transform/cb9f33c7-8779-4060-9040-5244dbc3c981/1441945154?io=transform:fill,width:792,height:900', '2023-11-22 03:15:58', '2023-11-22 03:15:58'),
(25, 'John Stones', 'Manchester City', 'Inglaterra', 28, 5, 'defensa', 'https://digitalhub.fifa.com/transform/ca3de608-1c2c-489c-a6e0-1a5283372307/1441945288?io=transform:fill,width:792,height:900', '2023-11-22 03:15:58', '2023-11-22 03:15:58'),
(26, 'Harry Maguire', 'Manchester United', 'Inglaterra', 29, 6, 'defensa', 'https://digitalhub.fifa.com/transform/a47f0cea-7b52-4bbf-98f3-00baa2ba5b76/1441945256?io=transform:fill,width:792,height:900', '2023-11-22 03:15:58', '2023-11-22 03:15:58'),
(27, 'Luke Shaw', 'Manchester United', 'Inglaterra', 27, 3, 'defensa', 'https://digitalhub.fifa.com/transform/26b56ac4-3fe4-4e23-b632-92d8c89167cb/1441945575?io=transform:fill,width:792,height:900', '2023-11-22 03:15:58', '2023-11-22 03:15:58'),
(28, 'Jude Bellingham', 'Borussia Dortmund', 'Inglaterra', 19, 22, 'mediocampista', 'https://digitalhub.fifa.com/transform/a3d6d2c6-df50-430e-abb5-53eaaab80b7e/1441945307?io=transform:fill,width:792,height:900', '2023-11-22 03:15:58', '2023-11-22 03:15:58'),
(29, 'Declan Rice', 'West Ham United', 'Inglaterra', 23, 4, 'mediocampista', 'https://digitalhub.fifa.com/transform/cda257d1-50e4-4ab7-9e88-17c0670abfc2/1441944538?io=transform:fill,width:792,height:900', '2023-11-22 03:15:58', '2023-11-22 03:15:58'),
(30, 'Bukayo Saka', 'Arsenal', 'Inglaterra', 21, 17, 'mediocampista', 'https://digitalhub.fifa.com/transform/c88c6fcf-5705-4264-9552-938ef7eaa022/1441944591?io=transform:fill,width:792,height:900', '2023-11-22 03:15:58', '2023-11-22 03:15:58'),
(31, 'Mason Mount', 'Chelsea FC', 'Inglaterra', 23, 19, 'mediocampista', 'https://digitalhub.fifa.com/transform/93c9e6d8-8a8c-4300-8a89-6a9a1c4fad88/1441944419?io=transform:fill,width:792,height:900', '2023-11-22 03:15:58', '2023-11-22 03:15:58'),
(32, 'Raheem Sterling', 'Chelsea FC', 'Inglaterra', 28, 10, 'delantero', 'https://digitalhub.fifa.com/transform/e593063f-bff2-49b8-abcb-874e76ecc903/1441945548?io=transform:fill,width:792,height:900', '2023-11-22 03:15:58', '2023-11-22 03:15:58'),
(33, 'Harry Kane', 'Tottenham Hotspur FC', 'Inglaterra', 29, 9, 'delantero', 'https://digitalhub.fifa.com/transform/7d57e471-4f7f-47b2-a4f7-2facbd8ac9ff/1441945685?io=transform:fill,width:792,height:900', '2023-11-22 03:15:58', '2023-11-22 03:15:58'),
(34, 'Andries Noppert', 'SC Heerenveen', 'Países Bajos', 28, 23, 'portero', 'https://digitalhub.fifa.com/transform/da635e9a-bcf8-4d17-8213-0175293efe7c/1442167721?io=transform:fill,width:792,height:900', '2023-11-22 03:24:08', '2023-11-22 03:24:08'),
(35, 'Jurriën Timber', 'Ajax de Ámsterdam', 'Países Bajos', 21, 2, 'defensa', 'https://digitalhub.fifa.com/transform/78a78ce0-0921-44d9-8a62-18c823bc9e72/1442169429?io=transform:fill,width:792,height:900', '2023-11-22 03:24:08', '2023-11-22 03:24:08'),
(36, 'Virgil van Dijk', 'Liverpool FC', 'Países Bajos', 31, 4, 'defensa', 'https://digitalhub.fifa.com/transform/6f9fe4b0-eea8-492f-9405-6c81fdd1710a/1442168748?io=transform:fill,width:792,height:900', '2023-11-22 03:24:08', '2023-11-22 03:24:08'),
(37, 'Nathan Aké', 'Manchester City', 'Países Bajos', 27, 5, 'defensa', 'https://digitalhub.fifa.com/transform/1060b2b3-6079-49fc-bf41-48a028e08da7/1442167854?io=transform:fill,width:792,height:900', '2023-11-22 03:24:08', '2023-11-22 03:24:08'),
(38, 'Denzel Dumfries', 'Inter de Milán', 'Países Bajos', 26, 22, 'defensa', 'https://digitalhub.fifa.com/transform/b253b3e2-21c6-4778-9d8c-1d2932608b78/1442168943?io=transform:fill,width:792,height:900', '2023-11-22 03:24:08', '2023-11-22 03:24:08'),
(39, 'Teun Koopmeiners', 'Atalanta', 'Países Bajos', 24, 20, 'mediocampista', 'https://digitalhub.fifa.com/transform/d18a36e7-630f-4e8e-a8fe-109c7b96f370/1442170434?io=transform:fill,width:792,height:900', '2023-11-22 03:24:08', '2023-11-22 03:24:08'),
(40, 'Frenkie de Jong', 'FC Barcelona', 'Países Bajos', 25, 21, 'mediocampista', 'https://digitalhub.fifa.com/transform/3de020e7-94dc-4126-b02c-8099154e9d75/1442168774?io=transform:fill,width:792,height:900', '2023-11-22 03:24:08', '2023-11-22 03:24:08'),
(41, 'Daley Blind', 'Ajax de Ámsterdam', 'Países Bajos', 32, 17, 'mediocampista', 'https://digitalhub.fifa.com/transform/1619ee99-6f9a-4d3f-812e-0a3f3485e968/1442167801?io=transform:fill,width:792,height:900', '2023-11-22 03:24:08', '2023-11-22 03:24:08'),
(42, 'Davy Klaassen', 'Ajax de Ámsterdam', 'Países Bajos', 29, 14, 'mediocampista', 'https://digitalhub.fifa.com/transform/52c18992-0451-4be0-93e2-19e76f291977/1442169078?io=transform:fill,width:792,height:900', '2023-11-22 03:24:08', '2023-11-22 03:24:08'),
(43, 'Cody Gakpo', 'PSV Eindhoven', 'Países Bajos', 23, 26, 'delantero', 'https://digitalhub.fifa.com/transform/774d8d55-583e-4a5a-9a82-f02191dd35e3/1442169219?io=transform:fill,width:792,height:900', '2023-11-22 03:24:08', '2023-11-22 03:24:08'),
(44, 'Steven Bergwijn', 'Ajax de Ámsterdam', 'Países Bajos', 25, 7, 'delantero', 'https://digitalhub.fifa.com/transform/1a275a19-71da-47c5-a582-e03ad1543994/1442169262?io=transform:fill,width:792,height:900', '2023-11-22 03:24:08', '2023-11-22 03:24:08'),
(45, 'Dominik Livakovic', 'GNK Dinamo Zagreb', 'Croacia', 27, 1, 'portero', 'https://digitalhub.fifa.com/transform/344c53dd-7109-4a01-b75a-b1956af683ce/1442833831?io=transform:fill,width:792,height:900', '2023-11-22 03:24:08', '2023-11-22 03:24:08'),
(46, 'Josip Stanisic', 'Bayern Munich', 'Croacia', 22, 2, 'defensa', 'https://digitalhub.fifa.com/transform/dd54895b-2fe9-4015-8b6e-216710a4e65a/1442834883?io=transform:fill,width:792,height:900', '2023-11-22 03:24:08', '2023-11-22 03:24:08'),
(47, 'Borna Barisic', 'Rangers FC', 'Croacia', 30, 3, 'defensa', 'https://digitalhub.fifa.com/transform/59c69f25-e51a-41e9-b5ed-882c5c33132f/1442834133?io=transform:fill,width:792,height:900', '2023-11-22 03:24:08', '2023-11-22 03:24:08'),
(48, 'Martin Erlic', 'Sassuolo', 'Croacia', 24, 5, 'defensa', 'https://digitalhub.fifa.com/transform/f4c3a9f7-1801-46d8-91b8-ab2f10bb0845/1442834365?io=transform:fill,width:792,height:900', '2023-11-22 03:24:08', '2023-11-22 03:24:08'),
(49, 'Dejan Lovren', 'Zenit FC', 'Croacia', 33, 6, 'defensa', 'https://digitalhub.fifa.com/transform/8e3af8ba-f57b-4acc-8b9a-65eecb9386b1/1442834061?io=transform:fill,width:792,height:900', '2023-11-22 03:24:08', '2023-11-22 03:24:08'),
(50, 'Lovro Majer', 'Stade Rennais FC', 'Croacia', 24, 7, 'mediocampista', 'https://digitalhub.fifa.com/transform/0675b5e4-433c-4f61-8853-b1f02445515a/1442833911?io=transform:fill,width:792,height:900', '2023-11-22 03:24:08', '2023-11-22 03:24:08'),
(51, 'Mateo Kovacic', 'Chelsea FC', 'Croacia', 28, 8, 'mediocampista', 'https://digitalhub.fifa.com/transform/f1171d95-ce45-406c-9b58-672ab7f12a99/1442835025?io=transform:fill,width:792,height:900', '2023-11-22 03:24:08', '2023-11-22 03:24:08'),
(52, 'Luka Modric', 'Real Madrid', 'Croacia', 37, 10, 'mediocampista', 'https://digitalhub.fifa.com/transform/d67acdb0-b9a3-4bb7-a49c-8ee0c2844d55/1442835091?io=transform:fill,width:792,height:900', '2023-11-22 03:24:08', '2023-11-22 03:24:08'),
(53, 'Andrej Kramaric', 'Hoffenheim FC', 'Croacia', 31, 9, 'delantero', 'https://digitalhub.fifa.com/transform/a1b0faa7-d634-4440-b8d2-124883fca434/1442834913?io=transform:fill,width:792,height:900', '2023-11-22 03:24:08', '2023-11-22 03:24:08'),
(54, 'Marko Livaja', 'Hajduk Split', 'Croacia', 29, 14, 'delantero', 'https://digitalhub.fifa.com/transform/d1faa11c-c668-48f9-a2da-668c8a7caed3/1442834999?io=transform:fill,width:792,height:900', '2023-11-22 03:24:08', '2023-11-22 03:24:08'),
(55, 'Ivan Perisic', 'Tottenham Hotspur FC', 'Croacia', 33, 4, 'delantero', 'https://digitalhub.fifa.com/transform/b042c04a-b2b3-4b61-b141-96df26e5c58f/1442835074?io=transform:fill,width:792,height:900', '2023-11-22 03:24:08', '2023-11-22 03:24:08'),
(56, 'Guillermo Ochoa', 'Club America', 'Mexico', 37, 17, 'portero', 'https://digitalhub.fifa.com/transform/c334c4ea-5ba3-4c34-ab21-219a5f9a304d/1442569806?io=transform:fill,width:792,height:900', '2023-11-22 03:28:33', '2023-11-22 03:28:33'),
(57, 'Hirving Lozano', 'Napoli', 'Mexico', 27, 22, 'delantero', 'https://digitalhub.fifa.com/transform/25256872-cd39-4782-862a-45aa19ba5875/1442570768?io=transform:fill,width:792,height:900', '2023-11-22 03:28:33', '2023-11-22 03:28:33'),
(58, 'Raúl Jiménez', 'Wolves FC', 'Mexico', 31, 9, 'delantero', 'https://digitalhub.fifa.com/transform/38f80ee1-1325-4456-8f3f-b44af2540650/1442570723?io=transform:fill,width:792,height:900', '2023-11-22 03:28:33', '2023-11-22 03:28:33'),
(59, 'Alexis Vega', 'Club Deportivo Guadalajara', 'Mexico', 25, 10, 'delantero', 'https://digitalhub.fifa.com/transform/34526e10-28d4-40f1-9e96-0323e84390ef/1442570859?io=transform:fill,width:792,height:900', '2023-11-22 03:28:33', '2023-11-22 03:28:33'),
(60, 'Andrés Guardado', 'Real Betis Balompié', 'Mexico', 28, 18, 'mediocampista', 'https://digitalhub.fifa.com/transform/9aeabab1-850a-47dd-8750-47165dd3d639/1442571347?io=transform:fill,width:792,height:900', '2023-11-22 03:28:33', '2023-11-22 03:28:33'),
(61, 'Luis Chávez', 'Club de Fútbol Pachuca', 'Mexico', 21, 24, 'mediocampista', 'https://digitalhub.fifa.com/transform/b2bb90ea-b2d0-43e4-b0c0-f0aee5e55eb0/1442571210?io=transform:fill,width:792,height:900', '2023-11-22 03:28:33', '2023-11-22 03:28:33'),
(62, 'Héctor Herrera', 'Houston Dynamo', 'Mexico', 32, 16, 'mediocampista', 'https://digitalhub.fifa.com/transform/b2bb90ea-b2d0-43e4-b0c0-f0aee5e55eb0/1442571210?io=transform:fill,width:792,height:900', '2023-11-22 03:28:33', '2023-11-22 03:28:33'),
(63, 'Jorge Sánchez', 'Ajax de Ámsterdam', 'Mexico', 25, 19, 'defensa', 'https://digitalhub.fifa.com/transform/8595731e-ecfb-46c3-8543-8d111bdce8a4/1442571149?io=transform:fill,width:792,height:900', '2023-11-22 03:28:33', '2023-11-22 03:28:33'),
(64, 'Jesús Gallardo', 'Club de Fútbol Monterrey', 'Mexico', 25, 23, 'defensa', 'https://digitalhub.fifa.com/transform/dc8d4f29-9adb-4cdd-b44f-841b09965003/1442569931?io=transform:fill,width:792,height:900', '2023-11-22 03:28:33', '2023-11-22 03:28:33'),
(65, 'Héctor Moreno', 'Club de Fútbol Monterrey', 'Mexico', 34, 15, 'defensa', 'https://digitalhub.fifa.com/transform/96911b40-3a64-4831-8b29-1db53ce5ee8b/1442570919?io=transform:fill,width:792,height:900', '2023-11-22 03:28:33', '2023-11-22 03:28:33'),
(66, 'César Montes', 'Club de Fútbol Monterrey', 'Mexico', 25, 3, 'defensa', 'https://digitalhub.fifa.com/transform/996b1bec-eb20-4225-8f1d-a5fa2eeaebab/1442569877?io=transform:fill,width:792,height:900', '2023-11-22 03:28:33', '2023-11-22 03:28:33'),
(67, 'Diogo Costa', 'FC Porto', 'Portugal', 23, 22, 'portero', 'https://digitalhub.fifa.com/transform/41d05eb0-ca98-4e83-82b9-3bf67305f78c/1442846737?io=transform:fill,width:792,height:900', '2023-11-22 03:28:58', '2023-11-22 03:28:58'),
(68, 'Cristiano Ronaldo', 'Manchester United', 'Portugal', 37, 7, 'delantero', 'https://digitalhub.fifa.com/transform/8fe3826e-c297-436a-9df9-5db29f5cc92b/1442847713?io=transform:fill,width:792,height:900', '2023-11-22 03:28:58', '2023-11-22 03:28:58'),
(69, 'Rafael Leao', 'AC Milan', 'Portugal', 23, 15, 'delantero', 'https://digitalhub.fifa.com/transform/1fc6f198-1763-4973-860b-fd8e35daee97/1442848571?io=transform:fill,width:792,height:900', '2023-11-22 03:28:58', '2023-11-22 03:28:58'),
(70, 'Joao Félix', 'Atlético de Madrid', 'Portugal', 23, 11, 'delantero', 'https://digitalhub.fifa.com/transform/cdec8e15-202c-4960-b00c-cfa8fa5d9cc1/1442848552?io=transform:fill,width:792,height:900', '2023-11-22 03:28:58', '2023-11-22 03:28:58'),
(71, 'Pepe', 'FC Porto', 'Portugal', 39, 3, 'defensa', 'https://digitalhub.fifa.com/transform/930157af-3408-4d6e-aa2d-33d2fa062d3c/1442847606?io=transform:fill,width:792,height:900', '2023-11-22 03:28:58', '2023-11-22 03:28:58'),
(72, 'Raphael Guerreiro', 'Borussia Dortmund', 'Portugal', 29, 5, 'defensa', 'https://digitalhub.fifa.com/transform/119d9c43-4c34-4902-871b-455c7f17fe21/1442847796?io=transform:fill,width:792,height:900', '2023-11-22 03:28:58', '2023-11-22 03:28:58'),
(73, 'Diogo Dalot', 'Manchester United', 'Portugal', 23, 2, 'defensa', 'https://digitalhub.fifa.com/transform/97c144d8-c021-43ae-a796-0ad5e9e1b7e8/1442847847?io=transform:fill,width:792,height:900', '2023-11-22 03:28:58', '2023-11-22 03:28:58'),
(74, 'Rúben Dias', 'Manchester City', 'Portugal', 25, 4, 'defensa', 'https://digitalhub.fifa.com/transform/be68559f-6bda-4cac-8514-39c853ddee1f/1442847980?io=transform:fill,width:792,height:900', '2023-11-22 03:28:58', '2023-11-22 03:28:58'),
(75, 'William Carvalho', 'Real Betis Balompié', 'Portugal', 30, 14, 'mediocampista', 'https://digitalhub.fifa.com/transform/89980cdc-a356-443f-8ca8-38dbd2862f35/1442847659?io=transform:fill,width:792,height:900', '2023-11-22 03:28:58', '2023-11-22 03:28:58'),
(76, 'Vítor Ferreira', 'PSG', 'Portugal', 22, 16, 'mediocampista', 'https://digitalhub.fifa.com/transform/827510dd-33d7-4ef8-b918-f7a299d12099/1442848694?io=transform:fill,width:792,height:900', '2023-11-22 03:28:58', '2023-11-22 03:28:58'),
(77, 'João Palhinha', 'Fulham FC', 'Portugal', 27, 6, 'mediocampista', 'https://digitalhub.fifa.com/transform/11a24783-5723-457b-b3ee-e101d35ec5b8/1442848543?io=transform:fill,width:792,height:900', '2023-11-22 03:28:58', '2023-11-22 03:28:58'),
(78, 'Damian Martínez', 'Aston Villa FC', 'Argentina', 30, 23, 'portero', 'https://digitalhub.fifa.com/transform/ec57583f-85ed-4b6e-b619-8ec94de13b8f/1442740128?io=transform:fill,width:792,height:900', '2023-11-22 03:39:24', '2023-11-22 03:39:24'),
(79, 'Nicolás Otamendi', 'Benfica', 'Argentina', 34, 19, 'defensa', 'https://digitalhub.fifa.com/transform/592d999d-3ded-4a1c-8df1-0ddcad20c18b/1442741360?io=transform:fill,width:792,height:900', '2023-11-22 03:39:24', '2023-11-22 03:39:24'),
(80, 'Cristian Romero', 'Tottenham Hotspur FC', 'Argentina', 24, 13, 'defensa', 'https://digitalhub.fifa.com/transform/10db8803-6d59-4a4b-909d-4cb0b297f904/1442742592?io=transform:fill,width:792,height:900', '2023-11-22 03:39:24', '2023-11-22 03:39:24'),
(81, 'Nahuel Molina', 'Atlético de Madrid', 'Argentina', 24, 26, 'defensa', 'https://digitalhub.fifa.com/transform/0c723ec4-6132-42de-8b21-a70ad7a1c4c1/1442742632?io=transform:fill,width:792,height:900', '2023-11-22 03:39:24', '2023-11-22 03:39:24'),
(82, 'Nicolás Tagliafico', 'Olympique de Lyon', 'Argentina', 30, 3, 'defensa', 'https://digitalhub.fifa.com/transform/9c5788af-5f9c-4d80-ba26-296edd06e352/1442740186?io=transform:fill,width:792,height:900', '2023-11-22 03:39:24', '2023-11-22 03:39:24'),
(83, 'Rodrigo De Paul', 'Atlético de Madrid', 'Argentina', 28, 7, 'mediocampista', 'https://digitalhub.fifa.com/transform/427cc23a-3489-42f1-892f-881b85b857d8/1442742174?io=transform:fill,width:792,height:900', '2023-11-22 03:39:24', '2023-11-22 03:39:24'),
(84, 'Enzo Fernández', 'Benfica', 'Argentina', 21, 24, 'mediocampista', 'https://digitalhub.fifa.com/transform/15281e95-c206-4287-a572-c52d523e188c/1442743507?io=transform:fill,width:792,height:900', '2023-11-22 03:39:24', '2023-11-22 03:39:24'),
(85, 'Alexis Mac Alister', 'Brighton & Hove Albion', 'Argentina', 24, 20, 'mediocampista', 'https://digitalhub.fifa.com/transform/587f8ff4-72a1-4499-bf71-c38bbc87c9ec/1442742544?io=transform:fill,width:792,height:900', '2023-11-22 03:39:24', '2023-11-22 03:39:24'),
(86, 'Lionel Messi', 'PSG', 'Argentina', 35, 10, 'delantero', 'https://digitalhub.fifa.com/transform/40e6d6b5-9742-4123-8fb8-d69662c3b24a/1442770580?io=transform:fill,width:792,height:900', '2023-11-22 03:39:24', '2023-11-22 03:39:24'),
(87, 'Julián Álvarez', 'Manchester City', 'Argentina', 22, 9, 'delantero', 'https://digitalhub.fifa.com/transform/86f9d09d-336e-49e9-868f-78e8426d6bfb/1442743531?io=transform:fill,width:792,height:900', '2023-11-22 03:39:24', '2023-11-22 03:39:24'),
(88, 'Ángel Di María', 'Juventus FC', 'Argentina', 34, 11, 'delantero', 'https://digitalhub.fifa.com/transform/1ced2af1-6b06-4896-ba4b-111c9de737e9/1442742357?io=transform:fill,width:792,height:900', '2023-11-22 03:39:24', '2023-11-22 03:39:24'),
(89, 'Unai Simón', 'Athletic Club', 'España', 25, 23, 'portero', 'https://digitalhub.fifa.com/transform/3996caf6-8de6-4cc9-b320-43269c6a8b68/1442550448?io=transform:fill,width:792,height:900', '2023-11-22 03:39:24', '2023-11-22 03:39:24'),
(90, 'Rodri Hernández', 'Manchester City', 'España', 26, 16, 'defensa', 'https://digitalhub.fifa.com/transform/5e614c86-4c65-4d3a-b211-7ca38710187c/1442551426?io=transform:fill,width:792,height:900', '2023-11-22 03:39:24', '2023-11-22 03:39:24'),
(91, 'Aymeric Laporte', 'Manchester City', 'España', 28, 24, 'defensa', 'https://digitalhub.fifa.com/transform/2b44baf6-3e19-42b0-b982-427f88c56334/1442551021?io=transform:fill,width:792,height:900', '2023-11-22 03:39:24', '2023-11-22 03:39:24'),
(92, 'Jordi Alba', 'FC Barcelona', 'España', 33, 18, 'defensa', 'https://digitalhub.fifa.com/transform/bef08b26-042b-4a7c-a517-f29e1c937c39/1442550649?io=transform:fill,width:792,height:900', '2023-11-22 03:39:24', '2023-11-22 03:39:24'),
(93, 'Dani Carvajal', 'Real Madrid', 'España', 30, 20, 'defensa', 'https://digitalhub.fifa.com/transform/e4f534e2-d24e-4d69-aae7-970fe7bcbf54/1442550925?io=transform:fill,width:792,height:900', '2023-11-22 03:39:24', '2023-11-22 03:39:24'),
(94, 'Gavi', 'FC Barcelona', 'España', 18, 9, 'mediocampista', 'https://digitalhub.fifa.com/transform/3accf767-b78f-4bf4-87f8-25ab808366c4/1442551912?io=transform:fill,width:792,height:900', '2023-11-22 03:39:24', '2023-11-22 03:39:24'),
(95, 'Sergio Busquets', 'FC Barcelona', 'España', 34, 5, 'mediocampista', 'https://digitalhub.fifa.com/transform/2dec5173-d2fd-4a06-8715-398332b2cc44/1442551723?io=transform:fill,width:792,height:900', '2023-11-22 03:39:24', '2023-11-22 03:39:24'),
(96, 'Pedri', 'FC Barcelona', 'España', 20, 26, 'mediocampista', 'https://digitalhub.fifa.com/transform/103c93e3-a3d4-4022-9bde-1285f4677ba8/1442551614?io=transform:fill,width:792,height:900', '2023-11-22 03:39:24', '2023-11-22 03:39:24'),
(97, 'Ferran Torres', 'FC Barcelona', 'España', 22, 11, 'delantero', 'https://digitalhub.fifa.com/transform/405abbab-5e5d-4277-905f-6bbdf618bad5/1442551768?io=transform:fill,width:792,height:900', '2023-11-22 03:39:24', '2023-11-22 03:39:24'),
(98, 'Marco Asensio', 'Real Madrid', 'España', 26, 10, 'delantero', 'https://digitalhub.fifa.com/transform/a28c5f8b-ef3b-4fb0-9cd3-a59c0c10c8f9/1442551256?io=transform:fill,width:792,height:900', '2023-11-22 03:39:24', '2023-11-22 03:39:24'),
(99, 'Dani Olmo', 'RB Leipzig', 'España', 24, 21, 'delantero', 'https://digitalhub.fifa.com/transform/fe13d81b-073b-4657-a210-de2b48e2b449/1442551204?io=transform:fill,width:792,height:900', '2023-11-22 03:39:24', '2023-11-22 03:39:24'),
(100, 'Álvaro Morata', 'Atlético de Madrid', 'España', 30, 7, 'delantero', 'https://digitalhub.fifa.com/transform/a6d1d8b4-a559-4c7f-aed3-095126b60e1c/1442552095?io=transform:fill,width:792,height:900', '2023-11-22 03:39:24', '2023-11-22 03:39:24'),
(101, 'Hugo Lloris', 'Tottenham Hotspur FC', 'Francia', 36, 1, 'portero', 'https://digitalhub.fifa.com/transform/14a6f35e-6853-4bbc-bcc7-eb7b4774f226/1442232958?io=transform:fill,width:792,height:900', '2023-11-22 03:45:12', '2023-11-22 03:45:12'),
(102, 'Theo Hernandez', 'AC Milan', 'Francia', 25, 22, 'defensa', 'https://digitalhub.fifa.com/transform/664b630b-7453-4444-b65f-c85f32b7bba7/1442233207?io=transform:fill,width:792,height:900', '2023-11-22 03:45:12', '2023-11-22 03:45:12'),
(103, 'Dayot Upamecano', 'Bayern Munich', 'Francia', 24, 18, 'defensa', 'https://digitalhub.fifa.com/transform/a660efd2-8a90-436b-a829-b8393cd02a3a/1442233458?io=transform:fill,width:792,height:900', '2023-11-22 03:45:12', '2023-11-22 03:45:12'),
(104, 'Raphael Varane', 'Manchester United', 'Francia', 29, 4, 'defensa', 'https://digitalhub.fifa.com/transform/04752da5-c26f-40e0-b5fc-ba6af9adca95/1442234000?io=transform:fill,width:792,height:900', '2023-11-22 03:45:12', '2023-11-22 03:45:12'),
(105, 'Jules Kounde', 'FC Barcelona', 'Francia', 24, 25, 'defensa', 'https://digitalhub.fifa.com/transform/0338d400-db7e-401a-ac2d-ff4dfecd6594/1442233625?io=transform:fill,width:792,height:900', '2023-11-22 03:45:12', '2023-11-22 03:45:12'),
(106, 'Adrien Rabiot', 'Juventus FC', 'Francia', 27, 14, 'mediocampista', 'https://digitalhub.fifa.com/transform/c6bd7ccf-a7ab-45d1-9fbd-15d123128fe8/1442233546?io=transform:fill,width:792,height:900', '2023-11-22 03:45:12', '2023-11-22 03:45:12'),
(107, 'Aurelien Tchouameni', 'Real Madrid', 'Francia', 22, 8, 'mediocampista', 'https://digitalhub.fifa.com/transform/a0226b32-d6c2-4d05-86a0-9436f1b8f680/1442233818?io=transform:fill,width:792,height:900', '2023-11-22 03:45:12', '2023-11-22 03:45:12'),
(108, 'Ousmane Dembele', 'FC Barcelona', 'Francia', 25, 11, 'delantero', 'https://digitalhub.fifa.com/transform/79f04110-e6f0-46b8-932c-5b2c18ebbb86/1442233954?io=transform:fill,width:792,height:900', '2023-11-22 03:45:12', '2023-11-22 03:45:12'),
(109, 'Antoine Griezmann', 'Atletico de Madrid', 'Francia', 31, 7, 'delantero', 'https://digitalhub.fifa.com/transform/9f03ff5a-aad3-433a-8e21-cb96143627ac/1442234382?io=transform:fill,width:792,height:900', '2023-11-22 03:45:12', '2023-11-22 03:45:12'),
(110, 'Kylian Mbappe', 'PSG', 'Francia', 24, 10, 'delantero', 'https://digitalhub.fifa.com/transform/702110ad-db19-4216-a36b-9a2903f3c77d/1442234453?io=transform:fill,width:792,height:900', '2023-11-22 03:45:12', '2023-11-22 03:45:12'),
(111, 'Oliver Giroud', 'AC Milan', 'Francia', 36, 9, 'delantero', 'https://digitalhub.fifa.com/transform/cefd4ce2-d728-4fdb-b03c-bcfda94cb67a/1442234094?io=transform:fill,width:792,height:900', '2023-11-22 03:45:12', '2023-11-22 03:45:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL,
  `question_desc` varchar(255) NOT NULL,
  `question_property` varchar(255) NOT NULL,
  `question_type` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `questions`
--

INSERT INTO `questions` (`question_id`, `question_desc`, `question_property`, `question_type`, `createdAt`, `updatedAt`) VALUES
(1, '¿Tú jugador tiene <<n>> años o más?', 'player_age', 1, '2023-11-22 22:31:46', '2023-11-22 22:31:46'),
(2, '¿El número de dorsal de tu jugador es par?', 'player_number', 2, '2023-11-22 22:32:41', '2023-11-22 22:32:41'),
(3, '¿Tú jugador pertenece a el club <<n>>?', 'player_club', 2, '2023-11-22 22:33:07', '2023-11-22 22:33:07'),
(4, '¿Tú jugador es <<n>>?', 'player_name', 2, '2023-11-22 22:33:21', '2023-11-22 22:33:21'),
(5, '¿Tú jugador es de <<n>>?', 'player_country', 2, '2023-11-22 22:33:38', '2023-11-22 22:33:38'),
(6, '¿Tú jugador es <<n>>?', 'player_position', 2, '2023-11-22 22:33:57', '2023-11-22 22:33:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_hits` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player_id`);

--
-- Indices de la tabla `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `players`
--
ALTER TABLE `players`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

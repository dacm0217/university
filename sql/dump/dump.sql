-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2021 a las 04:41:32
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data`
--

CREATE TABLE `data` (
  `ID` int(11) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Facultad` varchar(50) NOT NULL,
  `Salario` varchar(50) NOT NULL,
  `Fchcomienzo` varchar(50) NOT NULL,
  `Fchnacimiento` varchar(50) NOT NULL,
  `Cargo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `data`
--

INSERT INTO `data` (`ID`, `Apellido`, `Nombre`, `Facultad`, `Salario`, `Fchcomienzo`, `Fchnacimiento`, `Cargo`) VALUES
(1968, 'Burgos', 'Jeronimo', 'Administraci?n', '$ 3.200.000', '5/04/1982', '28/09/1951', 'Administrativo'),
(1674, 'Villegas', 'Estefania', 'Administraci?n', '$ 3.200.000', '25/03/1992', '17/01/1964', 'Docente'),
(1516, 'Fernandez', 'Guillermo', 'Administraci?n', '$ 4.500.000', '6/03/1985', '26/06/1963', 'Docente'),
(1330, 'Ramirez', 'Eliana', 'Administraci?n', '$ 3.200.000', '14/02/1989', '17/05/1964', 'Docente'),
(1657, 'Carmona', 'Jose', 'Administraci?n', '$ 3.200.000', '6/12/1987', '10/10/1963', 'Docente'),
(1573, 'De santis', 'Marcela', 'Administraci?n', '$ 1.500.000', '7/07/1988', '31/05/1960', 'Aux. Administrativo'),
(1658, 'Franco', 'Daniela', 'Administraci?n', '$ 3.200.000', '6/06/1988', '14/10/1963', 'Docente'),
(1078, 'Cortes', 'Rafael', 'Dise?o', '$ 4.200.000', '1/04/1986', '21/11/1962', 'Administrativo'),
(1695, 'Berrio', 'Camilo', 'Dise?o', '$ 3.200.000', '20/10/1984', '5/01/1960', 'Docente'),
(1285, 'Arias', 'Francisco', 'Dise?o', '$ 3.200.000', '27/12/1984', '22/12/1962', 'Docente'),
(1284, 'Merizalde', 'Antonio', 'Dise?o', '$ 3.200.000', '4/01/1985', '11/12/1962', 'Docente'),
(1517, 'Restrepo', 'Karen', 'Dise?o', '$ 1.500.000', '26/02/1985', '7/07/1963', 'Aux. Administrativo'),
(1674, 'Lemus', 'David', 'Dise?o', '$ 3.200.000', '8/04/1990', '12/09/1962', 'Docente'),
(1056, 'Santana', 'Javier', 'Comunicaci?n', '$ 5.600.000', '25/10/1979', '24/08/1937', 'Administrativo'),
(1977, 'Saldarriaga', 'Virginia', 'Comunicaci?n', '$ 4.200.000', '9/09/1991', '13/10/1960', 'Docente'),
(1725, 'Posada', 'Sergio', 'Comunicaci?n', '$ 5.600.000', '2/02/1978', '2/06/1954', 'Docente'),
(1675, 'Zea ', 'Jorge', 'Comunicaci?n', '$ 6.500.000', '26/10/1981', '1/09/1969', 'Docente'),
(1968, 'Diaz ', 'Mariana', 'Comunicaci?n', '$ 3.200.000', '1/01/1993', '19/05/1969', 'Docente'),
(1723, 'Giraldo', 'Esteban', 'Ingenier?a', '$ 1.350.000', '6/08/1990', '10/05/1965', 'Aux. Administrativo'),
(1076, 'Idarraga', 'Jorge', 'Ingenier?a', '$ 1.200.000', '30/07/1979', '8/09/1940', 'Aux. Administrativo'),
(1816, 'Simanca', 'Alejandro', 'Ingenier?a', '$ 1.600.000', '8/07/1990', '1/09/1969', 'Aux. Administrativo'),
(1154, 'Pulgarin', 'Angelina', 'Ingenier?a', '$ 4.100.000', '7/07/1987', '7/11/1955', 'Administrativo'),
(1294, 'Aguirre', 'Brenda', 'Ingenier?a', '$ 3.200.000', '6/09/1984', '5/09/1954', 'Docente'),
(1428, 'Tamayo', 'Gloria', 'Ingenier?a', '$ 3.200.000', '12/11/1986', '23/03/1958', 'Docente'),
(1814, 'Carmona ', 'Andrea', 'Ingenier?a', '$ 3.200.000', '4/03/1989', '17/08/1969', 'Docente'),
(1978, 'Diaz ', 'Lucero', 'Ingenier?a', '$ 3.200.000', '5/06/1980', '26/09/1967', 'Docente'),
(1531, 'Alzate', 'Angela', 'Ingenier?a', '$ 2.800.000', '11/05/1986', '19/01/1967', 'T?cnico'),
(1931, 'Arango', 'Felipe', 'Administraci?n', '$ 2.560.000', '20/06/1989', '28/05/1969', 'Administrativo'),
(1932, 'Garces', 'Elena', 'Administraci?n', '$ 2.400.000', '12/06/1989', '8/06/1949', 'Administrativo'),
(1291, 'Uribe', 'Carmen', 'Administraci?n', '$ 1.350.000', '26/12/1984', '14/04/1956', 'Aux. Administrativo'),
(1530, 'Ospina', 'Daniel', 'Administraci?n', '$ 1.460.000', '20/01/1991', '15/01/1967', 'Docente'),
(1152, 'Pel?ez', 'Alberto', 'Administraci?n', '$ 1.350.000', '21/01/1990', '23/10/1965', 'Docente'),
(1079, 'Perez', 'Elena', 'Administraci?n', '$ 1.350.000', '24/03/1986', '2/12/1962', 'Docente'),
(1676, 'Carmona', 'Sebastian', 'Administraci?n', '$ 1.500.000', '18/10/1981', '12/09/1969', 'Docente'),
(1290, 'Cifuentes', 'Oscar', 'Administraci?n', '$ 1.350.000', '3/01/1985', '3/04/1966', 'Docente'),
(1961, 'Jaramillo', 'Santiago', 'Administraci?n', '$ 1.350.000', '5/11/1986', '2/04/1965', 'Docente'),
(1675, 'Melano', 'Luis', 'Administraci?n', '$ 1.350.000', '17/03/1992', '28/01/1964', 'Docente'),
(1368, 'Mendez', 'Tammy', 'Administraci?n', '$ 1.280.000', '11/03/1983', '8/05/1959', 'Docente'),
(1153, 'Ramirez', 'Tomas', 'Administraci?n', '$ 1.350.000', '13/01/1990', '3/11/1965', 'T?cnico'),
(1960, 'Girando', 'Felipe', 'Administraci?n', '$ 1.350.000', '13/11/1986', '22/03/1965', 'Aux. Administrativo'),
(1908, 'Diez', 'Patricia', 'Administraci?n', '$ 5.600.000', '15/05/1984', '21/09/1958', 'Administrativo'),
(1011, 'Sierra', 'Luisa', 'Administraci?n', '$ 2.700.000', '3/02/1986', '21/11/1964', 'Docente'),
(1359, 'Vallejo', 'Sara', 'Dise?o', '$ 2.300.000', '9/08/1990', '7/06/1960', 'Docente'),
(1724, 'Guerrero', 'Alexandra', 'Dise?o', '$ 2.300.000', '10/02/1978', '22/05/1954', 'Docente'),
(1923, 'Guerra', 'Lisa', 'Dise?o', '$ 2.300.000', '27/11/1986', '7/03/1961', 'Docente'),
(1794, 'Rodr?guez ', 'Ana Maria', 'Dise?o', '$ 2.300.000', '18/12/1984', '18/10/1968', 'Docente'),
(1558, 'Marulanda', 'Sofia', 'Dise?o', '$ 2.300.000', '16/10/1982', '26/09/1965', 'Docente'),
(1949, 'Palacio', 'Paula', 'Dise?o', '$ 4.100.000', '12/10/1981', '26/02/1951', 'Docente'),
(1311, 'Bermudez', 'Jesus', 'Dise?o', '$ 3.800.000', '26/09/1986', '13/11/1964', 'Docente'),
(1906, 'Toledo', 'Roberta', 'Dise?o', '$ 1.350.000', '28/09/1989', '2/09/1960', 'Aux. Administrativo'),
(1656, 'Arango', 'Tatiana', 'Dise?o', '$ 2.500.000', '14/12/1987', '29/09/1963', 'Administrativo'),
(1907, 'Acevedo', 'Melina', 'Dise?o', '$ 2.600.000', '20/09/1989', '13/09/1960', 'Administrativo'),
(1724, 'Cock', 'Cristina', 'Dise?o', '$ 2.960.000', '29/07/1990', '21/05/1965', 'Administrativo'),
(1301, 'Casadiegos', 'Manuela', 'Dise?o', '$ 1.350.000', '6/08/1984', '25/06/1965', 'Aux. Administrativo'),
(1292, 'Salamanca', 'Isabel', 'Dise?o', '$ 4.350.000', '20/11/1987', '18/04/1956', 'Administrativo'),
(1167, 'Arango', 'Juan', 'Dise?o', '$ 5.600.000', '18/04/1991', '27/06/1970', 'Administrativo'),
(1950, 'Granda', 'Luisa', 'Dise?o', '$ 4.900.000', '4/10/1981', '9/03/1951', 'Docente'),
(1792, 'Arango ', 'Monica', 'Dise?o', '$ 2.000.000', '24/12/1990', '3/10/1968', 'T?cnico'),
(1977, 'Arroyave', 'Federico', 'Dise?o', '$ 1.300.000', '13/06/1980', '15/09/1967', 'T?cnico'),
(1067, 'Lemos', 'Dalia', 'Dise?o', '$ 1.100.000', '20/09/1987', '30/09/1961', 'T?cnico'),
(1976, 'Jaramillo', 'Ana', 'Ingenier?a', '$ 1.350.000', '29/04/1991', '9/10/1970', 'Aux. Administrativo'),
(1168, 'Lema', 'Maria', 'Ingenier?a', '$ 1.350.000', '10/04/1991', '8/07/1970', 'Aux. Administrativo'),
(1815, 'Caro', 'Diana', 'Ingenier?a', '$ 5.600.000', '25/02/1980', '28/08/1959', 'Administrativo'),
(1068, 'Vergara', 'Amalia', 'Ingenier?a', '$ 3.200.000', '12/09/1987', '11/10/1961', 'Docente'),
(1012, 'Duque', 'Julian', 'Ingenier?a', '$ 2.400.000', '26/01/1986', '2/12/1964', 'Docente'),
(1301, 'Mu?oz', 'Maritza', 'Ingenier?a', '$ 3.200.000', '9/01/1986', '28/09/1955', 'Docente'),
(1556, 'Pel?ez', 'Andr?s', 'Ingenier?a', '$ 3.200.000', '26/11/1981', '11/09/1965', 'Docente'),
(1933, 'Sanchez', 'Miguel', 'Ingenier?a', '$ 3.200.000', '8/01/1984', '12/06/1949', 'Docente'),
(1333, 'Cano', 'Carolina', 'Ingenier?a', '$ 3.200.000', '16/04/1990', '7/10/1965', 'Docente'),
(1510, 'Marquez', 'Jessica', 'Ingenier?a', '$ 4.800.000', '11/06/1985', '4/11/1962', 'Docente'),
(1574, 'Rico', 'Samuel', 'Ingenier?a', '$ 3.200.000', '9/02/1986', '4/06/1960', 'Docente'),
(1360, 'Mendez', 'Gustavo', 'Ingenier?a', '$ 4.000.000', '1/08/1988', '18/06/1960', 'Docente'),
(1293, 'Jimenez', 'Karina', 'Ingenier?a', '$ 1.700.000', '14/09/1984', '25/08/1954', 'T?cnico'),
(1329, 'Osorio', 'Julieth', 'Medicina', '$ 3.500.000', '22/02/1989', '6/05/1964', 'Docente'),
(1572, 'Villamizar', 'Lina', 'Medicina', '$ 3.600.000', '15/07/1988', '20/05/1960', 'Docente'),
(1300, 'Gomez', 'Carlos', 'Medicina', '$ 2.300.000', '13/12/1989', '24/09/1965', 'Administrativo'),
(1557, 'Grac?a', 'Sim?n', 'Medicina', '$ 1.390.000', '18/11/1981', '22/09/1965', 'Aux. Administrativo'),
(1169, 'Castro', 'Monica', 'Medicina', '$ 5.700.000', '13/10/1992', '12/07/1970', 'Administrativo'),
(1758, 'Uribe', 'Melisa', 'Medicina', '$ 1.900.000', '18/03/1982', '23/10/1962', 'T?cnico'),
(1310, 'Florez', 'Alejandra', 'Medicina', '$ 1.350.000', '4/10/1986', '2/11/1964', 'T?cnico'),
(1041, 'Gutierrez', 'Amalia', 'Medicina', '$ 4.900.000', '16/04/1992', '25/01/1965', 'Docente'),
(1361, 'Medina', 'Raquel', 'Medicina', '$ 2.940.000', '22/07/1988', '22/06/1960', 'Docente'),
(1793, 'Betancur', 'Gonzalo', 'Administraci?n', '$ 1.350.000', '16/12/1990', '14/10/1968', 'Docente'),
(1967, 'Betancurt', 'Santiago', 'Administraci?n', '$ 1.350.000', '9/11/1991', '15/05/1969', 'Aux. Administrativo'),
(1725, 'Marquez', 'Isabella', 'Administraci?n', '$ 5.600.000', '12/02/1978', '26/05/1955', 'Administrativo'),
(1969, 'Molina', 'Karla', 'Administraci?n', '$ 980.000', '14/04/1989', '2/10/1951', 'Aux. T?cnico'),
(1962, 'Rodriguez', 'Hilda', 'Administraci?n', '$ 2.900.000', '22/10/1987', '6/04/1945', 'Docente'),
(1967, 'Hincapie', 'Victoria', 'Administraci?n', '$ 4.600.000', '13/04/1982', '17/09/1951', 'Docente'),
(1426, 'Rojas ', 'Pablo', 'Administraci?n', '$ 5.600.000', '8/09/1977', '9/03/1968', 'Docente'),
(1509, 'Serna', 'Pamela', 'Ingenier?a', '$ 1.350.000', '19/06/1985', '24/10/1962', 'Aux. Administrativo'),
(1673, 'Zapata', 'Stepania', 'Ingenier?a', '$ 1.350.000', '16/04/1990', '1/09/1962', 'Docente'),
(1352, 'Toro', 'Manuel', 'Ingenier?a', '$ 1.980.000', '18/09/1982', '22/07/1958', 'Docente'),
(1922, 'Henao', 'Barbara', 'Ingenier?a', '$ 2.100.000', '5/12/1986', '24/02/1961', 'Docente'),
(1518, 'Vasquez', 'Leonardo', 'Ingenier?a', '$ 2.600.000', '18/06/1990', '11/07/1963', 'Docente'),
(1331, 'Castrill?n', 'Juliana', 'Ingenier?a', '$ 3.100.000', '11/05/1989', '21/05/1964', 'Docente'),
(1303, 'Lopez', 'Dinara', 'Ingenier?a', '$ 5.600.000', '3/03/1988', '10/07/1955', 'Administrativo'),
(1302, 'Mota', 'Elisa', 'Ingenier?a', '$ 3.800.000', '29/07/1984', '6/07/1955', 'Docente'),
(1334, 'Perez', 'Alicia', 'Ingenier?a', '$ 1.350.000', '8/04/1990', '18/10/1965', 'Aux. Administrativo'),
(1975, 'Posada', 'Carlos', 'Derecho', '$ 3.200.000', '7/05/1991', '28/09/1970', 'Docente'),
(1759, 'Arango', 'Mauricio', 'Derecho', '$ 4.700.000', '10/03/1982', '3/11/1962', 'Docente'),
(1055, 'Hoyos', 'Adriana', 'Derecho', '$ 3.200.000', '8/04/1991', '20/08/1967', 'Docente'),
(1054, 'Suarez', 'Miguel', 'Derecho', '$ 4.100.000', '16/04/1991', '9/08/1967', 'Docente investigador'),
(1075, 'Aristizabal', 'Natalia', 'Derecho', '$ 3.200.000', '7/08/1992', '28/08/1969', 'Docente investigador'),
(1966, 'Dominguez ', 'Camila', 'Derecho', '$ 3.900.000', '17/11/1991', '4/05/1969', 'Docente investigador'),
(1354, 'Ruiz', 'Susana', 'Derecho', '$ 3.200.000', '6/05/1986', '6/08/1948', 'Administrativo'),
(1696, 'Higuita', 'Cathy', 'Derecho', '$ 3.200.000', '12/10/1984', '16/01/1940', 'Docente'),
(1299, 'Osorio', 'Catalina', 'Derecho', '$ 3.200.000', '21/12/1989', '13/09/1965', 'Docente'),
(1529, 'Gomez', 'Mariana', 'Publicidad', '$ 3.200.000', '28/01/1987', '4/01/1967', 'Docente'),
(1080, 'Bustos', 'Jacobo', 'Publicidad', '$ 3.700.000', '29/10/1988', '6/12/1952', 'Docente investigador'),
(1353, 'Rodas', 'Gabriel', 'Publicidad', '$ 3.600.000', '10/09/1982', '2/08/1958', 'Docente investigador'),
(1369, 'Cano', 'Sandra', 'Publicidad', '$ 4.200.000', '3/03/1983', '19/05/1959', 'Administrativo'),
(1370, 'Diaz ', 'Evelyn', 'Publicidad', '$ 3.600.000', '27/11/1987', '23/05/1959', 'Docente investigador'),
(1677, 'Hernandez ', 'Juan', 'Publicidad', '$ 3.700.000', '6/11/1987', '16/09/1969', 'Docente investigador'),
(1427, 'Jaramillo', 'David', 'Publicidad', '$ 3.400.000', '31/08/1977', '19/03/1958', 'Docente investigador');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

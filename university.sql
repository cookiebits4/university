-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: 127.0.0.1
-- Χρόνος δημιουργίας: 05 Ιουν 2024 στις 20:19:04
-- Έκδοση διακομιστή: 10.4.32-MariaDB
-- Έκδοση PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `university`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `year_of_enrollment` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `year_of_enrollment`) VALUES
(93, '﻿Νίκος', 'Παπαδόπουλος', 'nikos.papadopoulos@gmail.com', '2023-2024'),
(94, 'Μαρία', 'Ιωάννου', 'maria.ioannou@gmail.com', '2023-2024'),
(95, 'Γιώργος', 'Κωνσταντίνου', 'george.konstantinou@gmail.com', '2023-2024'),
(96, 'Ελένη', 'Καραγιάννη', 'eleni.karagianni@gmail.com', '2023-2024'),
(97, 'Πέτρος', 'Αναστασίου', 'petros.anastasiou@gmail.com', '2023-2024'),
(98, 'Άννα', 'Παπακωνσταντίνου', 'anna.papakonstantinou@gmail.com', '2023-2024'),
(99, 'Δημήτρης', 'Γεωργίου', 'dimitris.georgiou@gmail.com', '2023-2024'),
(100, 'Κατερίνα', 'Αλεξάνδρου', 'katerina.alexandrou@gmail.com', '2023-2024'),
(101, 'Σταύρος', 'Νικολάου', 'stavros.nikolaou@gmail.com', '2023-2024'),
(102, 'Σοφία', 'Χατζηγιάννη', 'sofia.hatzigianni@gmail.com', '2023-2024'),
(103, '﻿Νίκος', 'Παπαδόπουλος', 'nikos.papadopoulos@gmail.com', '2023-2024'),
(104, 'Μαρία', 'Ιωάννου', 'maria.ioannou@gmail.com', '2023-2024'),
(105, 'Γιώργος', 'Κωνσταντίνου', 'george.konstantinou@gmail.com', '2023-2024'),
(106, 'Ελένη', 'Καραγιάννη', 'eleni.karagianni@gmail.com', '2023-2024'),
(107, 'Πέτρος', 'Αναστασίου', 'petros.anastasiou@gmail.com', '2023-2024'),
(108, 'Άννα', 'Παπακωνσταντίνου', 'anna.papakonstantinou@gmail.com', '2023-2024'),
(109, 'Δημήτρης', 'Γεωργίου', 'dimitris.georgiou@gmail.com', '2023-2024'),
(110, 'Κατερίνα', 'Αλεξάνδρου', 'katerina.alexandrou@gmail.com', '2023-2024'),
(111, 'Σταύρος', 'Νικολάου', 'stavros.nikolaou@gmail.com', '2023-2024'),
(112, 'Σοφία', 'Χατζηγιάννη', 'sofia.hatzigianni@gmail.com', '2023-2024'),
(113, '﻿Νίκος', 'Παπαδόπουλος', 'nikos.papadopoulos@gmail.com', '2023-2024'),
(114, 'Μαρία', 'Ιωάννου', 'maria.ioannou@gmail.com', '2023-2024'),
(115, 'Γιώργος', 'Κωνσταντίνου', 'george.konstantinou@gmail.com', '2023-2024'),
(116, 'Ελένη', 'Καραγιάννη', 'eleni.karagianni@gmail.com', '2023-2024'),
(117, 'Πέτρος', 'Αναστασίου', 'petros.anastasiou@gmail.com', '2023-2024'),
(118, 'Άννα', 'Παπακωνσταντίνου', 'anna.papakonstantinou@gmail.com', '2023-2024'),
(119, 'Δημήτρης', 'Γεωργίου', 'dimitris.georgiou@gmail.com', '2023-2024'),
(120, 'Κατερίνα', 'Αλεξάνδρου', 'katerina.alexandrou@gmail.com', '2023-2024'),
(121, 'Σταύρος', 'Νικολάου', 'stavros.nikolaou@gmail.com', '2023-2024'),
(122, 'Σοφία', 'Χατζηγιάννη', 'sofia.hatzigianni@gmail.com', '2023-2024'),
(123, '﻿Νίκος', 'Παπαδόπουλος', 'nikos.papadopoulos@gmail.com', '2023-2024'),
(124, 'Μαρία', 'Ιωάννου', 'maria.ioannou@gmail.com', '2023-2024'),
(125, 'Γιώργος', 'Κωνσταντίνου', 'george.konstantinou@gmail.com', '2023-2024'),
(126, 'Ελένη', 'Καραγιάννη', 'eleni.karagianni@gmail.com', '2023-2024'),
(127, 'Πέτρος', 'Αναστασίου', 'petros.anastasiou@gmail.com', '2023-2024'),
(128, 'Άννα', 'Παπακωνσταντίνου', 'anna.papakonstantinou@gmail.com', '2023-2024'),
(129, 'Δημήτρης', 'Γεωργίου', 'dimitris.georgiou@gmail.com', '2023-2024'),
(130, 'Κατερίνα', 'Αλεξάνδρου', 'katerina.alexandrou@gmail.com', '2023-2024'),
(131, 'Σταύρος', 'Νικολάου', 'stavros.nikolaou@gmail.com', '2023-2024'),
(132, 'Σοφία', 'Χατζηγιάννη', 'sofia.hatzigianni@gmail.com', '2023-2024');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`, `id_role`) VALUES
(1, 'Admin', 'Admin', 'admin@gmail.com', '$2y$10$.Vd8W56RVtOE.EI2KcfIjuXZ/TTnwEOT75.VCs8O9T7YFa65QyuMG', 1);

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT για πίνακα `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

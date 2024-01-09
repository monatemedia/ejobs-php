-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 08, 2024 at 10:29 PM
-- Server version: 5.7.24
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ejobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `salary` varchar(45) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `requirements` longtext,
  `benefits` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `user_id`, `title`, `description`, `salary`, `tags`, `company`, `address`, `city`, `state`, `phone`, `email`, `requirements`, `benefits`, `created_at`) VALUES
(1, 1, 'Software Engineer', 'We are seeking a skilled software engineer to develop high-quality software solutions', '90000', 'development, coding, java, python', 'Tech Solutions Inc.', '123 Main St', 'Albany', 'NY', '348-334-3949', 'info@techsolutions.com', 'Bachelors degree in Computer Science or related field, 3+ years of software development experience', 'Healthcare, 401(k) matching, flexible work hours', '2024-01-08 20:18:46'),
(2, 2, 'Marketing Specialist', 'We are looking for a Marketing Specialist to create and manage marketing campaigns', '70000', 'marketing, advertising', 'Marketing Pros', '456 Market St', 'San Francisco', 'CA', '454-344-3344', 'info@marketingpros.com', 'Bachelors degree in Marketing or related field, experience in digital marketing', 'Health and dental insurance, paid time off, remote work options', '2024-01-08 20:18:46'),
(3, 3, 'Web Developer', 'Join our team as a Web Developer and create amazing web applications', '85000', 'web development, programming', 'WebTech Solutions', '789 Web Ave', 'Chicago', 'IL', '456-876-5432', 'info@webtechsolutions.com', 'Bachelors degree in Computer Science or related field, proficiency in HTML, CSS, JavaScript', 'Competitive salary, professional development opportunities, friendly work environment', '2024-01-08 20:32:30'),
(4, 1, 'Data Analyst', 'We are hiring a Data Analyst to analyze and interpret data for insights', '75000', 'data analysis, statistics', 'Data Insights LLC', '101 Data St', 'Chicago', 'IL', '444-555-5555', 'info@datainsights.com', 'Bachelors degree in Data Science or related field, strong analytical skills', 'Health benefits, remote work options, casual dress code', '2024-01-08 20:32:30'),
(5, 2, 'Graphic Designer', 'Join our creative team as a Graphic Designer and bring ideas to life', '70000', 'graphic design, creative', 'CreativeWorks Inc.', '234 Design Blvd', 'Albany', 'NY', '499-321-9876', 'info@creativeworks.com', 'Bachelors degree in Graphic Design or related field, proficiency in Adobe Creative Suite', 'Flexible work hours, creative work environment, opportunities for growth', '2024-01-08 20:36:47'),
(6, 1, 'Data Scientist', 'We\\\'re looking for a Data Scientist to analyze complex data and generate insights', '100000', 'data science, machine learning', 'DataGenius Corp', '567 Data Drive', 'Boston', 'MA', '684-789-1234', 'info@datagenius.com', 'Masters or Ph.D. in Data Science or related field, experience with machine learning algorithms', 'Competitive salary, remote work options, professional development', '2024-01-08 20:36:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `city`, `state`, `created_at`) VALUES
(1, 'John', 'user1@gmail.com', '123456', 'Cape Town', 'Western Cape', '2024-01-08 20:08:06'),
(2, 'Jane Doe', 'user2@gmail.com', '123456', 'Johannesburg', 'Gauteng', '2024-01-08 20:09:29'),
(3, 'Makanya Duncan', 'user3@gmail.com', '123456', 'Richards Bay', 'Eastern Cape', '2024-01-08 20:10:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_listings_users` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `listings`
--
ALTER TABLE `listings`
  ADD CONSTRAINT `fk_listings_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

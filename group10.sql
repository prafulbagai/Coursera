-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 11, 2014 at 11:31 PM
-- Server version: 5.5.34-0ubuntu0.13.04.1
-- PHP Version: 5.4.9-4ubuntu2.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `group10`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add migration history', 7, 'add_migrationhistory'),
(20, 'Can change migration history', 7, 'change_migrationhistory'),
(21, 'Can delete migration history', 7, 'delete_migrationhistory'),
(22, 'Can add category', 8, 'add_category'),
(23, 'Can change category', 8, 'change_category'),
(24, 'Can delete category', 8, 'delete_category'),
(25, 'Can add course', 9, 'add_course'),
(26, 'Can change course', 9, 'change_course'),
(27, 'Can delete course', 9, 'delete_course'),
(28, 'Can add course instructor mapping', 10, 'add_courseinstructormapping'),
(29, 'Can change course instructor mapping', 10, 'change_courseinstructormapping'),
(30, 'Can delete course instructor mapping', 10, 'delete_courseinstructormapping'),
(31, 'Can add course category mapping', 11, 'add_coursecategorymapping'),
(32, 'Can change course category mapping', 11, 'change_coursecategorymapping'),
(33, 'Can delete course category mapping', 11, 'delete_coursecategorymapping'),
(34, 'Can add instructor', 12, 'add_instructor'),
(35, 'Can change instructor', 12, 'change_instructor'),
(36, 'Can delete instructor', 12, 'delete_instructor'),
(37, 'Can add university', 13, 'add_university'),
(38, 'Can change university', 13, 'change_university'),
(39, 'Can delete university', 13, 'delete_university'),
(40, 'Can add course session mapping', 14, 'add_coursesessionmapping'),
(41, 'Can change course session mapping', 14, 'change_coursesessionmapping'),
(42, 'Can delete course session mapping', 14, 'delete_coursesessionmapping');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$12000$yj4KzJckZEdn$fFrLirqDHQLmQwruEuD4a7BfmaijkNgEUaix6wNIVQY=', '2014-12-08 18:35:27', 1, 'praful', '', '', '', 1, 1, '2014-12-08 18:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `courses_category`
--

CREATE TABLE IF NOT EXISTS `courses_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `short_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `short_name` (`short_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `courses_category`
--

INSERT INTO `courses_category` (`id`, `name`, `short_name`) VALUES
(1, 'Medicine', 'medicine'),
(2, 'Computer Science: Theory', 'cs-theory'),
(3, 'Economics & Finance', 'economics'),
(4, 'Information, Tech & Design', 'infotech'),
(6, 'Mathematics', 'math'),
(7, 'Humanities', 'humanities'),
(8, 'Health & Society', 'health'),
(9, 'Physical & Earth Sciences', 'physical'),
(10, 'Biology & Life Sciences', 'biology'),
(11, 'Computer Science: Systems & Security', 'cs-systems');

-- --------------------------------------------------------

--
-- Table structure for table `courses_course`
--

CREATE TABLE IF NOT EXISTS `courses_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `short_name` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `about` longtext NOT NULL,
  `format` longtext NOT NULL,
  `syllabus` longtext NOT NULL,
  `faq` longtext NOT NULL,
  `recommended_background` longtext NOT NULL,
  `estimated_class_workload` longtext NOT NULL,
  `preview_link` varchar(255) NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `certificate_description` longtext NOT NULL,
  `certificates_ready` varchar(255) NOT NULL,
  `eligible_for_certificates` varchar(255) NOT NULL,
  `grading_policy_normal` varchar(255) NOT NULL,
  `home_link` varchar(255) NOT NULL,
  `duration_string` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `university_id` int(11) NOT NULL,
  `short_description` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_course_b4775056` (`university_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `courses_course`
--

INSERT INTO `courses_course` (`id`, `name`, `short_name`, `language`, `about`, `format`, `syllabus`, `faq`, `recommended_background`, `estimated_class_workload`, `preview_link`, `image_link`, `certificate_description`, `certificates_ready`, `eligible_for_certificates`, `grading_policy_normal`, `home_link`, `duration_string`, `start_date`, `end_date`, `university_id`, `short_description`) VALUES
(1, 'Computational Data Analysis', 'compdata', 'English', 'In this course you will learn how to program in R and how to use R for\neffective data analysis. You will learn how to install and configure software\nnecessary for a statistical programming environment, discuss generic programming\nlanguage concepts as they are implemented in a high-level statistical language.\nThe course covers practical issues in statistical computing which includes\nprogramming in R, reading data into R, creating informative data graphics,\naccessing R packages, creating R packages with documentation, writing R\nfunctions, debugging, and organizing and commenting R code. Topics in statistical\ndata analysis and optimization will provide working examples.\n', 'The course will consist of lecture videos broken into 8-10 minute segments. There will be four graded quizzes and four programming assignments that will be graded. There will be approximately 3 hours of video content per week.', '<p>A student who has completed this course is able to:</p><ul><li>Read formatted data into R</li><li>Subset, remove missing values from, and clean tabular data</li><li>Write custom functions in R to implement new functionality and making use of control structures such as loops and conditionals</li><li>Use the R code debugger to identify problems in R functions</li><li>Make a scatterplot/boxplot/histogram/image plot and modify a plot with custom annotations</li><li>Define a new data class in R and write methods for that class</li></ul>', '<ul>  <li><strong>What resources will I need for this class?</strong>        <p>A computer is needed on which the R software environment can be installed\\n            (recent Mac, Windows, or Linux computers are sufficient).</p>    </li>   <li><strong>Is there a textbook for the class?</strong>        <p>There is no required textbook for the class and all materials will be         provided. There are, however, a few suggested readings.</p>   </li></ul>', 'Some familiarity with programming concepts will be useful as well basic knowledge of statistical reasoning. At Johns Hopkins, this course is taken  by first-year graduate students in Biostatistics.', '3-5 hours/week', 'https://d1a2y8pfnfh44t.cloudfront.net/660ccce0851111e3a36ccd7596303339/full/540p/index.mp4', 'DataScientistsToolbox.jpg', 'In this course students learn programming in R, reading data into R, creating data graphics, accessing and installing R packages, writing R functions, debugging, and organizing and commenting R code. ', '', 'True', 'The final grade was based on four quizzes and two programming assignments. To receive a Statement of Accomplishments, students must obtain at least 70% of the maximum possible score.', 'https://class.coursera.org/compdata-2012-001/', '4 weeks', '2014-12-09', '2014-12-31', 1, 'Get an overview of the data, questions, and tools that data analysts and data scientists work with. This is the first course in the Johns Hopkins Data Science Specialization.'),
(2, 'R Programming', 'rprog', 'English', 'In this course you will learn how to program in R and how to use R for effective data analysis.&nbsp;You will learn how to install and configure software necessary for a statistical programming environment and describe generic programming language concepts as they are implemented in a high-level statistical language. The course covers practical issues in statistical computing which includes programming in R, reading data into R, accessing R packages, writing R functions, debugging, profiling R code, and organizing and commenting R code. Topics in statistical data analysis will provide working examples.<br><br><strong>Please note:</strong>&nbsp;we are offering a Chinese version of this course starting December 1st, running in parallel with the English version.', 'There will be weekly lecture videos, quizzes, and programming assignments.&nbsp;<div><br><div>As part of this class you will be required to set up a <a href="https://github.com" target="_blank">GitHub account</a>. GitHub is a tool for collaborative code sharing and editing. During this course and other courses in the Specialization you will be submitting links to files you publicly place in your GitHub account as part of peer evaluation. If you are concerned about preserving your anonymity you will need to set up an anonymous GitHub account and be careful not to include any information you do not want made available to peer evaluators.</div></div><div><br></div>'',\n    u''course_syllabus'': u''<p>The course will cover the following material each week:</p>\\n\\n<ul><li><p>Week 1: Overview of R, R data types and objects, reading and writing data</p></li><li><p>Week 2: Control structures, functions, scoping rules, dates and times</p></li><li><p>Week 3: Loop functions, debugging tools</p></li><li><p>Week 4: Simulation, code profiling</p></li></ul>', '<p>The course will cover the following material each week:</p>\\n\\n<ul><li><p>Week 1: Overview of R, R data types and objects, reading and writing data</p></li><li><p>Week 2: Control structures, functions, scoping rules, dates and times</p></li><li><p>Week 3: Loop functions, debugging tools</p></li><li><p>Week 4: Simulation, code profiling</p></li></ul>', '<strong>How do the courses in the Data Science Specialization depend on each other?</strong><br>We have created a handy&nbsp;<a href="https://d396qusza40orc.cloudfront.net/rprog/doc/JHDSS_CourseDependencies.pdf" target="_blank" title="Link: https://d396qusza40orc.cloudfront.net/rprog/doc/JHDSS_CourseDependencies.pdf">course dependency chart</a>&nbsp;to help you see how the nine courses in the specialization depend on each other.<strong><br></strong><strong><br>Will I get a Statement of Accomplishment after completing this class?</strong><br>Yes. Students who successfully complete the class will receive a Statement of Accomplishment signed by the instructor.<br><br><strong>What resources will I need for this class?</strong><br>A computer is needed on which the R software environment can be installed (recent Mac, Windows, or Linux computers are sufficient).<br><strong><br>How does this course fit into the Data Science&nbsp;Specialization?</strong><br>This is the second course in the sequence. We <strong>strongly</strong> recommend that you take <a href="https://www.coursera.org/course/datascitoolbox" target="_blank">The Data Scientist\\''s Toolbox</a> before taking R Programming.<br><br><span><em>Russian subtitles for this course are courtesy of&nbsp;</em><a href="http://www.ibs.ru/" target="_blank" title="Link: http://www.ibs.ru/"><em>IBS</em></a><em>.</em></span><br>', 'Some familiarity with programming concepts will be useful as well basic knowledge of statistical reasoning.', '3-5 hours/week', 'https://d1a2y8pfnfh44t.cloudfront.net/660ccce0851111e3a36ccd7596303339/full/540p/index.mp4', 'Rprogramming.jpg', 'This course is about programming in R and how to use R for effective data analysis. Topics include R as a programming language, reading data into R, accessing R packages, writing R functions, debugging, profiling, and organizing and commenting R code.', 'True', 'True', 'The final grade was based on 4 (45% of the final grade) quizzes and 3 programming assignments (55% of the final grade). To receive a Statement of Accomplishment, you have to obtain >= 70% of the maximum possible score.', 'https://class.coursera.org/rprog-001/', '4 weeks', '2015-01-07', '2014-12-31', 1, 'Learn how to program in R and how to use R for effective data analysis. This is the second course in the Johns Hopkins Data Science Specialization.');

-- --------------------------------------------------------

--
-- Table structure for table `courses_coursecategorymapping`
--

CREATE TABLE IF NOT EXISTS `courses_coursecategorymapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_coursecategorymapping_6f33f001` (`category_id`),
  KEY `courses_coursecategorymapping_6234103b` (`course_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `courses_coursecategorymapping`
--

INSERT INTO `courses_coursecategorymapping` (`id`, `category_id`, `course_id`) VALUES
(1, 2, 1),
(2, 4, 1),
(3, 11, 1),
(4, 1, 2),
(5, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `courses_courseinstructormapping`
--

CREATE TABLE IF NOT EXISTS `courses_courseinstructormapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_courseinstructormapping_6234103b` (`course_id`),
  KEY `courses_courseinstructormapping_fdb8591a` (`instructor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `courses_courseinstructormapping`
--

INSERT INTO `courses_courseinstructormapping` (`id`, `course_id`, `instructor_id`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 1, 4),
(4, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `courses_coursesessionmapping`
--

CREATE TABLE IF NOT EXISTS `courses_coursesessionmapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_coursesessionmapping_6234103b` (`course_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `courses_coursesessionmapping`
--

INSERT INTO `courses_coursesessionmapping` (`id`, `start_date`, `end_date`, `course_id`) VALUES
(1, '2014-12-01', '2014-12-28', 1),
(2, '2015-01-01', '2014-12-28', 1),
(3, '2014-12-03', '2014-12-31', 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'log entry', 'admin', 'logentry'),
(2, 'permission', 'auth', 'permission'),
(3, 'group', 'auth', 'group'),
(4, 'user', 'auth', 'user'),
(5, 'content type', 'contenttypes', 'contenttype'),
(6, 'session', 'sessions', 'session'),
(7, 'migration history', 'south', 'migrationhistory'),
(8, 'category', 'courses', 'category'),
(9, 'course', 'courses', 'course'),
(10, 'course instructor mapping', 'courses', 'courseinstructormapping'),
(11, 'course category mapping', 'courses', 'coursecategorymapping'),
(12, 'instructor', 'instructors', 'instructor'),
(13, 'university', 'universities', 'university'),
(14, 'course session mapping', 'courses', 'coursesessionmapping');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('hyycfs1bmsq1f1bg5me76jyf48yxxccq', 'YTYxNWIwMmVlMTU2MzE1NGQ0MDhiZjgyY2U5NzQzYmU0NmM1ODA5ODp7fQ==', '2014-12-25 13:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `instructors_instructor`
--

CREATE TABLE IF NOT EXISTS `instructors_instructor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `university_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `instructors_instructor_b4775056` (`university_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `instructors_instructor`
--

INSERT INTO `instructors_instructor` (`id`, `first_name`, `last_name`, `middle_name`, `details`, `university_id`) VALUES
(1, 'Daphne', 'Koller', '', 'Daphne Koller, PhD, PE, is a professor of engineering at Oakland University in Rochester, Michigan, and writer of national acclaim. Her research focuses on the complex relationship between neuroscience and social behavior. Dr. Oakley’s research has been described as “revolutionary” in the Wall Street Journal—she has published in outlets as varied as the Proceedings of the National Academy of Sciences and The New York Times. Oakley’s books have been praised by many leading researchers and writers, including Harvard’s Steven Pinker and E. O. Wilson, and National Book Award winner Joyce Carol Oates. Her forthcoming A Mind for Numbers: How to Excel at Math and Science (Even If You Flunked Algebra) (Penguin, July 31, 2014) is opening new doors on how to learn.', 1),
(3, 'Jeff', 'Leek', '', 'Jeff Leek is an Assistant Professor of Biostatistics at the Johns Hopkins Bloomberg School of Public Health and co-editor of the Simply Statistics Blog. He received his Ph.D. in Biostatistics from the University of Washington and is recognized for his contributions to genomic data analysis and statistical methods for personalized medicine. His data analyses have helped us understand the molecular mechanisms behind brain development, stem cell self-renewal, and the immune response to major blunt force trauma. His work has appeared in the top scientific and medical journals Nature, Proceedings of the National Academy of Sciences, Genome Biology, and PLoS Medicine. He created Data Analysis as a component of the year-long statistical methods core sequence for Biostatistics students at Johns Hopkins. The course has won a teaching excellence award, voted on by the students at Johns Hopkins, every year Dr. Leek has taught the course.', 1),
(4, 'Roger', 'Peng', '', 'Roger Peng is an Associate Professor of Biostatistics at the Johns Hopkins Bloomberg School of Public Health and a Co-Editor of the Simply Statistics blog. He received his Ph.D. in Statistics from the University of California, Los Angeles and is a prominent researcher in the areas of air pollution and health risk assessment and statistical methods for environmental data. He created the course Statistical Programming at Johns Hopkins as a way to introduce students to the computational tools for data analysis. Dr. Peng is also a national leader in the area of methods and standards for reproducible research and is the Reproducible Research editor for the journal Biostatistics. His research is highly interdisciplinary and his work has been published in major substantive and statistical journals, including the Journal of the American Medical Association and the Journal of the Royal Statistical Society. Dr. Peng is the author of more than a dozen software packages implementing statistical methods for environmental studies, methods for reproducible research, and data distribution tools. He has also given workshops, tutorials, and short courses in statistical computing and data analysis.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `south_migrationhistory`
--

CREATE TABLE IF NOT EXISTS `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `south_migrationhistory`
--

INSERT INTO `south_migrationhistory` (`id`, `app_name`, `migration`, `applied`) VALUES
(1, 'courses', '0001_initial', '2014-12-08 18:35:38'),
(2, 'instructors', '0001_initial', '2014-12-08 18:35:39'),
(3, 'universities', '0001_initial', '2014-12-08 18:35:39'),
(4, 'instructors', '0002_auto__chg_field_instructor_details', '2014-12-09 15:07:39'),
(5, 'courses', '0002_auto__add_coursesessionmapping__chg_field_course_end_date__chg_field_c', '2014-12-09 15:49:00'),
(6, 'courses', '0003_auto__add_field_course_short_description', '2014-12-09 18:04:02');

-- --------------------------------------------------------

--
-- Table structure for table `universities_university`
--

CREATE TABLE IF NOT EXISTS `universities_university` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `abbr_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `website_facebook` varchar(255) NOT NULL,
  `website_twitter` varchar(255) NOT NULL,
  `website_youtube` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `abbr_name` (`abbr_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `universities_university`
--

INSERT INTO `universities_university` (`id`, `name`, `abbr_name`, `description`, `location`, `website`, `website_facebook`, `website_twitter`, `website_youtube`) VALUES
(1, 'Stanford University', 'stanford', 'The Leland Stanford Junior University, commonly referred to as Stanford University or Stanford, is an American private research university located in Stanford, California on an 8,180-acre (3,310 ha) campus near Palo Alto, California, United States.', 'Palo Alto, CA, United States', 'http://www.stanford.edu/', '', '', ''),
(2, 'University of Michigan', 'michigan', 'The University of Michigan is a public research university located in Ann Arbor, Michigan in the United States.', 'Ann Arbor, MI', 'http://www.umich.edu/', 'universityofmichigan', 'umich', 'user/um'),
(3, 'The University of British Columbia', 'ubc', 'The University of British Columbia is a global centre for research and teaching.', 'The University of British Columbia, West Mall, Vancouver, BC, Canada', 'http://www.ubc.ca/', 'universityofbc', 'ubcaplaceofmind', 'user/ubc');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `courses_course`
--
ALTER TABLE `courses_course`
  ADD CONSTRAINT `university_id_refs_id_be00298c` FOREIGN KEY (`university_id`) REFERENCES `universities_university` (`id`);

--
-- Constraints for table `courses_coursecategorymapping`
--
ALTER TABLE `courses_coursecategorymapping`
  ADD CONSTRAINT `category_id_refs_id_2e8a239e` FOREIGN KEY (`category_id`) REFERENCES `courses_category` (`id`),
  ADD CONSTRAINT `course_id_refs_id_e7f4352f` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`);

--
-- Constraints for table `courses_courseinstructormapping`
--
ALTER TABLE `courses_courseinstructormapping`
  ADD CONSTRAINT `course_id_refs_id_067051cd` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  ADD CONSTRAINT `instructor_id_refs_id_4c51903e` FOREIGN KEY (`instructor_id`) REFERENCES `instructors_instructor` (`id`);

--
-- Constraints for table `courses_coursesessionmapping`
--
ALTER TABLE `courses_coursesessionmapping`
  ADD CONSTRAINT `course_id_refs_id_7d5205de` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `instructors_instructor`
--
ALTER TABLE `instructors_instructor`
  ADD CONSTRAINT `university_id_refs_id_ebdae6fb` FOREIGN KEY (`university_id`) REFERENCES `universities_university` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

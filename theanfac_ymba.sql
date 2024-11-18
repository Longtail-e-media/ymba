-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 09, 2024 at 04:10 AM
-- Server version: 10.6.19-MariaDB
-- PHP Version: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theanfac_ymba`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_articles`
--

CREATE TABLE `tbl_articles` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` mediumtext NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `linksrc` tinytext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(1) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(1) NOT NULL DEFAULT 0,
  `banner` longtext NOT NULL,
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_articles`
--

INSERT INTO `tbl_articles` (`id`, `category_id`, `slug`, `title`, `sub_title`, `content`, `linktype`, `linksrc`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `added_date`, `sortorder`, `homepage`, `banner`, `image`, `date`, `category`) VALUES
(55, 0, 'club-25', 'Club 25', 'YMBA Club 25 Members', '<table class=\"table table-hover\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">\r\n				#</th>\r\n			<th scope=\"col\">\r\n				Name</th>\r\n			<th scope=\"col\">\r\n				Post</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				1</th>\r\n			<td>\r\n				Bishwo Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				2</th>\r\n			<td>\r\n				Santa ratna Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				3</th>\r\n			<td>\r\n				Binisha Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				4</th>\r\n			<td>\r\n				Anisha Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				5</th>\r\n			<td>\r\n				Ushan Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				6</th>\r\n			<td>\r\n				Rashmeeta Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				7</th>\r\n			<td>\r\n				Tijal ratna Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				8</th>\r\n			<td>\r\n				Saru Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				9</th>\r\n			<td>\r\n				Anish Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				10</th>\r\n			<td>\r\n				Sandesh nanda Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				11</th>\r\n			<td>\r\n				Sugam nanda Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				12</th>\r\n			<td>\r\n				Ashok Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				13</th>\r\n			<td>\r\n				Rojeena Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				14</th>\r\n			<td>\r\n				Prashant Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				15</th>\r\n			<td>\r\n				Pratisha Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				16</th>\r\n			<td>\r\n				Shital Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				17</th>\r\n			<td>\r\n				Shristi Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				18</th>\r\n			<td>\r\n				Ronit Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				19</th>\r\n			<td>\r\n				Sudeep bajrahcarya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				20</th>\r\n			<td>\r\n				Supendra Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				21</th>\r\n			<td>\r\n				Sanam jyoti Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				22</th>\r\n			<td>\r\n				Satis Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				23</th>\r\n			<td>\r\n				Anup Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				24</th>\r\n			<td>\r\n				Karuna Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				25</th>\r\n			<td>\r\n				Kapil Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				26</th>\r\n			<td>\r\n				Sajiv Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				1</th>\r\n			<td>\r\n				Bishwo Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				2</th>\r\n			<td>\r\n				Santa ratna Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				3</th>\r\n			<td>\r\n				Binisha Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				4</th>\r\n			<td>\r\n				Anisha Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				5</th>\r\n			<td>\r\n				Ushan Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				6</th>\r\n			<td>\r\n				Rashmeeta Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				7</th>\r\n			<td>\r\n				Tijal ratna Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				8</th>\r\n			<td>\r\n				Saru Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				9</th>\r\n			<td>\r\n				Anish Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				10</th>\r\n			<td>\r\n				Sandesh nanda Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				11</th>\r\n			<td>\r\n				Sugam nanda Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				12</th>\r\n			<td>\r\n				Ashok Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				13</th>\r\n			<td>\r\n				Rojeena Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				14</th>\r\n			<td>\r\n				Prashant Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				15</th>\r\n			<td>\r\n				Pratisha Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				16</th>\r\n			<td>\r\n				Shital Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				17</th>\r\n			<td>\r\n				Shristi Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				18</th>\r\n			<td>\r\n				Ronit Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				19</th>\r\n			<td>\r\n				Sudeep bajrahcarya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				20</th>\r\n			<td>\r\n				Supendra Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				21</th>\r\n			<td>\r\n				Sanam jyoti Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				22</th>\r\n			<td>\r\n				Satis Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				23</th>\r\n			<td>\r\n				Anup Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				24</th>\r\n			<td>\r\n				Karuna Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				25</th>\r\n			<td>\r\n				Kapil Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				26</th>\r\n			<td>\r\n				Sajiv Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				27</th>\r\n			<td>\r\n				Sudarshan Shrestha</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				28</th>\r\n			<td>\r\n				Nikesh Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				29</th>\r\n			<td>\r\n				Umit Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				30</th>\r\n			<td>\r\n				Lakash Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				31</th>\r\n			<td>\r\n				Rikesh Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				32</th>\r\n			<td>\r\n				Reshma Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				33</th>\r\n			<td>\r\n				Rubish Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				34</th>\r\n			<td>\r\n				Robins Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				35</th>\r\n			<td>\r\n				Siddhartha Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				36</th>\r\n			<td>\r\n				Dibin Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				37</th>\r\n			<td>\r\n				Diken Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				38</th>\r\n			<td>\r\n				Swoyuj Chitrakar</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				39</th>\r\n			<td>\r\n				Sarojan Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				40</th>\r\n			<td>\r\n				Sajan Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				41</th>\r\n			<td>\r\n				Pundarika Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				42</th>\r\n			<td>\r\n				Rojina Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				43</th>\r\n			<td>\r\n				Sony Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				44</th>\r\n			<td>\r\n				Merina Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				45</th>\r\n			<td>\r\n				Shristi Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				46</th>\r\n			<td>\r\n				Anisha Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				47</th>\r\n			<td>\r\n				Rupa Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				48</th>\r\n			<td>\r\n				Pranesh Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				49</th>\r\n			<td>\r\n				Rashu Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				50</th>\r\n			<td>\r\n				Sabin Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				51</th>\r\n			<td>\r\n				Sumit Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				52</th>\r\n			<td>\r\n				Prabin Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				53</th>\r\n			<td>\r\n				Bikesh Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				54</th>\r\n			<td>\r\n				Pujan Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				55</th>\r\n			<td>\r\n				Kusum Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				56</th>\r\n			<td>\r\n				Deepen ratna Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				57</th>\r\n			<td>\r\n				Ujay Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				58</th>\r\n			<td>\r\n				Ramina Maharjan</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				59</th>\r\n			<td>\r\n				Shankar Maharjan</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				60</th>\r\n			<td>\r\n				Sona Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				61</th>\r\n			<td>\r\n				Alisha Chitrakar</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				62</th>\r\n			<td>\r\n				Ujjwal laxmi Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				63</th>\r\n			<td>\r\n				Rashik Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				64</th>\r\n			<td>\r\n				Anish Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				65</th>\r\n			<td>\r\n				Poornima bajrahcarya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				66</th>\r\n			<td>\r\n				Sabin Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				67</th>\r\n			<td>\r\n				Rojina Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				68</th>\r\n			<td>\r\n				Salesma Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				69</th>\r\n			<td>\r\n				Supriya Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				70</th>\r\n			<td>\r\n				Nikesh Maharjan</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				71</th>\r\n			<td>\r\n				Sarbada manandhar</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				72</th>\r\n			<td>\r\n				Sunny Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				73</th>\r\n			<td>\r\n				Niva Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				74</th>\r\n			<td>\r\n				Silva Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				75</th>\r\n			<td>\r\n				Prachina Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				76</th>\r\n			<td>\r\n				Ashmi Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				77</th>\r\n			<td>\r\n				Selina Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				78</th>\r\n			<td>\r\n				Rubina Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				79</th>\r\n			<td>\r\n				Binisha Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				80</th>\r\n			<td>\r\n				Migma Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				81</th>\r\n			<td>\r\n				Sumedha Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				82</th>\r\n			<td>\r\n				Sujan Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				83</th>\r\n			<td>\r\n				Manish byanjankar</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				84</th>\r\n			<td>\r\n				Anmol Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				85</th>\r\n			<td>\r\n				Sony Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				86</th>\r\n			<td>\r\n				Nikesh Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				87</th>\r\n			<td>\r\n				Minesh raj Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				88</th>\r\n			<td>\r\n				Sagun Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				89</th>\r\n			<td>\r\n				Siddhartha Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				90</th>\r\n			<td>\r\n				Rohita Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				91</th>\r\n			<td>\r\n				Achyut Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				92</th>\r\n			<td>\r\n				Niru Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				93</th>\r\n			<td>\r\n				Rojina Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				94</th>\r\n			<td>\r\n				Monica Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				95</th>\r\n			<td>\r\n				Urusha Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				96</th>\r\n			<td>\r\n				Salima Maharjan</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				97</th>\r\n			<td>\r\n				Jasmita Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				98</th>\r\n			<td>\r\n				Saroni Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				99</th>\r\n			<td>\r\n				Shreeja Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				100</th>\r\n			<td>\r\n				Ashma Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				101</th>\r\n			<td>\r\n				Raj Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				102</th>\r\n			<td>\r\n				Sunaina Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				103</th>\r\n			<td>\r\n				Sumedha Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				104</th>\r\n			<td>\r\n				Trinka Maharjan</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				105</th>\r\n			<td>\r\n				Jenie Singh</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				106</th>\r\n			<td>\r\n				Drishty Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				107</th>\r\n			<td>\r\n				Lasata Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				108</th>\r\n			<td>\r\n				Saru Khadki</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				109</th>\r\n			<td>\r\n				Sabal Khadki</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				110</th>\r\n			<td>\r\n				Sony Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				111</th>\r\n			<td>\r\n				Smarika Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				112</th>\r\n			<td>\r\n				Nikhil Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				113</th>\r\n			<td>\r\n				Salina Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				114</th>\r\n			<td>\r\n				Ayusha Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				115</th>\r\n			<td>\r\n				Ashna Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				116</th>\r\n			<td>\r\n				Raisha Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				117</th>\r\n			<td>\r\n				Roji Maharjan</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				118</th>\r\n			<td>\r\n				Aman Tuladhar</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				119</th>\r\n			<td>\r\n				Subarna Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				120</th>\r\n			<td>\r\n				Abhushan Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				121</th>\r\n			<td>\r\n				Riken Maharjan</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				122</th>\r\n			<td>\r\n				Regan Maharjan</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				123</th>\r\n			<td>\r\n				Aakriti Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				124</th>\r\n			<td>\r\n				Saurav Raj Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				125</th>\r\n			<td>\r\n				Reza Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				126</th>\r\n			<td>\r\n				Rubina Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				127</th>\r\n			<td>\r\n				Lumana Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				128</th>\r\n			<td>\r\n				Simran Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				129</th>\r\n			<td>\r\n				Aayusha Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				130</th>\r\n			<td>\r\n				Palisa Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				131</th>\r\n			<td>\r\n				Sanjeev Maharjan</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				132</th>\r\n			<td>\r\n				Rojesh Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				133</th>\r\n			<td>\r\n				Priyanka Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				134</th>\r\n			<td>\r\n				Reshna Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				135</th>\r\n			<td>\r\n				Prasila Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				136</th>\r\n			<td>\r\n				Nitisha Maharjan</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				137</th>\r\n			<td>\r\n				Anjela Baidya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				138</th>\r\n			<td>\r\n				Ruby Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				139</th>\r\n			<td>\r\n				Rojita Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				140</th>\r\n			<td>\r\n				Dinesh Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				141</th>\r\n			<td>\r\n				Ajay Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				142</th>\r\n			<td>\r\n				Wrizu Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				143</th>\r\n			<td>\r\n				Prija Maharjan</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				144</th>\r\n			<td>\r\n				Ashmita Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				145</th>\r\n			<td>\r\n				Sonila Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				146</th>\r\n			<td>\r\n				Kabindra Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				147</th>\r\n			<td>\r\n				Sis Maharjan</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				148</th>\r\n			<td>\r\n				Pradeep Raj Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				149</th>\r\n			<td>\r\n				Sunima Karmacharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				150</th>\r\n			<td>\r\n				Rejina Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				151</th>\r\n			<td>\r\n				Samita Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				152</th>\r\n			<td>\r\n				Ranjan Bir Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				153</th>\r\n			<td>\r\n				Yunish Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				154</th>\r\n			<td>\r\n				Anishma Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				155</th>\r\n			<td>\r\n				Niyush Bajracharya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				156</th>\r\n			<td>\r\n				Anushruti Shrestha</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				157</th>\r\n			<td>\r\n				Sohan Awale</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				158</th>\r\n			<td>\r\n				Ayesha Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				159</th>\r\n			<td>\r\n				Rojina Maharjan</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				160</th>\r\n			<td>\r\n				Anjana Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				161</th>\r\n			<td>\r\n				Rajina Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				162</th>\r\n			<td>\r\n				Srijju Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				163</th>\r\n			<td>\r\n				Anupa Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				164</th>\r\n			<td>\r\n				Ashmita Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				165</th>\r\n			<td>\r\n				Rohit Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				166</th>\r\n			<td>\r\n				Raja Dangol</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				167</th>\r\n			<td>\r\n				Hrishal Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				168</th>\r\n			<td>\r\n				Shamatree Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				169</th>\r\n			<td>\r\n				Prashant Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				170</th>\r\n			<td>\r\n				Anish Tandukar</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				171</th>\r\n			<td>\r\n				Jes Pratap Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				172</th>\r\n			<td>\r\n				Uma Thapa Chhetri</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				173</th>\r\n			<td>\r\n				Samanta Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				174</th>\r\n			<td>\r\n				Rashin Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				175</th>\r\n			<td>\r\n				Ma&icirc;try Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				176</th>\r\n			<td>\r\n				Megha Shilpakar</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				177</th>\r\n			<td>\r\n				Reeshav Gopal Vaidya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				178</th>\r\n			<td>\r\n				Meela Shakya</td>\r\n			<td>\r\n				Member</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n', 0, '', 1, 'Club 25', '                                                                                                                                                                                                        Club 25', '                                                                                                                                                                                                        Club 25', 0, '2021-03-23 16:24:13', 2, 0, 'a:1:{i:0;s:13:\"XKola-aaa.jpg\";}', '', '', ''),
(56, 0, 'ymba-founders', 'YMBA Founders', 'YMBA Founders', '<ol>\r\n	<li>\r\n		Y.M.B.A. FOUNDERS President &ndash; Late Pabitra Bahadur Bajracharya</li>\r\n	<li>\r\n		Vice president &ndash; Chavi Ratna Dhakhwa</li>\r\n	<li>\r\n		Secretary &ndash; Hem Bahadur Shakya</li>\r\n	<li>\r\n		Joint-Secretary &ndash; Jagat Bahadur Bajracharya</li>\r\n	<li>\r\n		Treasurer &ndash; Prem Bahadur Bajracharya</li>\r\n	<li>\r\n		Publicity Secretary &ndash; Chandra Bahadur Shakya</li>\r\n	<li>\r\n		Executive Members &ndash; Rohini Bahadur Kayastha</li>\r\n	<li>\r\n		Suchitra Man Shakya</li>\r\n	<li>\r\n		Mangal Man Shakya</li>\r\n	<li>\r\n		Keshav Lal Shrestha</li>\r\n	<li>\r\n		Tej Muni Bajracharya</li>\r\n	<li>\r\n		Chandra Shova Shakya</li>\r\n	<li>\r\n		Kesari Bajracharya</li>\r\n	<li>\r\n		Yog Ratna Shakya</li>\r\n	<li>\r\n		Tula Narshing Shakya</li>\r\n	<li>\r\n		Dhiwakar Baidhya Binaya</li>\r\n	<li>\r\n		Ratna Dhakhwa</li>\r\n</ol>\r\n', 0, '', 1, 'YMBA Founders', '                                                                                YMBA Founders', '                                                                                YMBA Founders', 0, '2023-07-11 15:02:38', 3, 0, 'a:1:{i:0;s:13:\"CC2kJ-aaa.jpg\";}', '', '', ''),
(59, 0, 'ymba-board', 'YMBA Board', 'YMBA Board', '<ol>\r\n	<li>\r\n		Mr. Rajesh Shakya (Okubahal) - President</li>\r\n	<li>\r\n		Mrs. Shova Shakya Immediate past President</li>\r\n	<li>\r\n		Miss. Arni Tara Bajracharya - 1st Vice President</li>\r\n	<li>\r\n		Mr. Suresh Bajracharya - 2nd Vice President</li>\r\n	<li>\r\n		Mr. Sanam Jyoti Shakya - General Secretary</li>\r\n	<li>\r\n		Mr. Pradip Shakya - Treasurer</li>\r\n	<li>\r\n		Mr. Sanu Bhai Shakya - Secretary</li>\r\n	<li>\r\n		Mrs. Tara Shakya - Joint Secretary</li>\r\n	<li>\r\n		Mr. Gyan Muni Shakya - Joint Treasurer</li>\r\n	<li>\r\n		Mr. Tirtha Ratna Shakya - Publicity Secretary</li>\r\n	<li>\r\n		Mr. Rajesh Shakya - Executive Member</li>\r\n	<li>\r\n		Mr. Surendra Raj Shakya - Executive Member</li>\r\n	<li>\r\n		Mr. Buddha Ratna Shakya - Executive Member</li>\r\n	<li>\r\n		Mr. Asha Ratna Shakya - Executive Member</li>\r\n	<li>\r\n		Mr. Bhai Raja Shakya - Executive Member</li>\r\n	<li>\r\n		Mr. Mahesh Man Shakya - Executive Member</li>\r\n	<li>\r\n		Mr. Mitru Raj Shakya - Executive Member</li>\r\n	<li>\r\n		Mrs. Bidhya Shakya - Executive Member</li>\r\n	<li>\r\n		Mr. Sunil Bajracharya - Nominated Executive Member</li>\r\n	<li>\r\n		Mr. Hem Shakya - Nominated Executive Member</li>\r\n</ol>\r\n', 0, '', 1, 'YMBA Board', '                                        YMBA Board                                        ', '                                        YMBA Board', 0, '2024-09-27 15:35:36', 4, 0, 'a:1:{i:0;s:13:\"X2UyR-aaa.jpg\";}', '', '', ''),
(53, 0, 'about-ymba', 'About YMBA', 'Non Profitable, National Buddhist Association', '<p style=\"text-align: justify;\">\r\n	YMBA is a non profitable, National Buddhist Association recognized by HMG Government established on 11th july, 1970 (2027 BS shrawan 17) (2514 Buddha Era) by a group of enthusiastic educated young men of Patan (Lalitpur) with the objectives to spread the teachings of Buddha, to preserve Buddhist culture, to establish peace and harmony in Nepalese Society and to enhance Buddha Dharma as a propagated by Lord Shakyamuni Gautam, the Buddha who was born in Lumbini, about 2500 years ago.</p>\r\n<p style=\"text-align: justify;\">\r\n	The Association has been the regional centre of W.F.B.Y. (World Fellowship of Buddhist Youth) since 1978. Besides, it is also affiliated to Dharmodaya Sabha, Nepal. W.F.B.Y. headquarter which has more than 26 regional centre in different countries all over the world, is situated in Bangkok, Thailand.</p>\r\n<p style=\"text-align: justify;\">\r\n	Y.M.B.A. Nepal has friendly relationship with more than 75 Buddhist associations all over the world.</p>\r\n<p style=\"text-align: justify;\">\r\n	The associations has its own monastery (Vihara) and a plot of Land donated on 15, March 1979 by devoted Buddhist family of Mr. Pancha Raj Shakya along with his five brothers. The Vihara is famous by the name of the Lok Kriti Mahavihar (Kinu Bahi) which is located in Iti tole, ward no. 19, Lalitpur.</p>\r\n<p style=\"text-align: justify;\">\r\n	It has been spreading the Buddha Dharma since its initiation through its seven different branches open at Dharan, Trisuli, hetauda, Dhading, Tansen, Banepa and Dhadhing.</p>\r\n<p style=\"text-align: justify;\">\r\n	With a view to spread the teachings of Buddha and to unite Buddhist all over the world, it has organized, with the joint endeavor of Dharmodaya Shabha, the 15th W.F.B. and 6th W.F.B.Y. World Buddhist Conference from 27th Nov to 2nd Dec 1986. This conference was a grand success. It has been participated by 500 Buddhist representatives from different parts of the world. YMBA has observed its Silver Jubilee Celebration on 29th july 1995 (2052 Shrawan 13) which was inaugurated by the then Prime Minister Mr. Man Mohan Adhikari.</p>\r\n<p style=\"text-align: justify;\">\r\n	Sub-committees will be formed to formulate various activities in order to give broad coverage for all round development of the Association. Sub committees are:-</p>\r\n<ol>\r\n	<li>\r\n		Dharma Desana and Buddha Puja</li>\r\n	<li>\r\n		Bipasana Meditation</li>\r\n	<li>\r\n		Cultural</li>\r\n	<li>\r\n		Orphans scholarship</li>\r\n	<li>\r\n		YMBA Branch and Buddhist Association Cordination</li>\r\n	<li>\r\n		School</li>\r\n	<li>\r\n		Club 25</li>\r\n	<li>\r\n		Construction and Repairs</li>\r\n	<li>\r\n		Women Affairs</li>\r\n	<li>\r\n		Golden club</li>\r\n	<li>\r\n		Food</li>\r\n</ol>\r\n', 0, '', 1, 'About YMBA', '                                                                                                                                                                YMBA, non profitable, Buddhist, Assiciation, recognized, government, enthusiastic, educate', '                                                                                                                                                                YMBA is a non profitable, National Buddhist Association recognized by HMG Government estab', 0, '2020-06-30 15:19:40', 1, 0, 'a:1:{i:0;s:13:\"HO6Sk-aaa.jpg\";}', '', '', ''),
(60, 0, 'sub-committee', 'SUB - COMMITTEE', 'SUB - COMMITTEE', '<div class=\"row\">\r\n	<div class=\"col-md-6\">\r\n		<ul>\r\n			<li>\r\n				<strong><a href=\"https://mayurstay.com/ymba/page/dharma\">Dharma Desana and Buddha Puja Sub-committee</a></strong></li>\r\n			<li>\r\n				<strong><a href=\"https://mayurstay.com/ymba/page/meditation\">Bipasana Meditation and Vojan Daan Sub-committee</a></strong></li>\r\n			<li>\r\n				<strong><a href=\"https://mayurstay.com/ymba/page/sanskritik\">Sanskritik Sub-committee</a></strong></li>\r\n			<li>\r\n				Library Sub-committee</li>\r\n			<li>\r\n				Orphans scholarship Sub-committee</li>\r\n			<li>\r\n				WFBY and International Sub-committee</li>\r\n			<li>\r\n				Branch Sub-committee</li>\r\n			<li>\r\n				School Sub-committee</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"col-md-6\">\r\n		<ul>\r\n			<li>\r\n				<strong><a href=\"https://mayurstay.com/ymba/page/ymba-club-25\">Club 25 Sub-committee</a></strong></li>\r\n			<li>\r\n				YMBA Nirman Sub-committee</li>\r\n			<li>\r\n				Women Sub-committee</li>\r\n			<li>\r\n				TV Sub-committee</li>\r\n			<li>\r\n				Golden Club Sub-committee</li>\r\n			<li>\r\n				Food Sub-committee</li>\r\n			<li>\r\n				Webpage Sub-committee</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 0, '', 1, 'SUB - COMMITTEE', '                                                                                                                                                                                                                                                SUB - COMM', '                                                                                                                                                                                                                                                SUB - COMM', 0, '2024-09-27 17:10:17', 5, 0, 'a:0:{}', '', '', ''),
(61, 0, 'dharma', 'DHARMA', 'Dharma Deshna Sub-Comittee', '<div class=\"row\">\r\n	<div class=\"col-md-6\">\r\n		<p style=\"text-align: justify;\">\r\n			From the establishment of YMBA there is a trend of Dharma Deshana (Disocurse) from the Venerables, Resource persons, Guest etc.. it is believed that many people in ancient times were attached with Buddha&rsquo;s teaching after listening to the discourse by Buddha. So YMBA is conducting every Saturday morning a discourse program from different Veneracles, Resource person, Buddhist Scholars and Guest. The cordinator of this sub-committee is Mr. Bhai Raja Shakya who is also a Board Member of YMBA.</p>\r\n		<p>\r\n			<strong>Time : 8am &ndash; 10am </strong></p>\r\n		<p>\r\n			<strong>Venue: YMBA Dhamma Hall</strong></p>\r\n	</div>\r\n	<div class=\"col-md-6\">\r\n		<p>\r\n			<img alt=\"\" src=\"/ymba/userfiles/images/buddha.jpg\" style=\"width: 100%;\" /></p>\r\n	</div>\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 0, '', 1, 'DHARMA', 'dharma, establishment, ymba, trend, disocurse, venerables, resource, ancient, attached, buddha, teaching', 'From the establishment of YMBA there is a trend of Dharma Deshana (Disocurse) from the Venerables, Resource persons, Guest etc.. it is believed that many people in ancient times were attached with Buddha’s teaching after listening to the discourse by', 0, '2024-09-27 17:19:46', 6, 0, 'a:0:{}', '', '', ''),
(62, 0, 'meditation', 'MEDITATION', 'MEDITATION', '<div class=\"row\">\r\n	<div class=\"col-md-6\">\r\n		<p style=\"text-align: justify;\">\r\n			Meditation is another important part in Buddha&rsquo;s teaching. It keeps mind cool and will be help to concentrate in any task that are being performed. Vipassanā meditation is an ancient practice taught by Buddhas, reintroduced by Ledi Sayadaw and Mogok Sayadaw and popularized by Mahasi Sayadaw, S. N. Goenka and the Vipassana movement, in which mindfulness of breathing and of thoughts, feelings and actions are being used to gain insight in the true nature of reality. Due to the popularity of Vipassanā-meditation, the mindfulness of breathing has gained further popularity in the west as mindfulness. Vipasana Meditation will be conducting every first Saturday of the month. The cordinatior of this sub-committee is Mr. Sanam Jyoti Shakya who is also a Secretary of YMBA.</p>\r\n		<p>\r\n			<strong>Time : 8am &ndash; 4pm </strong></p>\r\n		<p>\r\n			<strong>Venue: YMBA Meditation Hall</strong></p>\r\n	</div>\r\n	<div class=\"col-md-6\">\r\n		<p>\r\n			<img alt=\"\" src=\"/ymba/userfiles/images/402168887_18208844053280071_2056893363821669053_n.jpeg\" style=\"width: 100%;\" /></p>\r\n	</div>\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 0, '', 1, 'MEDITATION', 'meditation, concentrate, performed, vipassana, ancient, practicem taught, mindfulness, gain, insight, nature, popularity, mindfulness, conducting, coordinator, committee, secretary', 'Meditation is another important part in Buddha’s teaching. It keeps mind cool and will be help to concentrate in any task that are being performed. Vipassanā meditation is an ancient practice taught by Buddhas, reintroduced by Ledi Sayadaw and Mogok ', 0, '2024-09-27 17:31:56', 7, 0, 'a:0:{}', '', '', ''),
(63, 0, 'executive-members', 'Executive Members', '28th Executive Members of YMBA', '<table class=\"table table-hover\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">\r\n				#</th>\r\n			<th scope=\"col\">\r\n				Name</th>\r\n			<th scope=\"col\">\r\n				Post</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				1</th>\r\n			<td>\r\n				Mr. Asha Ratna Shakya</td>\r\n			<td>\r\n				President</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				2</th>\r\n			<td>\r\n				Mr. Rajan Shakya</td>\r\n			<td>\r\n				IPP</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				3</th>\r\n			<td>\r\n				Mr. Sanam Shakya</td>\r\n			<td>\r\n				1st Vice President</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				4</th>\r\n			<td>\r\n				Mr. Nanda Ratna Shakya (Sanu Bhai)</td>\r\n			<td>\r\n				2nd Vice President</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				5</th>\r\n			<td>\r\n				Mr. Pancha Shakya</td>\r\n			<td>\r\n				General Secretary</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				6</th>\r\n			<td>\r\n				Mr. Uttam Bajracharya</td>\r\n			<td>\r\n				Treasurer</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				7</th>\r\n			<td>\r\n				Mrs. Gyani Bajracharya</td>\r\n			<td>\r\n				Secretary</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				8</th>\r\n			<td>\r\n				Mr. Tirtha Ratna Shakya</td>\r\n			<td>\r\n				Joint Secretary</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				9</th>\r\n			<td>\r\n				Mr. Ram Prasad Shrestha</td>\r\n			<td>\r\n				Joint Treasurer</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				10</th>\r\n			<td>\r\n				Mr. Hem Ratna Bajracharya</td>\r\n			<td>\r\n				Publicity Secretary</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				11</th>\r\n			<td>\r\n				Mr. Suresh Bajracharya</td>\r\n			<td>\r\n				Executive Members</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				12</th>\r\n			<td>\r\n				Mr. Tej Bajracharya</td>\r\n			<td>\r\n				Executive Members</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				13</th>\r\n			<td>\r\n				Mrs. Bidya Shakya</td>\r\n			<td>\r\n				Executive Members</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				14</th>\r\n			<td>\r\n				Mr. Bhai Raja Shakya</td>\r\n			<td>\r\n				Executive Members</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				15</th>\r\n			<td>\r\n				Mr. Mitru Raj Shakya</td>\r\n			<td>\r\n				Executive Members</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				16</th>\r\n			<td>\r\n				Mrs. Deepa Shakya</td>\r\n			<td>\r\n				Executive Members</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				17</th>\r\n			<td>\r\n				Dr. Shailendra Shakya</td>\r\n			<td>\r\n				Executive Members</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				18</th>\r\n			<td>\r\n				Mrs. Sunitee Bajracharya</td>\r\n			<td>\r\n				Executive Members</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				19</th>\r\n			<td>\r\n				Dr. Harsha Ratna Shakya</td>\r\n			<td>\r\n				Nominated Members</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				20</th>\r\n			<td>\r\n				Mr. Sanjeev Bajracharya</td>\r\n			<td>\r\n				Nominated Members</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n', 0, '', 1, 'Executive Members', '                                        Executive Members', '                                        Executive Members', 0, '2024-09-30 12:33:57', 8, 0, 'a:1:{i:0;s:13:\"mvAWq-aaa.jpg\";}', '', '', ''),
(64, 0, 'sanskritik', 'Sanskritik', 'Sanskritik', '<p style=\"text-align: justify;\">\r\n	Sanskritik subcommittee is one of the among 18 subcommittee of YMBA. This subcommittee deals with the Buddhist songs, Vajra dances also known as Charya Dance and also gives training of cultural instruments. In Buddha&rsquo;s teaching Buddhist songs plays a vital role. The message that the venerable cannot express from long discourse can be expressed through songs and can be understandable to all. There is ocean of opportunity that any person can make a Buddhist song and they can start their career in music field. Many people in our country have started their career from vajans and then became famous for their music. The coordinator of this subcommittee is Mr. Tirtha Ratna Shakya and he is also a YMBA Board Members.There are many roles in this subcommittee that music is not produced by a single person, a group of musician are alwaya wanted.</p>\r\n<ol>\r\n	<li>\r\n		Vocals/Harmonium: Mr. Chandra Man Shakya &amp; Mr. Gyan Muni Shakya</li>\r\n	<li>\r\n		Vocals: Mr. Tirtha Ratna Shakya, Mr. Pradip Bajracharya &amp; Mr. Satish Bajracharya</li>\r\n	<li>\r\n		Tabla: Mr. Utsav Bajracharya</li>\r\n	<li>\r\n		Naal: Mr. Rikesh Shakya</li>\r\n	<li>\r\n		Flute: Mr. Sazag Shakya</li>\r\n	<li>\r\n		Violin: Mr. Sankalpa Shakya</li>\r\n	<li>\r\n		Congo: Mr. Sanu Bhai Shakya</li>\r\n</ol>\r\n', 0, '', 1, 'Sanskritik', 'sanskritik, subcommittee, YMBA, buddhist, vajra, charya dance, training, cultural, instruments, expressed, understandable, opportunity, vajans, coordinator, produced', 'Sanskritik subcommittee is one of the among 18 subcommittee of YMBA. This subcommittee deals with the Buddhist songs, Vajra dances also known as Charya Dance and also gives training of cultural instruments. In Buddha’s teaching Buddhist songs plays a', 0, '2024-09-30 14:57:55', 9, 0, 'a:0:{}', '', '', ''),
(65, 0, 'ymba-club-25', 'YMBA CLUB 25', 'YMBA CLUB 25', '<p style=\"text-align: justify;\">\r\n	YMBA CLUB 25 is the team of enthusiastic Buddhist youths of Nepal between 16 to 25 years of age. It was formed on 19th December 2006 by YMBA Nepal under the direction of WFBY (World Fellowship of Buddhist Youth) HQ situated in Thailand.</p>\r\n<p style=\"text-align: justify;\">\r\n	To formulate various activities in order to give broad coverage for all-round development of this Association, Y.M.B.A. has established YMBA Club 25 Nepal with the vision &ldquo;Buddhism for Youth, Youth for Buddhism&rdquo;.</p>\r\n<p style=\"text-align: justify;\">\r\n	The formation of the first executive committee of Club 25 was coordinated by Former President of YMBA Mr. Chandra Man Shakya. The first ever training program for YMBA Club 25 members was coordinated by Former Treasurer Mr. Puspa Ratna Barahi.</p>\r\n<p style=\"text-align: justify;\">\r\n	The recognition of YMBA CLUB 25 was guaranteed when it was launched internationally on 27th March, 2007 on the auspicious occasion of 4th International Buddhist Youth Exchange and Forum (Kathmandu/Lumbini).</p>\r\n<p style=\"text-align: justify;\">\r\n	The Executive Committee of YMBA CLUB 25 consists of 12 members having President, Immediate Past President, Vice President, Secretary, Treasurer, Joint Secretary and Joint Treasurer and rest are the executive members. The committee will be formed every year. Currently there are more than 75 members in YMBA CLUB 25. It has been conducting the general meeting every Friday. It is providing voluntary assistance in every activities of YMBA.</p>\r\n<p>\r\n	<strong>The Objectives of YMBA CLUB 25</strong></p>\r\n<ol>\r\n	<li>\r\n		To develop knowledge on Buddhism as a logical applied science.</li>\r\n	<li>\r\n		Personality and leadership development through Buddhism.</li>\r\n	<li>\r\n		To unite and strengthen youth to create a strong Buddhism.</li>\r\n	<li>\r\n		To create a platform for youth activities on career development.</li>\r\n	<li>\r\n		To support the activities forwarded by WFBY and YMBA.</li>\r\n	<li>\r\n		To develop an internal network of Buddhist youth.</li>\r\n</ol>\r\n', 0, '', 1, 'YMBA CLUB 25', 'ymba, club 25, enthusiastic, nepal, direction, weby, thailand, executive, internationally, exchange, forum', 'YMBA CLUB 25 is the team of enthusiastic Buddhist youths of Nepal between 16 to 25 years of age. It was formed on 19th December 2006 by YMBA Nepal under the direction of WFBY (World Fellowship of Buddhist Youth) HQ situated in Thailand.\r\n\r\n', 0, '2024-09-30 15:22:01', 10, 0, 'a:0:{}', '', '', ''),
(66, 0, 'club-25-executive-board', 'Club 25 Executive Board', 'Club 25 19th Executive Board', '<table class=\"table table-hover\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">\r\n				#</th>\r\n			<th scope=\"col\">\r\n				Name</th>\r\n			<th scope=\"col\">\r\n				Post</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				1</th>\r\n			<td>\r\n				Niva Raj Bajracharya</td>\r\n			<td>\r\n				President</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				2</th>\r\n			<td>\r\n				Siddhartha Shakya</td>\r\n			<td>\r\n				IPP</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				3</th>\r\n			<td>\r\n				Sugat Man Shakya</td>\r\n			<td>\r\n				Vice President</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				4</th>\r\n			<td>\r\n				Anish Shakya</td>\r\n			<td>\r\n				Secretary</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				5</th>\r\n			<td>\r\n				Jenisha Bajracharya</td>\r\n			<td>\r\n				Treasurer</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				6</th>\r\n			<td>\r\n				Shrisha Shakya</td>\r\n			<td>\r\n				Joint Secretary</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				7</th>\r\n			<td>\r\n				Bivab Raj Bajracharya</td>\r\n			<td>\r\n				Joint Treasurer</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				8</th>\r\n			<td>\r\n				Aayush Man Shakya</td>\r\n			<td>\r\n				Executive Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				12</th>\r\n			<td>\r\n				Ayushman Bajracharya</td>\r\n			<td>\r\n				Executive Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				13</th>\r\n			<td>\r\n				Palistha Shakya</td>\r\n			<td>\r\n				Executive Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				14</th>\r\n			<td>\r\n				Rujal Bajracharya</td>\r\n			<td>\r\n				Executive Member</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">\r\n				15</th>\r\n			<td>\r\n				Biraj Shakya</td>\r\n			<td>\r\n				Executive Member</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n', 0, '', 1, 'Club 25 Executive Board', '                                                                                Club 25 Executive Board', '                                                                                Club 25 Executive Board', 0, '2024-09-30 16:39:43', 11, 0, 'a:0:{}', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_article_category`
--

CREATE TABLE `tbl_article_category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `brief` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `author` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `brief` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `blog_date` date NOT NULL,
  `archive_date` date DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `image` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `thumb_upload` varchar(255) NOT NULL,
  `source` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` int(1) NOT NULL,
  `viewcount` int(11) NOT NULL DEFAULT 0,
  `meta_keywords` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `meta_description` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `added_date` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`id`, `slug`, `title`, `author`, `brief`, `content`, `blog_date`, `archive_date`, `sortorder`, `status`, `image`, `thumb_upload`, `source`, `type`, `viewcount`, `meta_keywords`, `meta_description`, `added_date`) VALUES
(1, 'interior-trends-for-this-season', 'Interior Trends for this season', 'Niva Shrestha', 'In today’s world the interior style and style in home accessories is one of the most talked about topic. ~ Niva Shrestha (Engineer at Brihat Group).', '<p style=\"text-align: justify;\">\r\n	In today&rsquo;s world the interior style and style in home accessories is one of the most talked about topic. ~ Niva Shrestha (Engineer at Brihat Group)</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	In today&rsquo;s world the interior style and style in home accessories is one of the most talked about topic. There are various trends for each seasons. With the approaching summer-spring season, here are few of the trend that can be enjoyed by everyone.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">Embellishment</span></u></span></p>\r\n<p style=\"text-align: justify;\">\r\n	One of the most loved feature of each time would be decorating your home with the use of fringing, furry, tassels and feathers on cushions, wall hangings, throws, rugs and accessories. This trend will add a wonderful handmade quality to each room.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">Geometrical Shapes</span></u></span></p>\r\n<p style=\"text-align: justify;\">\r\n	Geometric shapes have been capturing the interest of interior designers since long. The geometric print on cushions and rugs are loved by all. This season we will see more of this trend in tiles, wallpapers and art. The bold use on the wall will have striking effect. Use textures to layer the look and don&#39;t be afraid to team patterns and stripes together.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">Foliage</span></u></span></p>\r\n<p style=\"text-align: justify;\">\r\n	Green, is the new trend seen on each product these days and interior is not an exception. The use of houseplant will not only have health beneficial but the space will look merrier, happy and of course, green. Team up the lovely plant with some chairs, lights and rugs to add more interest in your normal looking rooms.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">Ombre</span></u></span></p>\r\n<p style=\"text-align: justify;\">\r\n	You have seen this style in the salon last year on many of the beautiful hairs and upcoming years will see this style in home d&eacute;cor. Most likely, this will hit from cushions, rugs to beddings to wall colors. Once the color is chosen, co-ordinate with right accessories and prints to create stylish d&eacute;cor.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">Gold</span></u></span></p>\r\n<p style=\"text-align: justify;\">\r\n	In home interior not all the gold are old. Metallic shades are in the trend especially the GOLD. This color brings elegance and sophisticated look together with the sense of decency. It can be found in the door knobs, handles, frames, lamps, mirror, lights, and legs of your favorite tables.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">Color Pop</span></u></span></p>\r\n<p style=\"text-align: justify;\">\r\n	This trend is all about mixing bright colors together. There should not be more than two bold colors to start your d&eacute;cor with and use neutrals to complete the rest of the look. This style can help you to express your personal style easily.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">Neutrals </span></u></span></p>\r\n<p style=\"text-align: justify;\">\r\n	This trend has always help to achieve the most decent look. The neutrals do not always have to be boring, mixing it with the bold accessories will get that look in your style. Lastly, the best thing about neutrals is, you never get tired of it.</p>\r\n', '2018-05-19', '2019-10-22', 1, 1, 'YCpNb-untitled-12.jpg', '9Lxhg-ssss.jpg', '', 0, 0, 'world, interior, style, accessories, talked, topic, trends, seasons, approaching, enjoyed', 'In today’s world the interior style and style in home accessories is one of the most talked about topic. There are various trends for each seasons. With the approaching summer-spring season, here are few of the trend that can be enjoyed by everyone. ', '2019-09-05 15:35:39'),
(2, 'revenue-from-land-and-house-registration-tax-increases', 'Revenue from land and house registration tax increases', 'Site Admin', 'With the increment in the number of transactions of land and houses, revenue collection from land and house registration tax also surged significantly across the country in the last fiscal year.', '<p style=\"text-align: justify;\">\r\n	With the increment in the number of transactions of land and houses, revenue collection from land and house registration tax also surged significantly across the country in the last fiscal year.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	With the increment in the number of transactions of land and houses, revenue collection from land and house registration tax also surged significantly across the country in the last fiscal year. The government collected Rs 19.29 billion revenue from land and house registration tax in the last fiscal year 2016-17, which was 39.8 % higher than the figure of the previous fiscal.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	The government had collected Rs 13.79 billion revenue under the same heading in fiscal year 2015-16, and Rs 9.84 billion in fiscal 2014-15. According to the economic activities study report unveiled by Nepal Rastra Bank (NRB), 816,789 units of land and houses were registered in the last fiscal year, which was 9% higher than the previous fiscal. Similarly, the government approved designs and drawings of 52,476 buildings in the last fiscal year, which is 32.4 % higher than that of the previous year.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	&ldquo;Transactions of land and houses increased in the last fiscal year and that helped boost the government revenue under the land and house registration tax,&rdquo; NRB said in its study report. The central bank had conducted the study in Kathmandu, Biratnagar, Janakpur, Birgunj, Siddharthanagar, Nepalgunj and Dhangadi areas. According to NRB, it has analysed the data provided by the municipalities, sub-metropolitan cities and metropolitan cities of 57 districts across the country. Though the financial sector faced a problem of credit crunch in the last fiscal year, transactions of land and houses increased in the country.</p>\r\n', '2018-05-19', '0000-00-00', 2, 1, '9gYJR-untitled-26.jpg', 'Z2qqU-untitled-25.jpg', '', 0, 0, 'increment, transactions, registration, significantly, government, revenue, fiscal', 'With the increment in the number of transactions of land and houses, revenue collection from land and house registration tax also surged significantly across the country in the last fiscal year. The government collected Rs 19.29 billion revenue from ', '2019-09-05 16:51:10'),
(3, 'real-estate-property-investment-in-nepal-with-tips-and-insights', 'Real Estate Property Investment in Nepal with Tips and Insights', 'Site Admin', 'Are you in the housing market with little to no prior knowledge on the current market scenario? Here are some tips to maximize your budget/investment.', '<p>\r\n	Although the market seems to be as simple as buying and selling procedure, property trading can be a big hassle for an inexperienced person and plausible to scams/deceits. Over the years the real estate market in Nepal has seen various home and land scams ranging from bogus property ownership to unendurable homes.&nbsp;&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Here are some tips for the naive buyers in the real estate market who is trying to get the most out of his budget while avoiding property scams:</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">1. Choosing the right property at the right price:</span></u></span></p>\r\n<p>\r\n	Investing in real estate is usually all about capital growth, so choosing a property that is more likely to increase in value is the most important decision you will make, so buying at the right price and time is absolutely critical.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">2. Do your sums &ndash; Cash Flow is always king:</span></u></span></p>\r\n<p>\r\n	Investing in property is a proven path to long-term wealth, however you should consider it as a median to longer-term type of investment, so you&#39;ll want to make sure that you can afford to maintain your loan repayments over long term.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">3. Understand the market and it&rsquo;s dynamics when you are buying:</span></u></span></p>\r\n<p>\r\n	Consider what other properties are available in the immediate area and speak to as many locals and real estate agents as you can &ndash; they will let you know if one side of street is considered superior to the other.</p>\r\n<div>\r\n	&nbsp;</div>\r\n<p>\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">4. Pick the right type of loan to suit your interests:</span></u></span></p>\r\n<p>\r\n	There are many options when it comes to financing your investment property, so get sound advice in this area as it can make a big difference to your financial well being.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">5. Use the equity from another property:</span></u></span></p>\r\n<p>\r\n	Leveraging equity in your home, or equity from another property investment can be an effective way to buy an investment property. Equity is the amount of money in your home that you actually own. Also, using the equity in your existing home can allow you to borrow more money against your investment property.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">6. Check the age and condition of the property and facilities:</span></u></span></p>\r\n<p>\r\n	Before investing into any properties, getting assured of the age and condition of the property becomes crucial. Physically and structurally safe property is the best bet.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">7. Seek an expert&rsquo;s advice:</span></u></span></p>\r\n<p>\r\n	Despite all these tips the property market might just overwhelm you so choose a certified Property Consultant. There are various Real Estate consultants on the market. Choosing the right, registered consultant who has your best interests and a good property portfolio is crucial. Although they may sometimes charge a reasonable fee, their experience in the real estate trading can prove to be invaluable.</p>\r\n', '2018-07-17', '0000-00-00', 3, 1, '6T7tP-untitled-24.jpg', 'JZ8sb-untitled-23.jpg', '', 0, 0, 'although, procedure, inexperienced, plausible, scams, deceits, bogus, property, unendurable, ownership', 'Although the market seems to be as simple as buying and selling procedure, property trading can be a big hassle for an inexperienced person and plausible to scams/deceits. Over the years the real estate market in Nepal has seen various home and land ', '2019-09-05 17:24:27'),
(4, 'current-real-estate-market-scenario-in-nepal', 'Current Real Estate Market Scenario in Nepal', 'Site Admin', 'Nepal Rastra Bank announced a rather disappointing policy for the real estate market. Despite the unfavorable policies, statistics prove that the market is definitely flourishing.', '<p style=\"text-align: justify;\">\r\n	Nepal Rastra Bank announced a dissapoinitng monetary policy for the real estate market for the year 2017/18 on july 9th. The three main clauses that affect the real estate and housing market are:</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	1. From previous year&#39;s 50% maximum financing through LTV(Loan to value ratio), it is now lowered to only 40% of maximum loan financing. Meaning, if one needed financing through any BFIs(Banks and Financial Institutions) a property valued at 1 crore will only get 40lakhs financing contrary to previous year&#39;s 50lakhs. However, this policy has only changed within the valley, the ratio of other places has been kept unchanged at the exisiting 50%.</p>\r\n<p style=\"text-align: justify;\">\r\n	2. Similarly, the maximum LTV ratio for residential housing loan is lowered to 50% within the valley, whereas it has remained unchanged at 60% for other places.</p>\r\n<p style=\"text-align: justify;\">\r\n	3. The limit however for maximum financing for personal homes provided by BFIs has increased from exisiting 10million to 15million.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (NRB monetary policy 2017/18)</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	The Real Estate Market in Nepal is flourishing despite the unsuitable monetary policy announced by Nepal Rastra Bank and the steep raises in land and home prices can attest to it, especially within the Kathmandu valley. Soaring prices in the city&rsquo;s core area, starting from Rs1 crore per ana onwards in prime localities like New Road, Durbarmarg, etc are still selling like hot cakes.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	At this pace, in which the property is selling, despite the baffling prices, confirms that the real estate market is bound to thrive no matter what natural disasters may befall us. A survey conducted by Brihat Property Solutions involving 43 currently active housing projects yielded, total units of 3875 houses with already sold 2961units and the remaining 914 units.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	In average it was found, each month 117 houses were sold i.e. 3.02% of the total surveyed. At this rate of demand the remaining 914 units could be sold within 8 months, in the case of no new supplies and favorable monetary policy. This indicates just how big the housing market is with just a few suppliers, ultimately creating housing shortages and creating profitability with high raise in prices. Hence, this is probably the best time to invest.</p>\r\n', '2018-07-28', '0000-00-00', 4, 1, 'Mwqah-untitled-10.jpg', 'ml30X-untitled-21.jpg', '', 0, 0, 'nepal rastra bank, announced, dissapointing, monetary, policy, clauses, market', 'Nepal Rastra Bank announced a dissapoinitng monetary policy for the real estate market for the year 2017/18 on july 9th. The three main clauses that affect the real estate and housing market are:\r\n', '2019-09-08 12:25:08'),
(5, '13th-rema-course-quotes-of-the-participants', '13th REMA Course - Quotes of the participants', 'Site Admin', 'The participants of 13th REMA classes have a say how they felt.', '<p style=\"text-align: justify;\">\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">Arun KC</span></u></span></p>\r\n<p style=\"text-align: justify;\">\r\n	&quot;Before REMA course, I was confused about my career. After attending REMA courses, I&rsquo;m driven towards my target. I&#39;m grateful to have met new people and shared experiences. I would like to thank Brihat Property Solutions for providing the kick-start to understand the real estate marketing scenario in Nepal. Real estate is a never-ending business, it is quite advanced in foreign countries and seeing it prosper in Nepal makes me feel happy.&quot;</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">Balram Khanal</span></u></span></p>\r\n<p style=\"text-align: justify;\">\r\n	&quot;I feel lucky to have been a part of the 13th REMA course. Even though it had been quite some time I had been in this business, I just knew the basics of buying and selling houses. After signing up for the REMA course it has definitely broaden my knowledge on real estate marketing, client handling, the bylaws and many more.&quot;</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">Bikey Maharjan</span></u></span></p>\r\n<p style=\"text-align: justify;\">\r\n	&quot;I&rsquo;ve been working in this field for some time now &amp; in the past I didn&#39;t have enough idea about it. I had faced many issues on the bylaws of REMA, clients bypassing agreements and at one point I had given up. But now I&#39;ve got to know about dealing with such matters &amp; technically being in the safe side. Because of the REMA course, I am confident that in the coming days I will be able to work with a strong mindset via implementing the new techniques learnt here.&quot;</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">Dasang Sherpa</span></u></span></p>\r\n<p style=\"text-align: justify;\">\r\n	&quot;I am humbled to have participated in this program. I only had the basic knowledge on the real estate market in the beginning and now I can proudly say I have gained a lot especially on the bylaws of real estate trading. We shared different difficulties faced in the real estate market, and in the upcoming days I can definitely tackle them easily and legally through this beneficial course.&quot;</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">Madhav Karanjit</span></u></span></p>\r\n<p style=\"text-align: justify;\">\r\n	&quot;I&#39;m very new to the topic real state and thought it was just buying and selling houses but, after the REMA course I got to broaden my knowledge. Being a part of this program is itself a big achievement for me where I have built-up a lot of confidence and feel like I&#39;ll be able to do something by my self in the coming future.&quot;</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">Mamta Dahal</span></u></span></p>\r\n<p style=\"text-align: justify;\">\r\n	&quot;I feel very lucky to be a part of this REMA course. Real estate has to be a very new sector for me, but after the REMA course I&#39;ve got gained a lot of knowledge on the real estate sector. I feel thankful for getting a chance to be a part of this course and will definitely suggest my friends to come join this course.&quot;</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">Milan Shrestha</span></u></span></p>\r\n<p style=\"text-align: justify;\">\r\n	&quot;Being a part of this beneficial program I got to know a great deal on the topics included inside the real estate marketing. The experiences shared by my seniors will be a great help in the upcoming future.&quot;</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">Ram Bhakta Lama</span></u></span></p>\r\n<p style=\"text-align: justify;\">\r\n	&quot;Although I have about 26 years of experience in this field I felt like I have been lacking behind somewhere so I decided to sign up for the REMA course and likely so. Now, I have built up self-esteem that after this course I&#39;ll be able to reach my destination with 100% success.&quot;</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">Sagar Sherpa</span></u></span></p>\r\n<p style=\"text-align: justify;\">\r\n	&quot;I feel grateful to be a part of such a prestigious program and having shared such wonderful moments. Being a part time real estate marketing agent, this program has definitely opened my eyes to further possibilities of taking this part time job as a full time fruitful business.&quot;</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">Saroj Kumar Tamang</span></u></span></p>\r\n<p style=\"text-align: justify;\">\r\n	&quot;I am glad I became a part of this course, from the first session itself I got hooked. I have gained a new insight on the registered real estate business opportunities along with disregarding how easy real estate marketing used to be previously. I would like to encourage Brihat Property solutions to provide more similar informational in-depth courses on behalf of all the candidates.&quot;</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<span style=\"color:#00a651;\"><u><span style=\"font-size:20px;\">Tul Bahadur Tamang</span></u></span></p>\r\n<p style=\"text-align: justify;\">\r\n	&quot;I had been in this business for quite some time now. I have learned more ways of tackling problems and increasing my business through this course.&quot;</p>\r\n', '2018-08-15', '0000-00-00', 5, 1, 'Kmpz6-untitled-8.jpg', 'sil1D-untitled-7.jpg', '', 0, 0, '13th REMA Course, quotes, participants, classes, felt', 'The participants of 13th REMA classes have a say how they felt.', '2019-09-08 12:25:44'),
(6, 'gradual-improvement-of-real-estate-scenario-in-nepal', 'Gradual improvement of Real Estate Scenario in Nepal', 'Site Admin', 'Real Estate Market of Nepal that has been put to slow motion since the massive 2015 Earthquake, has not been able to spread its wings fully and prosper in the past few years.', '<p style=\"text-align: justify;\">\r\n	Real Estate Market of Nepal that has been put to slow motion since the massive 2015 Earthquake, has not been able to spread its wings fully and prosper in the past few years. There have definitely been some changes in the policies. Local bodies have formed all over the country making it easier for concerned to go through the system. To get the real picture of the market, there needs to be thorough research conducted by reliable source. The findings from such research are not only helpful for developers and buyers, but for policy makers and banks and financial institutions (BFIs) as well.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	Dr. Sopon Pornchokchai, President of Thai Real Estate Business School has been coming to Nepal and conducting such research from time to time. Dr. Sopon along with Brihat Property Solutions conducted the comprehensive survey on housing and apartment projects in Kathmandu Valley as of March and June 2018. This was the fourth time he has conducted such research. As per his findings, some 2961 units were sold or booked by buyers out of 3875 units covered by the survey. In the market, as of the end of June 2018, there were only 914 units i.e. 24% available for sale. Each month, some 3.1% of the total units were sold. Since there were 914 units available, the number of months need to sell out all units is only 8 months. This implies that the market is quite active at this moment.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	New offers from BFIs for the attractive lower interest on home loans also brings out the message that even BFIs are being positive and trying to take advantage of the moment to cash in. Another strategy some BFIs&rsquo; are applying recently is tying up home loan with other essential products such as home insurance, life insurance, vehicle loan, shorter transaction period etc., which are beneficial to both parties.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	So, all in all, these are the good time for home buyers as well as developers.</p>\r\n', '2018-09-10', '0000-00-00', 6, 1, 'lFzRS-untitled-20.jpg', '3lqGa-untitled-19.jpg', '', 0, 0, 'real estate, slow motion, massive, earthquake, prosper, concerned, research, conducted, reliable, source, developers, institutions', 'Real Estate Market of Nepal that has been put to slow motion since the massive 2015 Earthquake, has not been able to spread its wings fully and prosper in the past few years. There have definitely been some changes in the policies. Local bodies have ', '2019-09-08 12:26:16'),
(7, 'tips-for-becoming-effective-real-estate-agent', 'Tips for becoming effective Real Estate Agent', 'Site Admin', 'Real Estate Agent is an entrepreneur and works for themselves, either independently or for real estate brokerage company...\r\n\r\n', '<p style=\"text-align: justify;\">\r\n	1. Real Estate Agent is an entrepreneur and works for themselves, either independently or for real estate brokerage company.</p>\r\n<p style=\"text-align: justify;\">\r\n	2. To become successful real estate agent, professional and realistic planning is must. Quality and quantity performance can be achieved, only, if you have strategic planning, which shows who does what and by when.</p>\r\n<p style=\"text-align: justify;\">\r\n	3. Make business plans that could be a road map to move ahead. Include prospecting, listing strategies, idea for networking, follow up mechanism, posting ad in various ways and means, generating customer referral in the Business Plan</p>\r\n<p style=\"text-align: justify;\">\r\n	4. Set goals with SMART criteria (specific, measurable, achievable, realistic, timebound)</p>\r\n<p style=\"text-align: justify;\">\r\n	5. Conduct real estate market survey focusing on your marketing plan. Spend time for sound marketing plan before entering the market</p>\r\n<p style=\"text-align: justify;\">\r\n	6. Real Estate is 24 hrs. and 7 days business. Doing business is tough. Agent should know the priority of the business and manage time efficiently balancing professional as well as personal time.</p>\r\n<p style=\"text-align: justify;\">\r\n	7. Being a real estate agent, prepare budget including marketing cost and additional cost for own capacity enhancement program.</p>\r\n<p style=\"text-align: justify;\">\r\n	8. Knowledgeable and experienced mentorship will add value in the job</p>\r\n', '2018-09-10', '0000-00-00', 7, 1, '3lxE6-untitled-18.jpg', '1kAyw-untitled-17.jpg', '', 0, 0, 'Tips for becoming effective Real Estate Agent', 'Tips for becoming effective Real Estate Agent', '2019-09-09 11:24:50'),
(8, 'tips-for-selling-property', 'Tips For Selling Property', 'Site Admin', 'Selling a property can sometimes be a hassel since it is a big decision. It requires proper preparation. We, at Brihat Property Solutions are here to offer you tips on how to sell your property making it as stress-free and simple as possible.', '<p style=\"text-align: justify;\">\r\n	Selling a property can sometimes be a hassle since it is a big decision. It requires proper preparation. We, at Brihat Property Solutions are here to offer you tips on how to sell your property making it as stress-free and simple as possible. We recommend you follow the following tips:</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<strong><u>Proper Valuation</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	You should have an aim of selling your property at possible best price in the shortest time possible. Our conduction of thousands of valuations per month gives us a reliable and exceptional knowledge of property values.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<strong><u>Valuation Arrangement</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<strong>Step 1:</strong></p>\r\n<p style=\"text-align: justify;\">\r\n	<strong><u>Agent selection</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	The real estate agent that you choose should possess a strong and high street exposure as well as the capability of supporting you with up-to-date technologies.</p>\r\n<p style=\"text-align: justify;\">\r\n	Brihat Property Solutions provide you with greater clearance, speed, and regulations with your property sale.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<strong>Step 2:</strong></p>\r\n<p style=\"text-align: justify;\">\r\n	<strong><u>Instruct a legal agent</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	Professional legal agent and efficiency are the factors that a successful sale relies upon.</p>\r\n<p style=\"text-align: justify;\">\r\n	Real Estate Marketing Agent, or as we like to call here at Brihat Property Solutions, REMA have been thoroughly chosen for their professionalism, expertise and efficiency.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<strong>Step 3:</strong></p>\r\n<p style=\"text-align: justify;\">\r\n	<strong><u>Presentation of property</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	As we know, the first impression counts as the last one, so the impression of your presentation of your property is critical to a successful sale.</p>\r\n<p style=\"text-align: justify;\">\r\n	You may consider exposing any do-it-yourself(s) you&rsquo;ve been looking forward to getting done, or a fresh coat of paints where it seems essential or/and also try to get rid of unnecessary objects which would help make rooms look bigger.</p>\r\n<p style=\"text-align: justify;\">\r\n	Our team of experienced photographers will then take decent photographs and create floor plans.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<strong>Step 4:</strong></p>\r\n<p style=\"text-align: justify;\">\r\n	<strong><u>Find a buyer</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	Finding a buyer is as stressful as it seems easy. To find a suitable one, your property requires as much exposure as possible on a vast media range.</p>\r\n<p style=\"text-align: justify;\">\r\n	After you inform Brihat Property Solutions to sell your property, we will provide you with the benefits from our unmatched, broad package, with the inclusion of wide exhibition on our website with promotions.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<strong>Step 5:</strong></p>\r\n<p style=\"text-align: justify;\">\r\n	<strong><u>Viewings accompany</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	Viewings accompany mean we can make use of our expertise to help your property to sell as fast as possible. Our opening hours are enough and essential to broaden the exposure opportunities for your property.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<strong>Step 6:</strong></p>\r\n<p style=\"text-align: justify;\">\r\n	<strong><u>Receiving the Offers</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	As soon as we find a buyer making an attractive offer on your property, we will then contact you and ask for additional to full details and/or any conditions otherwise, which would help you make the decision on whether you want to accept or not.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<strong>Step 7:</strong></p>\r\n<p style=\"text-align: justify;\">\r\n	<strong><u>Accepting the suitable offer</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	As soon as you accept an offer, we take the following measures:</p>\r\n<p style=\"text-align: justify;\">\r\n	&middot; Prepare a note of sale</p>\r\n<p style=\"text-align: justify;\">\r\n	&middot; Make the confirmations of agreed price with both parties</p>\r\n<p style=\"text-align: justify;\">\r\n	&middot; Ask you to make confirmations of your marketing agent&rsquo;s details</p>\r\n<p style=\"text-align: justify;\">\r\n	Your agent then will send you a draft of the contract to the buyer&#39;s agent who then will take steps of introductory inquiries. This stage will make you be able to make date agreements for the visit on your property, We then send our professionals to visit your property to make necessary measurements, observations, and valuation. This will confirm the contract exchanging and completion date.</p>\r\n<p style=\"text-align: justify;\">\r\n	Our real estate marketing agent will counsel you and make necessary negotiations on behalf of you within this process.</p>\r\n<p style=\"text-align: justify;\">\r\n	No legal commitments are made until the contracts are properly signed.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<strong>Step 8:</strong></p>\r\n<p style=\"text-align: justify;\">\r\n	<strong><u>Completion of the process</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	Completion of the process is when the remaining money is sent from the buyer&#39;s agent to your agent&#39;s account.</p>\r\n<p style=\"text-align: justify;\">\r\n	Your agent will then contact you when the money has been made clear in your account and thereafter inform us for releasing the keys.</p>\r\n<p style=\"text-align: justify;\">\r\n	Congratulations, on now successfully selling your property!</p>\r\n', '2018-10-26', '0000-00-00', 8, 1, 'TRQby-untitled-7.jpg', 'inMwc-untitled-8.jpg', '', 0, 0, 'selling, property, hassle, decision, preparation, possible, recommend, tips', 'Selling a property can sometimes be a hassle since it is a big decision. It requires proper preparation. We, at Brihat Property Solutions are here to offer you tips on how to sell your property making it as stress-free and simple as possible. We reco', '2019-09-09 11:53:30'),
(9, 'the-concept-of-vaastu-shastra', 'The Concept Of Vaastu Shastra', 'Site Admin', 'Vaastu Shastra is one of the ancient teachings from the Indian civilization. Originated in Sthapatya Veda, Vaastu Shastra is a part of Atharva Veda. It deals with the science of the architecture and tells how a building should be planned to channelize the positive energy in our lives. It takes advantage of the benefits bestowed by nature, its elements and energy fields for enhanced health, wealth, prosperity and happiness.\r\n\r\n', '<p>\r\n	<strong><u>What is Vaastu Shastra?</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	Vaastu Shastra is one of the ancient Hindu civilization teachings. It is a traditional Hindu architecture system. Originated in Sthapatya Veda, Vaastu Shastra is a part of Atharva Veda. It is a way of dealing with architectural science which suggests how to plan a building in such a way that it channelizes in our lives the positive energy. It takes advantage of the benefits bestowed by nature, its elements, and energy fields for enhanced health, wealth, prosperity and happiness.</p>\r\n<p style=\"text-align: justify;\">\r\n	The proper implementation of Vaastu techniques has been believed to bring peace and prosperity to many households for centuries. Though Vaastu started out with the construction rules for Hindu temples, it soon branched out to residential houses, office buildings, vehicles, sculpture, paintings, furniture etc. It helps in making a compatible setting or a place to live and work in both traditional and scientific way.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p>\r\n	<strong><u>Pancha Tattwa in Vaastu Shastra</u></strong></p>\r\n<p>\r\n	The entire universe, as well as our body, is made up of five basic elements called Pancha &ndash;Tattwa or Pancha Mahabhootas. They are Earth, Water, Air, Fire &amp; Space. It relates to senses of smell, taste, hearing, touch, and sight. Imbalance in these translates into unhappy situations. Vaastu teaches an individual to carry living in a balanced and harmonious way with the Pancha Mahabhutas.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<strong><u>Directions in Vaastu Shastra</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	Besides the elements, the directions in Vaastu Shastra are the most important factor. Making sure that everything is in the right corner when constructing a house, is of very much importance. The four cardinal directions and four ordinal directions in Vaastu Shastra are as follows:</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p>\r\n	<strong><u>East: </u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	The Eastern direction is known to be governed byLordd Indra who is known as the king of all Gods. He supposedly bestows wealth and pleasures in life.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<strong><u>South East:</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	The Southern East direction is commanded by Agni, the lord of fire. He is known to provide us with a good personality and all the good things of and in our life. Fire is related to cooking and food which is a source of health to us.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<strong><u>South:</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	The Southern direction is directed of the god of death, Yama. He manifests dharma, and bestows good things by eradicating evil forces. So, this direction helps us be immune of negative things.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<strong><u>South West:</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	The Southern West direction is directed by the goddess of protection, Niruti. She is known to protect us from evil and foes. So, this direction bestows character, demeanor, the case of longevity and also death.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<strong><u>West: </u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	This Western direction is directed by the lord of rains, Lord Varun. He is known to bestow his blessings in natural water-rain form which is supposed to bring prosperity and pleasures in life. So, this direction brings us happiness.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<strong><u>North West:</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	The Northern West direction is directed by the God of Winds, Lord Vayu and he supposedly brings us good health, strength and life longevity. It is known to be a source of change in business course, friendship and hostility. So, this direction is known to bring good business life to us.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p>\r\n	<strong><u>North:</u></strong></p>\r\n<p>\r\n	This direction is governed by the lord of wealth, Kuber. So, this direction is known to bring us wealth and richness.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<strong><u>North East:</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	The Northern East direction is the place supervised by the lord of succession, Ishaan who is also a source of wealth and health. So, this direction is supposed to bring us wisdom, knowledge and relieve us from all negativity and misfortune and bring us success.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	Over the ages, Vaastu Shastra has been popular and has remained in vibrant use all over the Hindu Tradition. Since it mentions its usefulness in both traditional and scientific ways, the use of Vaastu Shastra is a good concept.</p>\r\n', '2018-10-29', '0000-00-00', 9, 1, '7ny1I-untitled-6.jpg', 'kB3s2-untitled-5.jpg', '', 0, 0, 'vaastu shastra, ancient, civilization, teachings, architecture, originated, veda, channelizes, energy, bestowed, prosperity, happiness', 'Vaastu Shastra is one of the ancient Hindu civilization teachings. It is a traditional Hindu architecture system. Originated in Sthapatya Veda, Vaastu Shastra is a part of Atharva Veda. It is a way of dealing with architectural science which suggests', '2019-09-09 11:53:47'),
(10, 'why-brihat-property-solutions', 'Why Brihat Property Solutions?', 'Site Admin', 'BBuying property in Nepal is usually a hassle to a lot of people since its filled with big transactions and not all the clients are trustworthy with such big kind of business. With Brihat, we provide you with a stress-free transaction, trustworthy realtors and easy made business. We have qualified and professional dealers with higher standard values and who follow a strict set of behaving rules.', '<p style=\"text-align: justify;\">\r\n	Buying property in Nepal is usually a hassle to a lot of people since its filled with big transactions and not all the clients are trustworthy with such big kind of business. With Brihat, we provide you with a stress-free transaction, trustworthy realtors and easy made business. We have qualified and professional dealers with higher standard values and who follow a strict set of behaving rules. We believe our provision of financial solutions are the best and we provide the following benefits to you:</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p>\r\n	<strong><u>Large Selection Of Property:</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	We have many and new properties registered with us weekly through which you can conclude that we have got just what you&#39;re seeking for. We give you with the analysis of different properties in the market that allows you the freedom and flexibility of easily choosing the best property according to your requirements.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p>\r\n	<strong><u>Reachability:</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	We are available to you whenever and wherever required. We have our website provided to you and our phones are reachable to you when needed. We are also available in most used social media platforms like Facebook, Twitter and you will be able to connect with us whenever you have queries.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p>\r\n	<strong><u>Professional Estate Agents:</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	We have qualified and professional real estate agents who offer you the best knowledge of the locality and provide expert advice on any community while selling properties and buying properties in Nepal.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p>\r\n	<strong><u>Mutual Online Search:</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	You will be able to search for a property on Brihat with the basis of the specific attribute of lifestyle including views, facilities, and desire. You can bookmark your favorite real estate properties in Nepal and make more searches and the best part is you don&#39;t have to be physically available at the spot. You can do it all on your own virtually through online searches.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p>\r\n	<strong><u>Conclusion:</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	Brihat is one of the best and the most trustworthy real estate agent in Nepal making it easy and hassle free for you to buy and sell properties in Nepal through professional real estate agents in Nepal.</p>\r\n', '2019-11-19', '0000-00-00', 11, 1, 'ZbOUb-5j0uu-untitled-2.jpg', 'lxv9V-img.jpg', '', 0, 0, 'property, hassle, transactions, trustworthy, business, stress-free, realtors, qualified, standard, behaving, rules, provision, benefits', 'Buying property in Nepal is usually a hassle to a lot of people since its filled with big transactions and not all the clients are trustworthy with such big kind of business. With Brihat, we provide you with a stress-free transaction, trustworthy rea', '2019-09-11 10:40:07'),
(11, 'about-brihat-cluster-balkhu', 'About Brihat Cluster - Balkhu', 'Site Admin', 'We present you contemporary houses built at perfect location inside Kathmandu. Buy houses inside Kathmandu with attractive features for you and your family.', '<p>\r\n	We present you contemporary houses built at perfect location inside Kathmandu. Buy houses inside Kathmandu with attractive features for you and your family.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	The Brihat Cluster Housing is conveniently located in the heart of city, at Balkhu, which is just 200m from ring road chowk, 600m from Vayodha Hospital, 1.3 km from Tribhuvan University, 2.2 km from Kalanki Chowk and 1.6 km from Bhatbhateni Supermarket.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	The plot areas are 0-4-0-2 aana and 0-4-0-0 aana. The built-up areas are 1830 sq. ft and 1650 sq. ft. The type A has 4 bedrooms and 4 bathrooms while type B has 4 bedrooms and 3 bathrooms. These houses have large interior spaces and recreational facilities.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	With beneficial landmarks like hospitals, grocery stores and supermarkets, these houses are designed with locality in consideration to cater modern living. Brihat Cluster, Balkhu offers excellent value house built for quality living.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Please click here for further informations about Type A: <a href=\"http://www.brihatpropertysolutions.com/property/bc-balkhu-type-21-a\">Type 21 A</a></p>\r\n<p>\r\n	Please click here for further informations about Type B: <a href=\"http://www.brihatpropertysolutions.com/property/bc-balkhu-type-13-a\">Type 13 A</a></p>\r\n<div>\r\n	&nbsp;</div>\r\n<p>\r\n	<strong>*Prices are subject to change and validity will end by the end of Chaitra, 2075</strong></p>\r\n', '2019-01-25', '0000-00-00', 10, 1, 'M4ks1-untitled-3.jpg', 'yST4H-untitled-4.jpg', '', 0, 0, 'present, contemporary, location, kathmandu, features, family', 'We present you contemporary houses built at perfect location inside Kathmandu. Buy houses inside Kathmandu with attractive features for you and your family.', '2019-10-15 11:42:26');
INSERT INTO `tbl_blog` (`id`, `slug`, `title`, `author`, `brief`, `content`, `blog_date`, `archive_date`, `sortorder`, `status`, `image`, `thumb_upload`, `source`, `type`, `viewcount`, `meta_keywords`, `meta_description`, `added_date`) VALUES
(12, 'ghar-jagga-karobar-garneharuka-lagi-rima-talim', 'घर-जग्गा कारोबार गर्नेहरुका लागि ‘रीमा’ तालिम', 'Site Admin', 'सहभागीहरुलाई घर निर्माण, इन्जिनियरिङ तथा आर्किटेक्चर, भवन संहिता, रियल इस्टेट कानुन र यसको अभ्यास, आवास कर्जा तथा बिमा, प्रोपर्टी इभ्यालुएशन, रियल इस्टेट मार्केटिङ तथा सेल्स टुल्स एण्ड टेक्निकलगायतका विषयहरुमा प्रशिक्षण दिइएको थियो ।\r\n\r\n', '<p style=\"text-align: justify;\">\r\n	काठमडौं । रियल इस्टेट करिअरका विषयमा आधारभुत जानकारी दिने उद्देश्यले बृहत प्रोपर्टी सोलुसन्स (बीपीएस)ले रियल इस्टेटका क्षेत्रमा कार्यरत विभिन्न व्यक्तिहरुलाई ३ दिने रियल इस्टेट एजेन्ट (रीमा) तालिम दिएको छ ।</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	१५ औँ ब्याचको तालिममा रियल इस्टेट एजेन्ट र व्यवसायिक प्रतिष्ठान समेतका गरी १२ जनाको सहभागिता थियो भने उनीहरुलाई रियल इस्टेट विज्ञ ओम राजभण्डारीका साथै पूर्णिमा राजभण्डारी, रुद्र पोखरेल, निश्चलमानसिंह प्रधान, सुप्रिया श्रेष्ठ, प्रार्थना बैद्य र निरज श्रेष्ठले पशिक्षण दिएका थिए ।</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	सहभागीहरुलाई घर निर्माण, इन्जिनियरिङ तथा आर्किटेक्चर, भवन संहिता, रियल इस्टेट कानुन र यसको अभ्यास, आवास कर्जा तथा बिमा, प्रोपर्टी इभ्यालुएशन, रियल इस्टेट मार्केटिङ तथा सेल्स टुल्स एण्ड टेक्निकलगायतका विषयहरुमा प्रशिक्षण दिइएको थियो । तालिम यहि अप्रित १८ देखि २० सम्म सञ्चालन गरिएको थियो ।</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	&lsquo;बीपीएस&rsquo; रियल इस्टेट क्षेत्रमा नेपालको प्रतिष्ठित व्यावसायिक समूह &lsquo;बृहत ग्रूप&rsquo; अन्तर्गतको कम्पनी हो । यो कम्पनीले रियल इस्टेत क्षेत्रमा करिअर बनाउन चाहानेहरुका लागि तालिमहरु प्रदान गर्दै आएको छ ।</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	दक्ष रीमामार्फत घर&ndash;जग्गा कारोबारलाई मर्यादित बनाउने उद्धेश्यले कम्पनीले १० वर्षअघि देखी यस्तो तालिमको आयोजना गर्दै आएको छ । यस तालिमबाट हालसम्म १९५ जना रीमा सर्टिफाइड भैसकेका छन् । बृहत ग्रूप नेपालमा व्यवसायिक रिमा तालिम सञ्चालन गर्ने पहिलो र हाल सम्मको एक मात्र कम्पनी मानिँदै आएको छ ।</p>\r\n', '2019-04-23', '0000-00-00', 15, 1, 'AOD2f-untitled-2.jpg', 'ZWX6d-untitled-1.jpg', '', 1, 0, 'काठमडौं, रियल इस्टेट, आधारभुत, कार्यरत, एजेन्ट,  तालिम, जानकारी, प्रतिष्ठान   ', 'काठमडौं । रियल इस्टेट करिअरका विषयमा आधारभुत जानकारी दिने उद्देश्यले बृहत प्रोपर्टी सोलुसन्स (बीपीएस)ले रियल इस्टेटका क्षेत्रमा कार्यरत विभिन्न व्यक्तिहरुलाई ३ दिने रियल इस्टेट एजेन्ट (रीमा) तालिम दिएको छ ।', '2019-10-22 11:31:30'),
(13, 'brihatko-pandroun-rima-talim-pura-thap-agent', 'बृहतको १५ औं ‘रिमा’ तालिम पूरा, थप एजेन्ट प्रशिक्षित', 'Site Admin', 'बृहत् प्रोपर्टी सोलुसन्स् (बीपीएस) ले आयोजना गरेको १५ औं ब्याचको तालिम सम्पन्न भएको छ । ‘बीपीएस’ रियल इस्टेट क्षेत्रमा नेपालको प्रतिष्ठित व्यावसायिक समूह ‘बृहत् ग्रुप’ अन्तर्गतको कम्पनी हो । १८ देखि २० अप्रिल २०१९ सम्म काठमाडौंमा आयोजित १५ औं ब्याचको रिमा तालिममा रियल इस्टेट एजेन्ट र व्यावसायिक प्रतिष्ठान समेतका १२ जनाको सहभागिता भन्दै कम्पनीले यस १५ औं रिमा ब्याचमा रियल इस्टेट कै क्षेत्रमा कार्य गर्दै आउनु भएका व्यक्तित्वहरू, रियल इस्टेट लगानीकर्ता साथै यस पेसामा लाग्न मनभएका व्यक्तित्वहरूको उपस्थिति रहेको जनाएको छ ।\r\n\r\n', '<p style=\"text-align: justify;\">\r\n	बृहत् प्रोपर्टी सोलुसन्स् (बीपीएस) ले आयोजना गरेको १५ औं ब्याचको तालिम सम्पन्न भएको छ । &lsquo;बीपीएस&rsquo; रियल इस्टेट क्षेत्रमा नेपालको प्रतिष्ठित व्यावसायिक समूह &lsquo;बृहत् ग्रुप&rsquo; अन्तर्गतको कम्पनी हो । १८ देखि २० अप्रिल २०१९ सम्म काठमाडौंमा आयोजित १५ औं ब्याचको रिमा तालिममा रियल इस्टेट एजेन्ट र व्यावसायिक प्रतिष्ठान समेतका १२ जनाको सहभागिता भन्दै कम्पनीले यस १५ औं रिमा ब्याचमा रियल इस्टेट कै क्षेत्रमा कार्य गर्दै आउनु भएका व्यक्तित्वहरू, रियल इस्टेट लगानीकर्ता साथै यस पेसामा लाग्न मनभएका व्यक्तित्वहरूको उपस्थिति रहेको जनाएको छ ।</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	समयानुकूल आफ्नो ज्ञान र क्षमता अभिवृद्धि गर्ने उद्देश्यले उनीहरूले यो तालिममा भाग लिएका थिए । तालिममा रियल इस्टेट करिअरबारे आधारभूत जानकारीका साथै घर निर्माण, इन्जिनियरिङ तथा आर्किटेक्चर, भवन संहिता, रियल इस्टेट कानुन र यसको अभ्यास, आवास कर्जा तथा बिमा, प्रोपर्टी इभ्यालुएसन, रियल इस्टेट मार्केटिङ तथा सेल्स टुल्स एन्ड टेक्निकलगायतका विषयहरू समेटेको थियो । तालिमका प्रशिक्षकहरूमा नेपालका अग्रणी रियल इस्टेट विज्ञ ओम राजभण्डारीका साथै पूर्णिमा राजभण्डारी, रुद्र पोखरेल, निश्चलमान सिंह प्रधान, सुप्रिया श्रेष्ठ, प्राथना वैध रनिरज श्रेष्ठ रहेका थिए ।</p>\r\n', '2019-04-22', '0000-00-00', 14, 1, 'pIwpx-untitled-4.jpg', 'GHCis-untitled-3.jpg', '', 1, 0, 'बृहत् प्रोपर्टी सोलुसन्स्, व्यावसायिक समूह, अन्तर्गत, आयोजित, सहभागिता, लगानीकर्ता, उपस्थिति    ', 'बृहत् प्रोपर्टी सोलुसन्स् (बीपीएस) ले आयोजना गरेको १५ औं ब्याचको तालिम सम्पन्न भएको छ । ‘बीपीएस’ रियल इस्टेट क्षेत्रमा नेपालको प्रतिष्ठित व्यावसायिक समूह ‘बृहत् ग्रुप’ अन्तर्गतको कम्पनी हो । १८ देखि २० अप्रिल २०१९ सम्म काठमाडौंमा आयोजित १५ औं ब्याचको', '2019-10-23 14:28:59'),
(14, 'out-look-of-housing-market-of-kathmandu-2018-2019-sarbajanik', 'आउटलुक अफ हाउजिङ मार्केट अफ काठमाडौं २०१८–२०१९ सार्वजनिक', 'Site Admin', 'काठमाडौं, १५ असार । नेपाली रियल स्टेट क्षेत्रमा विगत एक दशकदेखि सक्रिय कम्पनी बृहत ग्रूपले काठमाडौं उपत्यकाको हाउजिङ बजारसम्बन्धमा एक विस्तृत अध्ययन गरी सोको प्रतिवेदन सार्वजनिक गरेको छ । बृहतले यसअघि पनि सन् २०१२ मार्च र सन् २०१५ अप्रिलमा उपत्यकाको हाउजिङ बजारसम्बन्धी यस्तै अध्ययन प्रतिवेदन तयार पारेर सार्वजनिक गर', '<p style=\"text-align: justify;\">\r\n	काठमाडौं, १५ असार । नेपाली रियल स्टेट क्षेत्रमा विगत एक दशकदेखि सक्रिय कम्पनी बृहत ग्रूपले काठमाडौं उपत्यकाको हाउजिङ बजारसम्बन्धमा एक विस्तृत अध्ययन गरी सोको प्रतिवेदन सार्वजनिक गरेको छ । बृहतले यसअघि पनि सन् २०१२ मार्च र सन् २०१५ अप्रिलमा उपत्यकाको हाउजिङ बजारसम्बन्धी यस्तै अध्ययन प्रतिवेदन तयार पारेर सार्वजनिक गर</p>\r\n', '2019-06-30', '0000-00-00', 13, 1, 'ZJiFD-untitled-6.jpg', 'WHuJL-untitled-5.jpg', '', 1, 0, 'आउटलुक, विगत, हाउजिङ, अध्ययन, प्रतिवेदन, सार्वजनिक   ', 'काठमाडौं, १५ असार । नेपाली रियल स्टेट क्षेत्रमा विगत एक दशकदेखि सक्रिय कम्पनी बृहत ग्रूपले काठमाडौं उपत्यकाको हाउजिङ बजारसम्बन्धमा एक विस्तृत अध्ययन गरी सोको प्रतिवेदन सार्वजनिक गरेको छ । बृहतले यसअघि पनि सन् २०१२ मार्च र सन् २०१५ अप्रिलमा उपत्यकाको ', '2019-10-23 14:31:09'),
(15, 'brihatko-teraun-rima-talim-pura-thap-agent-utpadan', 'बृहत्को १३ औं ‘रिमा’ तालिम पूरा, थप एजेन्ट उत्पादन', 'Site Admin', 'बृहत् प्रोपर्टी सोलुसन्स् (बीपीएस) ले आयोजना गरेको १३ औं ब्याचको रियल इस्टेट मार्केटिङ एजेन्ट (रिमा) तालिम सम्पन्नभएको छ । ‘बीपीएस’ रियल इस्टेट क्षेत्रमा नेपालको प्रतिष्ठित व्यावसायिक समूह ‘बृहत ग्रुप’ अन्तर्गतको कम्पनी हो । \r\n\r\n', '<p style=\"text-align: justify;\">\r\n	बृहत् प्रोपर्टी सोलुसन्स् (बीपीएस) ले आयोजना गरेको १३ औं ब्याचको रियल इस्टेट मार्केटिङ एजेन्ट (रिमा) तालिम सम्पन्नभएको छ । &lsquo;बीपीएस&rsquo; रियल इस्टेट क्षेत्रमा नेपालको प्रतिष्ठित व्यावसायिक समूह &lsquo;बृहत ग्रुप&rsquo; अन्तर्गतको कम्पनी हो ।</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	१९ देखि २१ जुलाई २०१८ सम्म काठमाडौंमा आयोजित १३ औं ब्याचको रिमा तालिममा रियल इस्टेट एजेन्ट र व्यावसायिक प्रतिष्ठान समेतका ११ जनाको सहभागिता थियो । यस १३ औं रिमा ब्याचमारियल इस्टेट कै क्षेत्रमा कार्य गर्दै आउनु भएका व्यक्तित्वहरूको उपस्थिति रह्यो ।</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	समयानुकूल आफ्नो ज्ञान र क्षमता अभिवृद्धि गर्ने उद्देश्यले उहाँहरूले यो तालिममा भाग लिनु भएको थियो । तालिममा रियल इस्टेट करिअरबारे आधारभूत जानकारीका साथै घर निर्माण, इन्जिनियरिङ तथा आर्किटेक्चर, भवनसंहिता, रियल इस्टेट कानुन र यसको अभ्यास, आवास कर्जा तथा बिमा, प्रोपर्टी इभ्यालुएसन, रियल इस्टेट मार्केटिङ तथा सेल्स टुल्स एन्ड टेक्निकल लगायतका विषयहरू समेटेको थियो । तालिमका प्रशिक्षकहरूमा नेपालका अग्रणी रियल इस्टेट विज्ञ ओम राजभण्डारीका साथै पूर्णिमा राजभण्डारी, उनममानप्रधान, निश्चलमान सिंह प्रधान, सुशीलकुमार चापागाईं, सविता जोशी, निभा श्रेष्ठ थिए ।</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	यो तालिमले सहभागीहरूका लागि रियल इस्टेट क्षेत्रमा करिअर बनाउनका लागि नयाँआयाम सिर्जना गर्ने कम्पनीको विश्वास छ । तालिममा सहभागीहरूले रिमा तालिम रियल इस्टेटबारे आधारभूत ज्ञान लिनका साथै यस क्षेत्रमा करियर अघि बढाउनका लागि पनि अत्यन्त सहयोगी र उपलब्धिमूलक भएको र यस क्षेत्रलाई अझ मर्यादित र पारदर्शी रूपमा अघि बढाउने बताए । दक्ष रिमा उत्पादनमार्फत घर&ndash;जग्गा कारोबारलाई मर्यादित बनाउने उद्देश्यले कम्पनीले ९ वर्ष अघिदेखि यस्तो तालिमको आयोजना गर्दै आएको छ । यस तालिमबाट हालसम्म १ सय ७३ जना रिमा ग्राजुयेट भइसकेका छन् । बृहत् ग्रुप नेपालमा व्यावसायिक रिमा तालिम सञ्चालन गर्ने पहिलो र हालसम्मको एकमात्र कम्पनी हो ।</p>\r\n', '2018-07-22', '0000-00-00', 12, 1, 'fhFcw-untitled-8.jpg', 'RlrFV-untitled-7.jpg', '', 1, 0, 'आयोजना, व्यावसायिक, कम्पनी, ब्याचको, सम्पन्न  ', 'बृहत् प्रोपर्टी सोलुसन्स् (बीपीएस) ले आयोजना गरेको १३ औं ब्याचको रियल इस्टेट मार्केटिङ एजेन्ट (रिमा) तालिम सम्पन्नभएको छ । ‘बीपीएस’ रियल इस्टेट क्षेत्रमा नेपालको प्रतिष्ठित व्यावसायिक समूह ‘बृहत ग्रुप’ अन्तर्गतको कम्पनी हो । \r\n', '2019-10-23 14:35:26'),
(16, 'kathachahin-thik-ulto-chha', 'कथाचाहिँ ठीक उल्टो छ', 'Site Admins', 'कथाचाहिँ ठीक उल्टो छ', '<p style=\"text-align: justify;\">\r\n	कथाचाहिँ ठीक उल्टो छ</p>\r\n', '2019-10-24', '0000-00-00', 16, 0, 'pB4kc-1a.jpg', 'KHbHK-1b.jpg', '', 1, 0, 'कथाचाहिँ ठीक उल्टो छ', 'कथाचाहिँ ठीक उल्टो छ', '2019-10-24 10:43:05'),
(20, 'brihatko-satraoun-rima-talim-pura-thap-agent', '17th REMA Course News Cover by Property Dainik', 'Site Admin', '17th REMA Course news cover by property dainik.', '<blockquote>\r\n	<p>\r\n		<strong>दक्ष रियल इस्टेट मार्केटिङ एजेन्ट उत्पादनमार्फत घर&ndash;जग्गा कारोबारलाई मर्यादित बनाउने उद्धेश्यले बृहतले १० वर्षअघिबाट यो तालिम संचालन गर्दै आएको छ । रिमा तालिमबाट हालसम्म दुई सय १८ जना ग्र्याजुएट भइसकेको कम्पनीले जानकारी दिएको छ ।</strong></p>\r\n</blockquote>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	काठमाडौं । बृहत प्रोपर्टी सोलुसन्स् (बिपिएस) ले आयोजना गरेको १७ औं ब्याचको रियल इस्टेट मार्केटिङ एजेन्ट (रिमा) तालिम सम्पन्न भएको छ । १२ देखि १४ मार्च २०१९ सम्म काठमाडौंमा आयोजित १७ औं ब्याचको रिमा तालिममा र अन्य व्यवसायिक प्रतिष्ठान समेतका गरी जम्मा १२ जनाको सहभागिता थियो ।</p>\r\n<p>\r\n	यस ब्याचमा रियल इस्टेटकै क्षेत्रमा कार्य गर्दै आएका रियल इस्टेट एजेन्ट तथा अन्य व्यक्तित्वहरु, रियल इस्टेट लगानीकर्ताका साथै यस पेशासँग अन्तरसम्बन्धित अन्य विभिन्न व्यवसायिक प्रतिष्ठानका व्यक्तित्वहरुको उपस्थिति रहेको थियो । समयानुकुल आफ्नो ज्ञान र क्षमता अभिबृद्धि गर्ने उद्वेश्यले यस तालिममा भाग लिएको सहभागीहरुले बताएका छन् ।</p>\r\n<p>\r\n	तालिममा रियल इस्टेट करिअरबारे आधारभुत जानकारीका साथै घर निर्माण, इन्जिनियरिङ तथा आर्किटेक्चर, भवन संहिता, रियल इस्टेट कानुन र यसको अभ्यास, आवास कर्जा तथा बिमा, प्रोपर्टी भ्यालुएशन, रियल इस्टेट मार्केटिङ तथा सेल्स टुल्स एण्ड टेक्निक लगायतका विषयहरु समेटिएको थियो ।</p>\r\n<p>\r\n	तालिमका प्रशिक्षकहरुमा रियल इस्टेट विज्ञ ओम राजभण्डारीका साथै पूर्णिमा राजभण्डारी,रुद्र पोखरेल, रेबन्त श्रेष्ठ, निश्चल मान सिंह प्रधान, निभा श्रेष्ठ र सुमन थापा मगर रहेका थिए ।</p>\r\n<p>\r\n	यो तालिमले सहभागीहरुका लागि रियल इस्टेट क्षेत्रमा करिअर बनाउनका लागि नयाँ आयाम सृजना गर्ने कम्पनीको विश्वास छ । रिमा तालिम रियल इस्टेटबारे आधारभूत ज्ञान लिनका साथै यस क्षेत्रमा करियर अघि बढाउनका लागि पनि अत्यन्त सहयोगी तथा उपलब्धिमूलक भएको र यस क्षेत्रलाई अझ मर्यादित र पारदर्शी रुपमा अघि बढाउन उपयोगी भएको तालिममा सहभागिहरुले बताए ।</p>\r\n<p>\r\n	दक्ष रियल इस्टेट मार्केटिङ एजेन्ट उत्पादनमार्फत घर&ndash;जग्गा कारोबारलाई मर्यादित बनाउने उद्धेश्यले बृहतले १० वर्षअघिबाट यो तालिम संचालन गर्दै आएको छ । रिमा तालिमबाट हालसम्म दुई सय १८ जना ग्र्याजुएट भइसकेको कम्पनीले जानकारी दिएको छ ।</p>\r\n<hr id=\"system_readmore\" style=\"border-style: dashed; border-color: orange;\" />\r\n', '2020-03-17', '0000-00-00', 17, 1, 'DxXtw-img_3845.jpg', 'SbdQI-screenshot-(14).png', '', 1, 0, '', '', '2020-03-17 16:07:31'),
(21, 'brihatko-satraooun-rima-talim-pura-thap-agent', '17th REMA Course News Cover by Aarthik Abhiyan', 'Site Admin', '17th REMA Course news cover by Aarthik Abhiyan.', '<p style=\"text-align:justify\">\r\n	काठमाडौं । बृहत प्रोपर्टी सोलुसन्स् (बीपीएस) ले आयोजना गरेको १७औं ब्याचको रियल इस्टेट मार्केटिङ एजेन्ट (रिमा) तालीम सम्पन्न भएको छ । &lsquo;बीपीएस&rsquo; रियल इस्टेट क्षेत्रमा नेपालको प्रतिष्ठित व्यावसायिक समूह &lsquo;बृहत ग्रूप&rsquo;अन्तर्गतको कम्पनी हो ।</p>\r\n<p style=\"text-align:justify\">\r\n	बिहीवारदेखि शनिवारसम्म काठमाडौंमा आयोजित १७औं ब्याचको रिमा तालीममा रियल इस्टेट एजेन्ट र व्यावसायिक प्रतिष्ठान समेतका १२ जना सहभागी थिए । १७औं रिमा ब्याचमा रियल इस्टेट क्षेत्रमा काम गर्दै आएका व्यक्ति र रियल इस्टेट लगानीकर्ताहरूको सहभागिता थियो ।&nbsp;</p>\r\n<p style=\"text-align:justify\">\r\n	समयानुकूल आफ्नो ज्ञान र क्षमता अभिवृद्धि गर्ने उद्देश्यले तालीम आयोजना गरिएको बीपीएसले जानकारी दिएको छ । तालीममा रियल इस्टेट करिअरबारे आधारभूत जानकारीका साथै घर निर्माण, इन्जीनियरिङ तथा आर्किटेक्चर, भवन संहिता, रियल इस्टेट कानुन् र यसको अभ्यास, आवास कर्जा तथा बिमा, प्रोपर्टी भ्यालुएशन, रियल इस्टेट मार्केटिङ तथा सेल्स टुल्स एन्ड टेक्निकलगायत विषयमा जानकारी दिइएको थियो ।&nbsp;</p>\r\n<p style=\"text-align:justify\">\r\n	रियल इस्टेट क्षेत्रका विज्ञ ओम राजभण्डारीका साथै पूर्णिमा राजभण्डारी, रुद्र पोखरेल, रेबन्त श्रेष्ठ, निश्चलमान सिंह प्रधान, निभा श्रेष्ठ र सुमन थापा मगरले प्रशिक्षण दिएका थिए ।</p>\r\n<hr id=\"system_readmore\" style=\"border-style: dashed; border-color: orange;\" />\r\n', '2020-03-17', '0000-00-00', 18, 1, 'MSj7d-img_3845.jpg', 'kNSzX-screenshot-(8).png', '', 1, 0, '', '', '2020-03-17 16:11:29'),
(22, 'luckdown', 'लकडाउनपछि घरको बजार बढ्ने छ', 'BPS', 'कोरोना रोकथामका लागि हामीसँग भएको तीनवटा मात्रै विकल्प हो ।', '<p style=\"text-align: justify;\">\r\n	कोरोना रोकथामका लागि हामीसँग भएको तीनवटा मात्रै विकल्प हो । पहिलो कोरोनाको भ्याक्सिन, दोस्रो कोरोनाको औषधि र तेस्रो विकल्प भनेको भ्याक्सिन र औषधि पत्ता नलाग्दासम्म कसरी सुरक्षित हुने भन्ने नै हो । सामाजिक दुरी कायम गर्ने नै हो । संक्रमणबाट कसरी बचेर काम गर्ने भन्ने नै हो । मैले कोभिडलाई &lsquo;नो भीड&rsquo; भन्ने गरेको छु । अब नोभिडको कन्सेप्टमै हामी अगाडि जानुपर्छ ।</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	संसारमा लकडाउन समयपछि नेपाल नै पहिलो देश होला सायद ५१ औं दिनसम्म पनि कोरोना संक्रमित भएकामध्ये एक जनाको पनि मृत्यु भएको हामीले भन्नु परेन । लामो समयसम्म नेपाल सुरक्षित छ भनेर बाहिरका धेरै मान्छे विमान नै चार्टर गरेर नेपाल आउन खोजेका थिए । त्यो भनेको हाम्रा लागि एड्भान्टेज हो जस्तो लाग्छ ।</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	अहिलेको समयमा सबैभन्दा चाहिने भनेको घर नै रहेछ । बैंकमा भएको पैसाको खास प्रयोग छैन, सेयरहरुको कुनै भ्यालु छैन, मसँग भएको गाडीको प्रयोग नै छैन । सुनको कुनै महत्व नै छैन, संसारमा जबजब कठिन समय आउँछ, त्यस बेला सबैभन्दा बढी महत्वपूर्ण भनेको घर नै हुने रहेछ । मान्छेको सबैभन्दा सुरक्षित र लगानी भनेको घर नै रहेछ भन्ने मान्छेले बुझे ।</p>\r\n<p style=\"text-align: justify;\">\r\n	<iframe allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" frameborder=\"0\" height=\"350\" src=\"https://www.youtube.com/embed/aZx1jXA-kwA\" width=\"643\"></iframe></p>\r\n<p style=\"text-align: justify;\">\r\n	लकडाउनको समयमा घरलाई कसरी मान्छेहरुले हेरिरहेका छन् त भनेर हामीले एउटा सर्वेक्षण नै गर्यौं । काठमाडौं उपत्यका गरिएको त्यो सर्वेक्षणले काठमाडौं उपत्यकाभित्रै पनि रिङरोड भित्रै बस्न चाहनेहरु देखियो । १६ प्रतिशतले अहिले जहाँ बसिरहेको छ त्यहीँ ठीक भनेका छन्, अरु घर परिवर्तन गर्न खोजेको देखिएको छ । चार आनासम्मको जग्गामा घर बनाउन चाहनेहरुको संख्या ३१ प्रतिशत देखिन्छ भने ४ देखि ८ आनासम्मको जग्गामा घर बनाउन खोज्नेहरु ४० प्रतिशत माथि रहेको देखिएको छ ।</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	१ करोड रुपैयाँसम्मको घर खोज्नेहरुको संख्या निकै उच्च देखियो । घर आफैले बनाउने भन्ने संख्या थोरै देखियो । यसले मान्छेलाई घर महत्वपूर्ण रहेछ भन्ने देखाएको छ । लकडाउनपछि घरको बजार बढ्ने देखिएको छ । विदेशमा बस्ने नेपालीहरुले पनि अहिले मातृभूमि नै ठुलो रहेछ, नेपाल नै फर्कनु पर्ने रहेछ भन्ने सोच्न थालेका छन् ।</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	विदेशमा बसे पनि नेपालमा एउटा घर त हुनुपर्ने रहेछ भन्ने पनि धेरै सोच विदेशमा रहेका धेरै नेपालीहरुमा आएको छ । त्यो भनेको हाम्रो देशको अर्थतन्त्रमा ठुलो योगदान हुन सक्छ । त्यसरी बैंकिङ माध्यमबाट पैसा आयो भने त्यसले अर्थतन्त्रमा पनि योगदान दिन्छ र त्यसरी नेपालमा घर जग्गा जोड्न खोज्नेहरुलाई स्वागत पनि राज्यले गर्नुपर्छ ।</p>\r\n<p style=\"text-align: justify;\">\r\n	<img alt=\"\" src=\"/assets/userfiles/images/omsir2.jpg\" style=\"width: 643px; height: 350px;\" /></p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<span style=\"font-size:16px;\"><strong><span style=\"background-color:#008000;\">पूर्वाधारमा सीप भएकालाई नयाँ अवसर </span></strong></span></p>\r\n<p style=\"text-align: justify;\">\r\n	रोजगारीका लागि विदेश गएका नेपालीहरु नेपाल फर्कने हो भने त्यो देशका लागि ठुलो सम्पत्ति हुन्छ । मध्यपूर्वी देशमा रोजगारीमा रहेका सीपयुक्त कामदारहरु हाम्रो देशको लागि ठुलो सम्पत्ति हो । किनभने कतार, दुबई, साउदी जहाँ गए पनि त्यहाँको जति पनि राम्रो पूर्वाधार बनेका छन्, त्यो होटल, घर बनाउनेहरुमा नेपालीहरुको संलग्नता छ । त्यसैले उनीहरु निर्माण क्षेत्रका कामदार नै हुन् । रोजगारीका गएकामध्ये ७० प्रतिशतसम्म निर्माण क्षेत्रमा नै गएका छन् । जो मान्छेहरुको सीप अन्तर्राष्टिय स्तरको सीप जानिसकेकाहरु छन्, उनीहरुसँग त्यो क्षमता पनि छ । उनीहरुलाई स्वदेश आउनासाथै पहिलो दिनदेखि नै रोजगारीको अवसर हुन्छ । नेपालबाट भारतमा मात्रै ३ खर्ब रुपैयाँ रेमिट्यान्स भएर जान्छ । हामीकहाँ ७&ndash;८ खर्ब रमिट्यान्सबाट आउँछ । नेपाल सातौं मुलुक रहेछ, भारतमा रेमिट्यान्स भित्र्याउने । खाडी मुलुकबाट नेपाली सीपयुक्त जनशक्ति आउनासाथ नै त्यो ठाउँमा हाम्रो मान्छेले रोजगारी पाउने भए नी ।</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<span style=\"font-size:16px;\"><strong><span style=\"background-color:#008000;\">ठुला निर्माण तिहार, छठपछि मात्र</span></strong></span></p>\r\n<p style=\"text-align: justify;\">\r\n	नेपालमा भइरहेका ठुला परियोजना चाहेर पनि तिहार, छठ नसकिदासम्म सुरु हुने देखिँदैन । किनभने परियोजनाका लागि एउटा कम्पोनन्ट मिलेर मात्रै हुँदैन, धेरै कम्पोनेन्ट मिल्नुपर्छ, अहिले काभिडको समस्याको कारणले गर्दा त्यो सम्भव छैन । यो क्षेत्रले रोजगारी दिने, घर बनाउन सिमेन्टको प्रयोग हुने भएकाले सिमेन्टको खपत बढ्ने हुँदा सिमेन्ट, इटा, डन्डी, बैंकहरुलाई नयाँ परियोजनामा फन्डिङ गर्न पनि सहयोग पुर्याउँछ । यो व्यवसायका कारण धेरै व्यवसाय चल्नेछन् । केही न केही रुपले अर्थतन्त्रलाई चलायमान बनाउने छ ।</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<span style=\"font-size:16px;\"><strong><span style=\"background-color:#008000;\">कमर्सियल रियल स्टेट जोखिममा </span></strong></span></p>\r\n<p style=\"text-align: justify;\">\r\n	कोरानोपछि नेपालको जग्गाको कारोबार के हुन्छ भन्ने विषयमा लकडाउन खुलिसकेपछि मात्रै थाहाँ हुन्छ, अहिले थाहा हुँदैन । अहिले जोखिम भने कमर्सियल रियल स्टेटमा हुन्छ । सपिङ मल, रिटेल, अफिस स्पेसेस्मा केही समयका लागि तत्काल असर पर्छ । तर, रेसिडेन्सीयल रियल स्टेटमा असर पर्दैन । अहिलेको बेलामा सुःख, सुविधालाई हेर्ने हो भने आवासिय रियल स्टेटको बजार उच्च हुन्छ । त्यसैमा लगानीको सन्दर्भबाट हेर्ने हो भने कोरोना भाइरस अगाडि मान्छेको खर्च धेरैमा बाँडिन्थ्यो । अहिले अनावश्यक खर्चहरु सबै रोकियो । धेरै समय घरमा बस्ने भएपछि घरमा नै लगानी बढाउने भए । घरलाई हामीले विदेशीले जस्तो सामानको रुपमा हेर्दैनौं, सम्पत्तिको रुपमा हेर्छौ । त्यसैले अहिलेको बेलासम्म यो क्षेत्रका लागि राम्रो हुन्छ र अर्थतन्त्रका लागि पनि राम्रो गर्छ । देशको धेरै क्षेत्र प्रभावित भएको छ । देशको अर्थतन्त्रलाई चलायमान बनाउन यो क्षेत्रले सहयोग गर्छ ।</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<span style=\"font-size:16px;\"><strong><span style=\"background-color:#008000;\">विदेशीलाई अपार्टमेन्ट </span></strong></span></p>\r\n<p style=\"text-align: justify;\">\r\n	संसारभरी विदेशीले अपार्टमेन्ट किन्न पाउने भन्ने व्यवस्था छ । हाम्रोमा पनि दुई पटकसम्म बजेटमै घोषणा भएको छ । २ लाख डलरसम्मको अपार्टमेन्ट विदेशीले किन्न पाउने र पाँच वर्षसम्म विक्री गर्न नपाउने भनेको छ । हामीले नयाँ नीति नै बनाउनु पर्दैन, भएका नीति कार्यान्वयन गरिदिए मात्रै पनि हुन्छ । विदेशमा बस्ने नेपालीहरुलाई राज्यले बोलाउनु पर्यो । त्यसले राज्यलाई नै फाइदा गर्छ । विदेशमा बस्नेले नेपालमा घर किन्दा राजस्वमा केही प्रतिशत छुट दिनुपर्छ । त्यसले सरकारको राजस्व पनि घट्दैन र विदेशमा बस्नेहरुलाई पनि आकर्षित गरेको देखिन्छ । विदेशमा कमाएर ल्याएर नेपालमा कर्म गर्ने ठाउँ बनाउन राज्यले पनि सहयोग गर्नुपर्छ । अपार्टमेन्ट खरिद गर्न मात्रै होइन प्रत्यक्ष वैदेशिक लगानी पनि ल्याउन सक्ने र नाफा लैजान पाउने व्यवस्था गरिदिनुपर्छ । यसका लागि छुट्टै नीति बनाइराख्नु पनि पर्दैन । नीति छ, भएको नीति कार्यान्वयन मात्रै गरिदिए हुन्छ ।</p>\r\n', '2020-05-24', '0000-00-00', 19, 1, 'XvuTu-omsir.jpg', 'yC7rn-luckdown.jpg', '', 1, 0, '', '', '2020-05-25 13:03:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blogcomment`
--

CREATE TABLE `tbl_blogcomment` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` longtext NOT NULL,
  `content` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `sortorder` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `special` tinyint(4) NOT NULL DEFAULT 0,
  `meta_title` varchar(200) NOT NULL,
  `meta_keywords` varchar(300) NOT NULL,
  `meta_description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image`, `content`, `status`, `sortorder`, `slug`, `special`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(9, 'Apartment', 'a:1:{i:0;s:19:\"P8ji2-apartment.jpg\";}', 'content1', '1', '1', 'apartment', 0, 'Apartment', 'Apartment', 'Apartment'),
(10, 'Bunglow', 'a:1:{i:0;s:20:\"fD885-untitled-2.jpg\";}', 'content2', '1', '2', 'bunglow', 0, 'Bunglow', 'Bunglow', 'Bunglow'),
(12, 'Vacant Land', 'a:1:{i:0;s:14:\"E7gvo-land.jpg\";}', '', '1', '3', 'vacant-land', 1, 'Vacant Land', 'Vacant Land           ', 'Vacant Land                     '),
(13, 'Commercial', 'a:1:{i:0;s:20:\"H4FZM-commercial.jpg\";}', '', '1', '4', 'commercial', 0, 'commerical', '                                                                                                                                                                          commerical                                                                      ', '                                                                                                                                                                commerical                              '),
(14, 'Villa', 'a:1:{i:0;s:20:\"sKdNa-untitled-3.jpg\";}', 'Villa', '1', '5', 'villa', 0, 'Villa', '                                            Villa                                    ', '                                               Villa                                 '),
(15, 'Individual Residence', 'a:1:{i:0;s:19:\"VQg0I-resinence.jpg\";}', 'Residence', '1', '6', 'individual-residence', 0, 'Individual Residence', 'Individual Residence                               ', 'Individual Residence                                 ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_configs`
--

CREATE TABLE `tbl_configs` (
  `id` int(11) NOT NULL,
  `sitetitle` varchar(200) NOT NULL,
  `icon_upload` varchar(200) NOT NULL,
  `logo_upload` varchar(200) NOT NULL,
  `sitename` varchar(50) NOT NULL,
  `location_type` tinyint(1) NOT NULL DEFAULT 1,
  `location_map` mediumtext NOT NULL,
  `location_image` varchar(250) NOT NULL,
  `fiscal_address` tinytext NOT NULL,
  `mail_address` tinytext NOT NULL,
  `contact_info` tinytext NOT NULL,
  `fax` varchar(100) NOT NULL,
  `email_address` tinytext NOT NULL,
  `breif` text NOT NULL,
  `copyright` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `site_keywords` tinytext NOT NULL,
  `site_description` tinytext NOT NULL,
  `google_anlytics` text NOT NULL,
  `schema_code` text NOT NULL,
  `linksrc` varchar(250) NOT NULL,
  `robot_txt` text NOT NULL,
  `book_type` tinyint(4) NOT NULL DEFAULT 1,
  `hotel_page` varchar(200) NOT NULL,
  `hotel_code` tinytext NOT NULL,
  `template` varchar(100) NOT NULL,
  `admin_template` varchar(100) NOT NULL,
  `headers` text DEFAULT NULL,
  `footer` text DEFAULT NULL,
  `search_box` text DEFAULT NULL,
  `search_result` text DEFAULT NULL,
  `action` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_configs`
--

INSERT INTO `tbl_configs` (`id`, `sitetitle`, `icon_upload`, `logo_upload`, `sitename`, `location_type`, `location_map`, `location_image`, `fiscal_address`, `mail_address`, `contact_info`, `fax`, `email_address`, `breif`, `copyright`, `meta_title`, `site_keywords`, `site_description`, `google_anlytics`, `schema_code`, `linksrc`, `robot_txt`, `book_type`, `hotel_page`, `hotel_code`, `template`, `admin_template`, `headers`, `footer`, `search_box`, `search_result`, `action`) VALUES
(1, 'YMBA (Young Men\'s Buddhist Association)', 'S2IN5-logo-removebg-preview.png', 'BhUoZ-logo-removebg-preview.png', 'YMBA (Young Men\'s Buddhist Association)', 1, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1021.9122611246486!2d85.32187566730987!3d27.67013383587417!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb19d020b15f71%3A0x5ea6dda75941b021!2sYoung%20Men\'s%20Buddhist%20Association%20of%20Nepal%20(YMBA)!5e0!3m2!1sen!2snp!4v1727420973596!5m2!1sen!2snp', '', 'Lok Kriti Mahabihar, Kinhu-bahi, Iti tole Ward no 19, Lalitpur, Nepal', '', '01-5538413', '', 'prachar.ymba@gmail.com', '<div class=\"col-md-3 col-sm-6 col-xs-12\">\r\n	<div class=\"footer-links\">\r\n		<h3 class=\"white\">\r\n			&nbsp;</h3>\r\n	</div>\r\n</div>\r\n', 'Copyright © {year} YMBA (Young Men\'s Buddhist Association). All Rights Reserved.', 'YMBA (Young Men\'s Buddhist Association)', 'YMBA (Young Men\'s Buddhist Association)', 'YMBA (Young Men\'s Buddhist Association)', 'UA-12345679858', '', '', 'User-agent: *\r\nDisallow: \r\nDisallow: /cgi-bin/', 0, '', '', 'cms', 'blue', '', '', 'Develop By Amit prajapati', 'Develop By Amit prajapati', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `country_code`, `country_name`, `status`) VALUES
(1, 'AF', 'Afghanistan', 1),
(2, 'AL', 'Albania', 1),
(3, 'DZ', 'Algeria', 1),
(4, 'DS', 'American Samoa', 1),
(5, 'AD', 'Andorra', 1),
(6, 'AO', 'Angola', 1),
(7, 'AI', 'Anguilla', 1),
(8, 'AQ', 'Antarctica', 1),
(9, 'AG', 'Antigua and Barbuda', 1),
(10, 'AR', 'Argentina', 1),
(11, 'AM', 'Armenia', 1),
(12, 'AW', 'Aruba', 1),
(13, 'AU', 'Australia', 1),
(14, 'AT', 'Austria', 1),
(15, 'AZ', 'Azerbaijan', 1),
(16, 'BS', 'Bahamas', 1),
(17, 'BH', 'Bahrain', 1),
(18, 'BD', 'Bangladesh', 1),
(19, 'BB', 'Barbados', 1),
(20, 'BY', 'Belarus', 1),
(21, 'BE', 'Belgium', 1),
(22, 'BZ', 'Belize', 1),
(23, 'BJ', 'Benin', 1),
(24, 'BM', 'Bermuda', 1),
(25, 'BT', 'Bhutan', 1),
(26, 'BO', 'Bolivia', 1),
(27, 'BA', 'Bosnia and Herzegovina', 1),
(28, 'BW', 'Botswana', 1),
(29, 'BV', 'Bouvet Island', 1),
(30, 'BR', 'Brazil', 1),
(31, 'IO', 'British Indian Ocean Territory', 1),
(32, 'BN', 'Brunei Darussalam', 1),
(33, 'BG', 'Bulgaria', 1),
(34, 'BF', 'Burkina Faso', 1),
(35, 'BI', 'Burundi', 1),
(36, 'KH', 'Cambodia', 1),
(37, 'CM', 'Cameroon', 1),
(38, 'CA', 'Canada', 1),
(39, 'CV', 'Cape Verde', 1),
(40, 'KY', 'Cayman Islands', 1),
(41, 'CF', 'Central African Republic', 1),
(42, 'TD', 'Chad', 1),
(43, 'CL', 'Chile', 1),
(44, 'CN', 'China', 1),
(45, 'CX', 'Christmas Island', 1),
(46, 'CC', 'Cocos (Keeling) Islands', 1),
(47, 'CO', 'Colombia', 1),
(48, 'KM', 'Comoros', 1),
(49, 'CG', 'Congo', 1),
(50, 'CK', 'Cook Islands', 1),
(51, 'CR', 'Costa Rica', 1),
(52, 'HR', 'Croatia (Hrvatska)', 1),
(53, 'CU', 'Cuba', 1),
(54, 'CY', 'Cyprus', 1),
(55, 'CZ', 'Czech Republic', 1),
(56, 'DK', 'Denmark', 1),
(57, 'DJ', 'Djibouti', 1),
(58, 'DM', 'Dominica', 1),
(59, 'DO', 'Dominican Republic', 1),
(60, 'TP', 'East Timor', 1),
(61, 'EC', 'Ecuador', 1),
(62, 'EG', 'Egypt', 1),
(63, 'SV', 'El Salvador', 1),
(64, 'GQ', 'Equatorial Guinea', 1),
(65, 'ER', 'Eritrea', 1),
(66, 'EE', 'Estonia', 1),
(67, 'ET', 'Ethiopia', 1),
(68, 'FK', 'Falkland Islands (Malvinas)', 1),
(69, 'FO', 'Faroe Islands', 1),
(70, 'FJ', 'Fiji', 1),
(71, 'FI', 'Finland', 1),
(72, 'FR', 'France', 1),
(73, 'FX', 'France, Metropolitan', 1),
(74, 'GF', 'French Guiana', 1),
(75, 'PF', 'French Polynesia', 1),
(76, 'TF', 'French Southern Territories', 1),
(77, 'GA', 'Gabon', 1),
(78, 'GM', 'Gambia', 1),
(79, 'GE', 'Georgia', 1),
(80, 'DE', 'Germany', 1),
(81, 'GH', 'Ghana', 1),
(82, 'GI', 'Gibraltar', 1),
(83, 'GK', 'Guernsey', 1),
(84, 'GR', 'Greece', 1),
(85, 'GL', 'Greenland', 1),
(86, 'GD', 'Grenada', 1),
(87, 'GP', 'Guadeloupe', 1),
(88, 'GU', 'Guam', 1),
(89, 'GT', 'Guatemala', 1),
(90, 'GN', 'Guinea', 1),
(91, 'GW', 'Guinea-Bissau', 1),
(92, 'GY', 'Guyana', 1),
(93, 'HT', 'Haiti', 1),
(94, 'HM', 'Heard and Mc Donald Islands', 1),
(95, 'HN', 'Honduras', 1),
(96, 'HK', 'Hong Kong', 1),
(97, 'HU', 'Hungary', 1),
(98, 'IS', 'Iceland', 1),
(99, 'IN', 'India', 1),
(100, 'IM', 'Isle of Man', 1),
(101, 'ID', 'Indonesia', 1),
(102, 'IR', 'Iran (Islamic Republic of)', 1),
(103, 'IQ', 'Iraq', 1),
(104, 'IE', 'Ireland', 1),
(105, 'IL', 'Israel', 1),
(106, 'IT', 'Italy', 1),
(107, 'CI', 'Ivory Coast', 1),
(108, 'JE', 'Jersey', 1),
(109, 'JM', 'Jamaica', 1),
(110, 'JP', 'Japan', 1),
(111, 'JO', 'Jordan', 1),
(112, 'KZ', 'Kazakhstan', 1),
(113, 'KE', 'Kenya', 1),
(114, 'KI', 'Kiribati', 1),
(115, 'KP', 'Korea, Democratic People\'s Republic of', 1),
(116, 'KR', 'Korea, Republic of', 1),
(117, 'XK', 'Kosovo', 1),
(118, 'KW', 'Kuwait', 1),
(119, 'KG', 'Kyrgyzstan', 1),
(120, 'LA', 'Lao People\'s Democratic Republic', 1),
(121, 'LV', 'Latvia', 1),
(122, 'LB', 'Lebanon', 1),
(123, 'LS', 'Lesotho', 1),
(124, 'LR', 'Liberia', 1),
(125, 'LY', 'Libyan Arab Jamahiriya', 1),
(126, 'LI', 'Liechtenstein', 1),
(127, 'LT', 'Lithuania', 1),
(128, 'LU', 'Luxembourg', 1),
(129, 'MO', 'Macau', 1),
(130, 'MK', 'Macedonia', 1),
(131, 'MG', 'Madagascar', 1),
(132, 'MW', 'Malawi', 1),
(133, 'MY', 'Malaysia', 1),
(134, 'MV', 'Maldives', 1),
(135, 'ML', 'Mali', 1),
(136, 'MT', 'Malta', 1),
(137, 'MH', 'Marshall Islands', 1),
(138, 'MQ', 'Martinique', 1),
(139, 'MR', 'Mauritania', 1),
(140, 'MU', 'Mauritius', 1),
(141, 'TY', 'Mayotte', 1),
(142, 'MX', 'Mexico', 1),
(143, 'FM', 'Micronesia, Federated States of', 1),
(144, 'MD', 'Moldova, Republic of', 1),
(145, 'MC', 'Monaco', 1),
(146, 'MN', 'Mongolia', 1),
(147, 'ME', 'Montenegro', 1),
(148, 'MS', 'Montserrat', 1),
(149, 'MA', 'Morocco', 1),
(150, 'MZ', 'Mozambique', 1),
(151, 'MM', 'Myanmar', 1),
(152, 'NA', 'Namibia', 1),
(153, 'NR', 'Nauru', 1),
(154, 'NP', 'Nepal', 1),
(155, 'NL', 'Netherlands', 1),
(156, 'AN', 'Netherlands Antilles', 1),
(157, 'NC', 'New Caledonia', 1),
(158, 'NZ', 'New Zealand', 1),
(159, 'NI', 'Nicaragua', 1),
(160, 'NE', 'Niger', 1),
(161, 'NG', 'Nigeria', 1),
(162, 'NU', 'Niue', 1),
(163, 'NF', 'Norfolk Island', 1),
(164, 'MP', 'Northern Mariana Islands', 1),
(165, 'NO', 'Norway', 1),
(166, 'OM', 'Oman', 1),
(167, 'PK', 'Pakistan', 1),
(168, 'PW', 'Palau', 1),
(169, 'PS', 'Palestine', 1),
(170, 'PA', 'Panama', 1),
(171, 'PG', 'Papua New Guinea', 1),
(172, 'PY', 'Paraguay', 1),
(173, 'PE', 'Peru', 1),
(174, 'PH', 'Philippines', 1),
(175, 'PN', 'Pitcairn', 1),
(176, 'PL', 'Poland', 1),
(177, 'PT', 'Portugal', 1),
(178, 'PR', 'Puerto Rico', 1),
(179, 'QA', 'Qatar', 1),
(180, 'RE', 'Reunion', 1),
(181, 'RO', 'Romania', 1),
(182, 'RU', 'Russian Federation', 1),
(183, 'RW', 'Rwanda', 1),
(184, 'KN', 'Saint Kitts and Nevis', 1),
(185, 'LC', 'Saint Lucia', 1),
(186, 'VC', 'Saint Vincent and the Grenadines', 1),
(187, 'WS', 'Samoa', 1),
(188, 'SM', 'San Marino', 1),
(189, 'ST', 'Sao Tome and Principe', 1),
(190, 'SA', 'Saudi Arabia', 1),
(191, 'SN', 'Senegal', 1),
(192, 'RS', 'Serbia', 1),
(193, 'SC', 'Seychelles', 1),
(194, 'SL', 'Sierra Leone', 1),
(195, 'SG', 'Singapore', 1),
(196, 'SK', 'Slovakia', 1),
(197, 'SI', 'Slovenia', 1),
(198, 'SB', 'Solomon Islands', 1),
(199, 'SO', 'Somalia', 1),
(200, 'ZA', 'South Africa', 1),
(201, 'GS', 'South Georgia South Sandwich Islands', 1),
(202, 'ES', 'Spain', 1),
(203, 'LK', 'Sri Lanka', 1),
(204, 'SH', 'St. Helena', 1),
(205, 'PM', 'St. Pierre and Miquelon', 1),
(206, 'SD', 'Sudan', 1),
(207, 'SR', 'Suriname', 1),
(208, 'SJ', 'Svalbard and Jan Mayen Islands', 1),
(209, 'SZ', 'Swaziland', 1),
(210, 'SE', 'Sweden', 1),
(211, 'CH', 'Switzerland', 1),
(212, 'SY', 'Syrian Arab Republic', 1),
(213, 'TW', 'Taiwan', 1),
(214, 'TJ', 'Tajikistan', 1),
(215, 'TZ', 'Tanzania, United Republic of', 1),
(216, 'TH', 'Thailand', 1),
(217, 'TG', 'Togo', 1),
(218, 'TK', 'Tokelau', 1),
(219, 'TO', 'Tonga', 1),
(220, 'TT', 'Trinidad and Tobago', 1),
(221, 'TN', 'Tunisia', 1),
(222, 'TR', 'Turkey', 1),
(223, 'TM', 'Turkmenistan', 1),
(224, 'TC', 'Turks and Caicos Islands', 1),
(225, 'TV', 'Tuvalu', 1),
(226, 'UG', 'Uganda', 1),
(227, 'UA', 'Ukraine', 1),
(228, 'AE', 'United Arab Emirates', 1),
(229, 'GB', 'United Kingdom', 1),
(230, 'US', 'United States', 1),
(231, 'UM', 'United States minor outlying islands', 1),
(232, 'UY', 'Uruguay', 1),
(233, 'UZ', 'Uzbekistan', 1),
(234, 'VU', 'Vanuatu', 1),
(235, 'VA', 'Vatican City State', 1),
(236, 'VE', 'Venezuela', 1),
(237, 'VN', 'Vietnam', 1),
(238, 'VG', 'Virgin Islands (British)', 1),
(239, 'VI', 'Virgin Islands (U.S.)', 1),
(240, 'WF', 'Wallis and Futuna Islands', 1),
(241, 'EH', 'Western Sahara', 1),
(242, 'YE', 'Yemen', 1),
(243, 'ZR', 'Zaire', 1),
(244, 'ZM', 'Zambia', 1),
(245, 'ZW', 'Zimbabwe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `district_headquarter` varchar(100) NOT NULL,
  `province_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `sortorder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`id`, `title`, `district_headquarter`, `province_id`, `status`, `sortorder`) VALUES
(1, 'Ilam', 'Ilam', 1, 1, 7),
(2, 'Jhapa', 'Chandragadhi', 1, 1, 8),
(3, 'Panchthar', 'Phidim', 1, 1, 9),
(4, 'Bhaktapur', 'Bhaktapur', 3, 1, 2),
(5, 'Lalitpur', 'Patan', 3, 1, 3),
(6, 'Kathmandu', 'Kathmandu', 3, 1, 1),
(7, 'Rolpa', 'Liwang', 5, 1, 13),
(8, 'Eastern Rukum', 'Rukumkot', 5, 1, 14),
(9, 'Salyan', 'Salyan Khalanga', 6, 1, 15),
(10, 'Taplejung', 'Taplejung', 1, 1, 10),
(11, 'Dhading', 'Dhading Besi', 3, 1, 5),
(12, 'Pyuthan', 'Pyuthan Khalanga', 4, 1, 12),
(13, 'Kavrepalanchok', 'Dhulikhel', 3, 1, 4),
(14, 'Dang Deukhuri', 'Ghorahi', 5, 1, 11),
(15, 'Nuwakot', 'Bidur', 3, 1, 6),
(16, 'Rasuwa', 'Dhunche', 3, 1, 16),
(17, 'Sindhupalchok', 'Chautara', 3, 1, 17),
(18, 'Dolpa', 'Dolpa', 6, 1, 18),
(19, 'Humla', 'Simikot', 6, 1, 19),
(20, 'Jumla', 'Jumla Khalanga', 6, 1, 20),
(21, 'Kalikot', 'Kalikot', 6, 1, 21),
(22, 'Mugu', 'Gamgadhi', 6, 1, 22),
(23, 'Khotang', 'Diktel', 1, 1, 23),
(24, 'Okhaldhunga', 'Okhaldhunga', 1, 1, 24),
(25, 'Saptari', 'Rajbiraj', 2, 1, 25),
(26, 'Siraha', 'Siraha', 2, 1, 26),
(27, 'Solukhumbu', 'Salleri', 1, 1, 27),
(28, 'Udayapur', 'Gaighat', 1, 1, 28),
(29, 'Bhojpur', 'Bhojpur', 1, 1, 29),
(30, 'Dhankuta', 'Dhankuta', 1, 1, 30),
(31, 'Morang', 'Biratnagar', 1, 1, 31),
(32, 'Sankhuwasabha', 'Khandbari', 1, 1, 32),
(33, 'Sunsari', 'Inaruwa', 1, 1, 33),
(34, 'Terhathum', 'Manglung', 1, 1, 34),
(35, 'Bara', 'Kalaiya', 2, 1, 35),
(36, 'Chitwan', 'Bharatpur', 3, 1, 36),
(37, 'Makwanpur', 'Hetauda', 3, 1, 37),
(38, 'Parsa', 'Birgunj', 2, 1, 38),
(39, 'Rautahat', 'Gaur', 2, 1, 39),
(40, 'Baitadi', 'Baitadi', 7, 1, 40),
(41, 'Dadeldhura', 'Dadeldhura', 7, 1, 41),
(42, 'Darchula', 'Darchula', 7, 1, 42),
(43, 'Kanchanpur', 'Mahendara Nagar', 7, 1, 43),
(44, 'Gorkha', 'Gorkha', 4, 1, 44),
(45, 'Kaski', 'Pokhara', 4, 1, 45),
(46, 'Lamjung', 'Bensi Sahar', 4, 1, 46),
(47, 'Manang', 'Chame', 4, 1, 47),
(48, 'Syangja', 'Syangja', 4, 1, 48),
(49, 'Tanahu', 'Damauli', 4, 1, 49),
(50, 'Dhanusa', 'Janakpur', 2, 1, 50),
(51, 'Dolakha', 'Bhimeshwar', 3, 1, 51),
(52, 'Mahottari', 'Jaleswor', 2, 1, 52),
(53, 'Ramechhap', 'Manthali', 3, 1, 53),
(54, 'Sarlahi', 'Malangwa', 2, 1, 54),
(55, 'Sindhuli', 'Sindhuli Madhi', 3, 1, 55),
(56, 'Arghakhanchi', 'Sandhikharka', 5, 1, 56),
(57, 'Gulmi', 'Tamghas', 5, 1, 57),
(58, 'Kapilvastu', 'Taulihawa', 5, 1, 58),
(59, 'Parasi', 'Ramgram', 5, 1, 59),
(60, 'Palpa', 'Tansen', 5, 1, 60),
(61, 'Rupandehi', 'Bhairahawa', 5, 1, 61),
(62, 'Achham', 'Mangalsen', 7, 1, 62),
(63, 'Bajhang', 'Chainpur', 7, 1, 63),
(64, 'Bajura', 'Martadi', 7, 1, 64),
(65, 'Doti', 'Dipayal', 7, 1, 65),
(66, 'Kailali', 'Dhangadhi', 7, 1, 66),
(67, 'Banke', 'Nepalgunj', 5, 1, 67),
(68, 'Bardiya', 'Gulariya', 5, 1, 68),
(69, 'Dailekh', 'Dullu', 6, 1, 69),
(70, 'Jajarkot', 'Khalanga', 6, 1, 70),
(71, 'Surkhet', 'Surkhet', 6, 1, 71),
(72, 'Baglung', 'Baglung', 4, 1, 72),
(73, 'Mustang', 'Jomsom', 4, 1, 73),
(74, 'Myagdi', 'Beni', 4, 1, 74),
(75, 'Parbat', 'Kusma', 4, 1, 75),
(76, 'Nawalpur', 'Kawasoti', 4, 1, 76),
(77, 'Western Rukum', 'Musikot', 6, 1, 77);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `image` mediumtext NOT NULL,
  `banner_image` text NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` int(11) NOT NULL,
  `homepage` int(11) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `event_stdate` date NOT NULL,
  `published_in` varchar(255) NOT NULL,
  `type` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_events`
--

INSERT INTO `tbl_events` (`id`, `slug`, `title`, `brief`, `content`, `image`, `banner_image`, `linksrc`, `linktype`, `homepage`, `status`, `sortorder`, `added_date`, `meta_keywords`, `meta_description`, `event_stdate`, `published_in`, `type`) VALUES
(106, 'the-himalayan-times', 'The Himalayan Times', '', '<p>\r\n	<img alt=\"\" src=\"/project/userfiles/images/himalayan.jpg\"  /></p>\r\n', 'a:1:{i:0;s:19:\"tlmyd-himalayan.jpg\";}', 'a:0:{}', '', 0, 1, 0, 1, '2023-04-06 17:00:02', '', '', '2021-08-23', 'The Himalayan Times', 1),
(107, 'first-agm', 'First AGM', '', '<p>\r\n	<img alt=\"\" src=\"/project/userfiles/images/music1.jpg\" /></p>\r\n<p>\r\n	<img alt=\"\" src=\"/project/userfiles/images/music.jpg\" /></p>\r\n', 'a:1:{i:0;s:13:\"qo43i-agm.jpg\";}', 'a:0:{}', '', 0, 1, 0, 3, '2023-04-06 17:05:28', '', '', '2022-04-30', 'Admin', 1),
(108, 'elected-committee-members-2022', 'Elected Committee Members 2022', '', '<img alt=\"\" src=\"/project/userfiles/images/2022members.jpg\" />', 'a:1:{i:0;s:19:\"wyIKC-committee.jpg\";}', 'a:0:{}', '', 0, 1, 0, 2, '2023-04-06 17:08:56', '', '', '2022-01-01', 'Admin', 1),
(109, 'musician-baskota-honored-with-cash-by-music-video-directors-society', 'Musician Baskota honored with cash by Music Video Directors Society', 'नेपाल म्युजिक भिडिओ निर्देशक समाजको दोस्रो वार्षिक उत्सव, साधारणसभा तथा स्रष्टा सम्मान कार्यक', '<p>\r\n	<img src=\"https://emusicdiary.com/wp-content/uploads/2023/08/368629921_240371035641907_7239359544569544665_n.jpg\" /></p>\r\n<p>\r\n	<span style=\"color: rgb(68, 68, 68); font-family: Mukta; font-size: 20px;\">कार्यक्रममा संस्थाका उपाध्यक्ष निशान घिमिरे, सचिव प्रकाश धिताल, सहसचिव समन अधिकारी, सहकोषाध्यक्ष डि. आर. सुजन, सदस्यहरु गम्भीर बिष्ट, दयाराम घिमिरे, कृष्णदेव रूपाखेती, सुरेन्द्र बसेल, जनक सिंह, देवेन्द्र कुँवर र देवराज आचार्यको सक्रिय सहभागिता रहेको थियो । कार्यक्रममा म्यूजिक भिडिओको स्तरलाई एउटा उचाइमा पुर्याउन सफल म्यूजिक भिडिओ निर्देशकद्वय स्व. आलोक नेम्वाङ र स्व. सुरज श्रेष्ठको स्मृतिमा प्रथम आलोक-सुरज स्मृति पुरस्कार स्वरूप नगद राशी रू. ११,१११/ (एघार हजार एक सय एघार) सहित सङ्गीतरत्नको उपाधीले विभूषित प्रतिष्ठित सङ्गीतकार शम्भुजीत बासकोटालाई सम्मानित गरिएको थियो ।</span><br style=\"box-sizing: border-box; color: rgb(68, 68, 68); font-family: Mukta; font-size: 20px;\" />\r\n	<br style=\"box-sizing: border-box; color: rgb(68, 68, 68); font-family: Mukta; font-size: 20px;\" />\r\n	<span style=\"color: rgb(68, 68, 68); font-family: Mukta; font-size: 20px;\">कार्यक्रममा नेपाली म्यूजिक भिडिओ र सञ्चार जगतमा आफ्नो अथक मेहनतकासाथ विशेष योगदान पुर्याउने वरिष्ठ लोकदोहोरी गायक प्रेमराजा महत, वरिष्ठ भिडिओ सम्पादक प्रकाश तुलाधर, वरिष्ठ गायक आनन्द कार्की, वरिष्ठ छायाकार तथा कान्तिपुर टेलिभिजनका प्रमुख कार्यकारी निर्माता धिरज जङ्ग शाह, पहिलो महिला भिडिओ निर्देशक, सञ्चारकर्मी तथा समाजसेवी अनुपा श्रेष्ठ र वरिष्ठ भिडिओ निर्देशक शङ्कर बिसीलाई विशेष सम्मान गरिएको थियो ।</span></p>\r\n<p>\r\n	<img src=\"https://emusicdiary.com/wp-content/uploads/2023/08/368581560_261273466785934_6601990448622193965_n.jpg\" /></p>\r\n<p>\r\n	<span style=\"color: rgb(68, 68, 68); font-family: Mukta; font-size: 20px;\">यसैगरी समारोहमा चर्चित गायक यस कुमार, गीतकार प्रकाश सुवेदी, पप गायिका तथा कार्यक्रम सञ्चालिका प्राश्ना शाक्य, चर्चित गीतकार अम्बिका गुरुङ, गीतकार तथा चलचित्र निर्देशक सत्यराज चौलागाईँ, नायिका सुशिला थापा, चर्चित लोकगायक रामजी खाँड, चर्चित गायक तथा नायक दुर्गेश थापा, नेपाली हाँस्यव्यङ्ग्य जगतमा पछिल्लो समयमा औधी रुचाइएका कलाकार सागर लम्साल(बले), अभिनेता तेज गिरी, गायक सञ्जिव सिंह राना, गायक ओम सुनुवार, समाजसेवी दिपेश श्रेष्ठ, पत्रकार ऋषि थपलिया हाँस्य कलाकार कृष्ण जोशी, गायक दिपेश श्रेष्ठ, थालीकी मौलिक नित्याङ्गना एजिबिबा पुर्जा पुन लगायत विभिन्न सर्जक तथा विशिष्ट व्यक्तित्वहरुलाई सम्मान गरिएको सो समारोहमा चर्चित भिडिओ निर्देशक तथा प्रतिनिधि सभा सदस्य असिम शाहलाई मानार्थ सदस्यता प्रदान गरिएको थियो ।</span></p>\r\n<p>\r\n	<br style=\"box-sizing: border-box; color: rgb(68, 68, 68); font-family: Mukta; font-size: 20px;\" />\r\n	<span style=\"color: rgb(68, 68, 68); font-family: Mukta; font-size: 20px;\">कार्यक्रममा संस्कृति, पर्यटन तथा नागरिक उड्डयन मन्त्री सुदन किराँतीले वरिष्ठ सङ्गीतकार शम्भुजीत बासकोटा र वरिष्ठ लोकगायक प्रेमराजा महतको मुक्तकण्ठले प्रशंसा गर्दै डण्डीबियोको दृष्टान्त दिनुभएको थियो । मन्त्री किराँतीले उहाँहरुको उचाईको तुलनामा आफूलाई डण्डीबियो खेलको बियो र उहाँहरुलाई डण्डीसँग तुलना गर्नुभएको थियो । चर्चित गायक एसकुमार, जुनु रिजाल, प्राश्ना शाक्य आनन्द कार्की, दुर्गेश थापा लगायतका गायक गायिकाहरुको साङ्गीतिक प्रस्तुति र ५ वर्षका जुम्ल्याहा दाजुभाइ जेविस र जेनिसको नृत्य प्रस्तुतिले कार्यक्रमलाई थप रोचक बनाएको थियो ।</span></p>\r\n<p>\r\n	<img src=\"https://emusicdiary.com/wp-content/uploads/2023/08/367639930_657675869672514_7231817604738000557_n.jpg\" /></p>\r\n', 'a:1:{i:0;s:15:\"S5r9o-music.jpg\";}', 'a:0:{}', '', 0, 1, 0, 4, '2023-08-22 09:52:03', '', '', '2023-08-20', 'नेपाल म्युजिक भिडियो निर्देशक समाज', 1),
(110, 'request', 'Request: म्युजिक भिडियोलाई बोर्डमा समेट्न निर्देशक समाजको ध्यानाकर्षण', 'म्युजिक भिडियोलाई चलचित्रको परिभाषामा समेटी चलचित्र विकास बोर्डलाई अभिभावक बन्न ध्यानाकर्षण', '<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: mukta, sans-serif; font-size: 19.2px;\">चलचित्र विकास बोर्डले समेट्ने क्षेत्रको परिभाषामा चल्ने चित्रलाई &lsquo;चलचित्र&rsquo; भनिएको तर निर्माण हुने प्रक्रिया, विधि, प्रविधि, प्रयोग तथा कलाकार, प्राविधिक, निर्देशक लगायतका विषयहरू म्युजिक भिडियोमा पनि एकै किसिमको रूपमा प्रयोग हुने भएता पनि म्युजिक भिडियोलाई चलचित्रको परिभाषाको प्रक्रियामा नराखेकोमा दुखी रहेको पत्रमा उल्लेख छ । म्युजिक भिडियो मार्फत देशका विभिन्न जातजाति, भाषा, कला संस्कृतिको जगेर्ना गर्दै राज्यको अर्थतन्त्र, पर्यटन, रोजगारी लगायतमा यस क्षेत्रले मद्दत पुर्&zwj;याएको तथ्य राज्यसामु हुँदाहुँदै पनि म्युजिक भिडियोलाई चलचित्रको परिभाषाको रूपमा समावेश नगरिनु र औपचारिकतामा प्रवेश नगराउनु आफैमा पक्षपाती विषय भएकोले ध्यानाकर्षण गराएको समाजले जनाएको छ ।</span></p>\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color: rgb(51, 51, 51); font-family: mukta, sans-serif; font-size: 19.2px;\"><img alt=\"\" src=\"/assets/userfiles/images/1.jpg\" style=\"width: 833px; height: 1200px;\" /></span></p>\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color: rgb(51, 51, 51); font-family: mukta, sans-serif; font-size: 19.2px;\"><img alt=\"\" src=\"/assets/userfiles/images/2.jpg\" style=\"width: 804px; height: 1200px;\" /></span></p>\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color: rgb(51, 51, 51); font-family: mukta, sans-serif; font-size: 19.2px;\"><img alt=\"\" src=\"/assets/userfiles/images/3.jpg\" style=\"width: 819px; height: 1200px;\" /></span></p>\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color: rgb(51, 51, 51); font-family: mukta, sans-serif; font-size: 19.2px;\"><img alt=\"\" src=\"/assets/userfiles/images/4.jpg\" style=\"width: 1080px; height: 1129px;\" /></span></p>\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color: rgb(51, 51, 51); font-family: mukta, sans-serif; font-size: 19.2px;\"><img alt=\"\" src=\"/assets/userfiles/images/5.jpg\" style=\"width: 1080px; height: 1134px;\" /></span></p>\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color: rgb(51, 51, 51); font-family: mukta, sans-serif; font-size: 19.2px;\"><img alt=\"\" src=\"/assets/userfiles/images/6.jpg\" style=\"width: 600px; height: 400px;\" /></span></p>\r\n', 'a:1:{i:0;s:11:\"urUge-8.jpg\";}', 'a:1:{i:0;s:11:\"PgFeq-7.jpg\";}', '', 0, 0, 0, 5, '2023-10-17 13:11:48', '', '', '2023-10-16', '', 1),
(111, 'dhamma-talk-program', 'Dhamma Talk Program', 'Venerable Keshawati Guruma had a Dhamma Discourse for all of us.', '<img alt=\"\" src=\"/ymba/userfiles/images/3.jpg\" style=\"width: 100%;\" />\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	Venerable Keshawati Guruma had a Dhamma Discourse for all of us. Venerable Guruma mentioned about &quot;Saptaratna Dhan&quot; which is very important for our life.</p>\r\n<p style=\"text-align: justify;\">\r\n	2nd vice president, Mr. Sanubhai Shakya had welcomed all. President, Mr. Asha Ratna Shakya expressed his vote of thanks. Coordinator of Saturday Dhamma Talk Program, Mrs. Bidya Shakya was a master of ceremony.</p>\r\n<p style=\"text-align: justify;\">\r\n	We would like to express Sadhubad to all.</p>\r\n<p style=\"text-align: justify;\">\r\n	&quot;May the Noble Dhamma last longer for the benefits of all the sentient beings&quot;</p>\r\n', 'a:1:{i:0;s:11:\"mJ1Ah-1.jpg\";}', 'a:1:{i:0;s:11:\"R1xp7-2.jpg\";}', '', 0, 0, 1, 6, '2024-05-07 13:11:08', 'venerable, keshawati, guruma, dhamma, discourse, spataratna, dhan, important, life', 'Venerable Keshawati Guruma had a Dhamma Discourse for all of us. Venerable Guruma mentioned about \"Saptaratna Dhan\" which is very important for our life.', '2024-10-06', 'YMBA ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_external_users`
--

CREATE TABLE `tbl_external_users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `accesskey` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `access_code` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_external_users`
--

INSERT INTO `tbl_external_users` (`id`, `firstname`, `lastname`, `phone`, `email`, `username`, `password`, `accesskey`, `image`, `website`, `facebook`, `address`, `access_code`, `status`, `sortorder`, `created_at`, `updated_at`) VALUES
(1, 'Ramesh Nepali', '', '9803523675', 'ramesh@longtail.info', '', '9b81a84b399484942f4f52dec40ed889', 'mcnNEIg2WkRCdW86Tt67JEhhA', 'eW3Li-finance-facilitations.jpg', 'http://brihatpropertysolutions.com/', 'https://www.facebook.com/', 'Raniban Kathmandu, Nepal', 'HD75Tgxd1Q', 1, 1, '2019-11-26 18:15:00', '2019-11-25 18:15:00'),
(2, 'Pramod Kaji Baniya', '', '', 'pkbaniya@gmail.com', '', '3b2a0d98a7d5e0653999b615397b69f8', '1JIJ6KKg23uTccf63gEi8XX69', '', '', '', '', NULL, 1, 6, '2019-11-26 18:15:00', '2019-11-26 18:15:00'),
(3, 'Longtail', '', '9841106610', 'support@longtail.info', '', 'a962874ae47b2d10fa980b78f764fb3a', 'xzo5kBIaV4JeskSJkw8Qm9798', 'bVKvZ-untitled-1.jpg', 'longtail.info', 'facebook.com', 'Kathmandu', '', 1, 16, '2019-12-10 18:15:00', '2019-12-23 18:15:00'),
(4, 'Smriti', '', '9802020065', 'marketing@brihatpropertysolutions.com', '', '80724d2521582d08f5dd0cfd8433f6c4', 's1kLZmEZ1jYyqthTHoohFSD3K', '', '', '', '', '', 1, 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Roshan Mahat', '', '9847606311', 'rosan.mahat977@gmail.com', '', '0869cc1371a667ffb65cc2a0c2901ca5', 'n8R2TQ1SrrpIHwvmfsuY29mg2', '', '', '', '', '', 1, 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'bhadra ale', '', '07747462600', 'bhadraale@gmail.com', '', 'a2fbc5aa219707d553ccac842b48063f', 'ZZWBQZ12bqOEhbDG4Yg4JbFBf', '', '', '', '', '', 1, 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galleries`
--

CREATE TABLE `tbl_galleries` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` varchar(50) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_galleries`
--

INSERT INTO `tbl_galleries` (`id`, `slug`, `title`, `image`, `detail`, `status`, `sortorder`, `registered`, `type`) VALUES
(16, 'new-executive-board-members-of-ybm-school', 'New Executive Board Members of YBM School', 'fPsS8-1.jpg', '', 1, 2, '2020-06-18 11:17:42', 1),
(15, 'dhamma-talk-program', 'Dhamma Talk Program', 'ybFb6-1.jpg', '', 1, 3, '2020-06-18 11:17:08', 1),
(14, 'home-gallery', 'Home Gallery', 'mBOZd-four.jpg', '', 1, 1, '2020-06-18 10:13:38', 1),
(24, 'homage-to-tripple-gems', 'Homage To Tripple Gems', 'viiqe-1.jpg', '', 1, 5, '2024-09-30 16:23:28', 1),
(23, 'vishwa-shanti-vihar-minbhawan-visit', 'Vishwa Shanti Vihar, Minbhawan Visit', '7SW8B-1.jpg', '', 1, 4, '2024-05-07 13:28:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery_images`
--

CREATE TABLE `tbl_gallery_images` (
  `id` int(11) NOT NULL,
  `galleryid` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `detail` varchar(200) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_gallery_images`
--

INSERT INTO `tbl_gallery_images` (`id`, `galleryid`, `title`, `image`, `status`, `detail`, `sortorder`, `registered`) VALUES
(382, 15, 'Dhamma Talk Program', 'DDgIw-2.jpg', 1, '', 3, '2024-09-30 15:51:03'),
(380, 15, 'Dhamma Talk Program', 'Q4rgl-1.jpg', 1, '', 1, '2024-09-30 15:51:03'),
(381, 15, 'Dhamma Talk Program', 'emjrg-6.jpg', 1, '', 2, '2024-09-30 15:51:03'),
(376, 16, 'New Executive Board Members of YBM School', 'N3WgO-1.jpg', 1, '', 1, '2024-09-30 15:32:15'),
(377, 16, 'New Executive Board Members of YBM School', 'Rsxbv-2.jpg', 1, '', 2, '2024-09-30 15:32:15'),
(378, 16, 'New Executive Board Members of YBM School', 'mHGCx-3.jpg', 1, '', 3, '2024-09-30 15:32:15'),
(379, 16, 'New Executive Board Members of YBM School', 'QIiE2-4.jpg', 1, '', 4, '2024-09-30 15:32:15'),
(383, 15, 'Dhamma Talk Program', 'cnt6T-7.jpg', 1, '', 4, '2024-09-30 15:51:03'),
(384, 15, 'Dhamma Talk Program', 'S1zHP-5.jpg', 1, '', 5, '2024-09-30 15:51:03'),
(385, 15, 'Dhamma Talk Program', 'FmLFd-8.jpg', 1, '', 6, '2024-09-30 15:51:03'),
(386, 15, 'Dhamma Talk Program', 'hvtQd-4.jpg', 1, '', 7, '2024-09-30 15:51:03'),
(387, 15, 'Dhamma Talk Program', 'FwVqS-3.jpg', 1, '', 8, '2024-09-30 15:51:03'),
(407, 14, 'YMBA', '6OUyj-f.jpg', 1, '', 6, '2024-10-08 12:44:28'),
(408, 14, 'YMBA', 'SYOt8-g.jpg', 1, '', 7, '2024-10-08 12:48:08'),
(409, 14, 'YMBA', 'l9w2c-h.jpg', 1, '', 8, '2024-10-08 12:49:25'),
(410, 14, 'YMBA', 'oWCwE-i.jpg', 1, '', 9, '2024-10-08 12:51:03'),
(411, 14, 'YMBA', 'AhTKy-j.jpg', 1, '', 10, '2024-10-08 12:53:36'),
(404, 14, 'YMBA', '1NkmQ-c.jpg', 1, '', 3, '2024-10-08 12:39:14'),
(399, 24, 'Homage To Tripple Gems', 'EJ3wB-2.jpg', 1, '', 8, '2024-09-30 16:23:49'),
(402, 14, 'YMBA', 'krlUT-a.jpg', 1, '', 1, '2024-10-08 11:44:33'),
(403, 14, 'YMBA', 'J4erm-b.jpg', 1, '', 2, '2024-10-08 12:33:53'),
(397, 24, 'Homage To Tripple Gems', 'szPPZ-7.jpg', 1, '', 6, '2024-09-30 16:23:49'),
(398, 24, 'Homage To Tripple Gems', 'Wuia0-8.jpg', 1, '', 7, '2024-09-30 16:23:49'),
(395, 24, 'Homage To Tripple Gems', 'tXr8t-1.jpg', 1, '', 4, '2024-09-30 16:23:49'),
(396, 24, 'Homage To Tripple Gems', 'SCA14-6.jpg', 1, '', 5, '2024-09-30 16:23:49'),
(392, 24, 'Homage To Tripple Gems', 'QXOsJ-5.jpg', 1, '', 1, '2024-09-30 16:23:49'),
(393, 24, 'Homage To Tripple Gems', 'NWmHI-3.jpg', 1, '', 2, '2024-09-30 16:23:49'),
(394, 24, 'Homage To Tripple Gems', '7UTkk-4.jpg', 1, '', 3, '2024-09-30 16:23:49'),
(406, 14, 'YMBA', '96UZY-e.jpg', 1, '', 5, '2024-10-08 12:42:41'),
(405, 14, 'YMBA', 'h7XuL-d.jpg', 1, '', 4, '2024-10-08 12:41:49'),
(388, 23, 'Vishwa Shanti Vihar, Minbhawan Visit', 'IExbD-3.jpg', 1, '', 1, '2024-09-30 16:04:23'),
(389, 23, 'Vishwa Shanti Vihar, Minbhawan Visit', 'HYtUh-1.jpg', 1, '', 2, '2024-09-30 16:04:23'),
(390, 23, 'Vishwa Shanti Vihar, Minbhawan Visit', 'wzPAN-2.jpg', 1, '', 3, '2024-09-30 16:04:23'),
(391, 23, 'Vishwa Shanti Vihar, Minbhawan Visit', 'QGec9-4.jpg', 1, '', 4, '2024-09-30 16:04:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_type`
--

CREATE TABLE `tbl_group_type` (
  `id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `group_type` varchar(20) NOT NULL,
  `authority` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Frontend,2=>Personality,3=>Backend,4=>Both',
  `description` tinytext NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_group_type`
--

INSERT INTO `tbl_group_type` (`id`, `group_name`, `group_type`, `authority`, `description`, `status`) VALUES
(1, 'Administrator', '1', 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE `tbl_location` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sortorder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`id`, `type`, `title`, `slug`, `status`, `sortorder`) VALUES
(1, 1, 'Choose Location', 'choose-location', 0, 1),
(48, 6, 'Balkhu', 'balkhu', 1, 14),
(49, 6, 'Ramkot, Sitapaila', 'ramkot-sita', 1, 15),
(50, 5, 'Bhaisepati', 'bhaisepati', 1, 16),
(51, 6, 'Nagarjung Nagarpalika, sitapaila', 'nagarjung-n', 1, 17),
(52, 6, 'Tokha', 'tokha', 1, 18),
(53, 6, 'Thankot', 'thankot', 1, 19),
(54, 6, 'Tinthana', 'tinthana', 1, 20),
(55, 29, 'Bhojpur', 'bhojpur', 1, 21),
(56, 6, 'Chapalkarkhana', 'chapalkarkhana', 1, 22),
(57, 6, 'Narayan Gopal Chowk, Maharajgunj', 'narayan-gopal-chowk-maharajgunj', 1, 23);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logo`
--

CREATE TABLE `tbl_logo` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `linktype` int(11) NOT NULL,
  `linksrc` tinytext NOT NULL,
  `image` blob NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_logo`
--

INSERT INTO `tbl_logo` (`id`, `category_id`, `title`, `linktype`, `linksrc`, `image`, `status`, `sortorder`, `added_date`) VALUES
(10, 1, 'Three', 0, '', 0x54447439462d74687265652e6a7067, 1, 15, '2020-06-17 18:47:57'),
(9, 1, 'thirteen', 0, '', 0x75514345342d746869727465656e2e6a7067, 1, 5, '2020-06-17 18:47:46'),
(8, 1, 'twelve', 0, '', 0x44664243722d7477656c76652e6a7067, 1, 6, '2020-06-17 18:47:30'),
(28, 3, '5', 0, '', 0x49775468662d666976652e6a7067, 1, 19, '2020-07-08 19:09:00'),
(11, 1, 'ten', 0, '', 0x58656e58412d74656e2e6a7067, 1, 8, '2020-06-17 18:48:09'),
(12, 1, 'six', 0, '', 0x735370566f2d7369782e6a7067, 1, 12, '2020-06-17 18:48:22'),
(13, 1, 'eight', 0, '', 0x4b565970692d65696768742e6a7067, 1, 10, '2020-06-17 18:48:32'),
(14, 1, 'seven', 0, '', 0x56666e42522d736576656e2e6a7067, 1, 11, '2020-06-17 18:48:41'),
(15, 1, 'One', 0, '', 0x75464d36332d6f6e652e6a7067, 1, 17, '2020-06-17 18:48:52'),
(16, 1, 'Two', 0, '', 0x35485064502d74776f2e6a7067, 1, 16, '2020-06-17 18:49:01'),
(17, 1, 'five', 0, '', 0x39596b324c2d666976652e6a7067, 1, 13, '2020-06-17 18:49:10'),
(29, 3, '6', 0, '', 0x58344b74552d7369782e6a7067, 1, 20, '2020-07-08 19:09:24'),
(18, 1, 'eleven', 0, '', 0x654a5a67422d656c6576656e2e6a7067, 1, 7, '2020-06-17 18:49:32'),
(19, 1, 'fifteen', 0, '', 0x6a614c32662d6669667465656e2e6a7067, 1, 3, '2020-06-17 18:49:43'),
(20, 1, 'fourteen', 0, '', 0x667a554d752d666f75727465656e2e6a7067, 1, 4, '2020-06-17 18:49:51'),
(21, 1, 'four', 0, '', 0x6f63747a452d666f75722e6a7067, 1, 14, '2020-06-17 18:49:58'),
(22, 1, 'nine', 0, '', 0x6b547366702d6e696e652e6a7067, 1, 9, '2020-06-17 18:50:06'),
(23, 3, '1', 1, '', 0x6732624d682d6f6e652e6a7067, 1, 2, '2020-06-17 18:50:14'),
(25, 3, '3', 0, '', 0x7478526e572d74687265652e6a7067, 1, 0, '2020-06-24 15:36:20'),
(26, 3, '2', 0, '', 0x48357353302d74776f2e6a7067, 1, 1, '2020-06-24 15:36:57'),
(27, 3, '4', 0, '', 0x53537941732d666f75722e6a7067, 1, 18, '2020-07-08 19:08:43'),
(30, 3, '7', 0, '', 0x62323641382d736576656e2e6a7067, 1, 21, '2020-07-08 19:09:52'),
(31, 3, '8', 0, '', 0x38594f43492d65696768742e6a7067, 1, 22, '2020-07-08 19:10:07'),
(32, 3, '9', 0, '', 0x614e464e6c2d6e696e652e6a7067, 1, 23, '2020-07-08 19:10:57'),
(33, 3, '10', 0, '', 0x6d376f46612d74656e2e6a7067, 1, 24, '2020-07-08 19:11:20'),
(34, 3, '11', 0, '', 0x65383359672d656c6576656e2e6a7067, 1, 25, '2020-07-08 19:11:44'),
(35, 3, '12', 0, '', 0x6868524b592d7477656c76652e6a7067, 1, 26, '2020-07-08 19:12:04'),
(36, 3, '13', 0, '', 0x394b4630342d746869727465656e2e6a7067, 1, 27, '2020-07-08 19:12:22'),
(37, 3, '14', 0, '', 0x78447951612d666f75727465656e2e6a7067, 1, 28, '2020-07-08 19:12:45'),
(38, 3, '15', 0, '', 0x66544a35542d6669667465656e2e6a7067, 1, 29, '2020-07-08 19:15:01'),
(39, 3, '16', 0, '', 0x66645557372d7369787465656e2e6a7067, 1, 30, '2020-07-08 19:15:23'),
(40, 3, '17', 0, '', 0x74646554342d736576656e7465656e2e6a7067, 1, 31, '2020-07-08 19:15:41'),
(41, 3, '18', 0, '', 0x714c554e712d656967687465656e2e6a7067, 1, 32, '2020-07-08 19:15:57'),
(42, 3, '19', 0, '', 0x62647157632d6e696e7465656e2e6a7067, 1, 33, '2020-07-08 19:23:32'),
(43, 3, '20', 0, '', 0x536c7073342d7477656e74792e6a7067, 1, 34, '2020-07-08 19:23:49'),
(44, 3, '21', 0, '', 0x344c696f562d7477656e7479666f75722e6a7067, 1, 35, '2020-07-08 19:24:11'),
(45, 3, '22', 0, '', 0x6a676d4b452d7477656e747974687265652e6a7067, 1, 36, '2020-07-08 19:24:49'),
(46, 3, '23', 0, '', 0x31373431712d7477656e74796f6e652e6a7067, 1, 37, '2020-07-08 19:25:48'),
(47, 3, '24', 0, '', 0x6c6b4b69702d7477656e7479746f772e6a7067, 1, 38, '2020-07-08 19:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logo_category`
--

CREATE TABLE `tbl_logo_category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_logo_category`
--

INSERT INTO `tbl_logo_category` (`id`, `title`, `status`, `sortorder`, `added_date`, `modified_date`) VALUES
(1, 'Our Partners', 1, 1, '2020-06-17 13:50:17', '2020-07-08 12:38:24'),
(3, 'Our Supporter', 0, 0, '2020-07-08 12:38:45', '2020-07-08 12:38:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `id` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `user_action` int(11) NOT NULL,
  `ip_track` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1, 'Log has been cleared.', '2020-06-17 17:07:34', 1, 6, '::1'),
(2, 'Changes on Config \'Om Sir\' has been saved successf', '2020-06-17 17:13:14', 1, 4, '::1'),
(3, 'Menu [Profile] Edit Successfully', '2020-06-17 17:48:30', 1, 4, '::1'),
(4, 'Menu  [Property]Data has been deleted successfully', '2020-06-17 17:48:45', 1, 6, '::1'),
(5, 'Menu  [Sold Out Property]Data has been deleted suc', '2020-06-17 17:48:50', 1, 6, '::1'),
(6, 'Menu  [Registered Users Property]Data has been del', '2020-06-17 17:48:55', 1, 6, '::1'),
(7, 'Menu  [Sale by BPS]Data has been deleted successfu', '2020-06-17 17:49:01', 1, 6, '::1'),
(8, 'Menu  [Rental Properties]Data has been deleted suc', '2020-06-17 17:49:08', 1, 6, '::1'),
(9, 'Menu  [Rental Mgmt]Data has been deleted successfu', '2020-06-17 17:49:12', 1, 6, '::1'),
(10, 'Menu  [REMA Sold Properties]Data has been deleted ', '2020-06-17 17:49:16', 1, 6, '::1'),
(11, 'Menu  [REMA Courses]Data has been deleted successf', '2020-06-17 17:49:20', 1, 6, '::1'),
(12, 'Menu  [REMA Properties]Data has been deleted succe', '2020-06-17 17:49:25', 1, 6, '::1'),
(13, 'Menu [Training & Participation] Edit Successfully', '2020-06-17 17:49:55', 1, 4, '::1'),
(14, 'Menu [Media] Edit Successfully', '2020-06-17 17:50:04', 1, 4, '::1'),
(15, 'Menu [Gallery] Edit Successfully', '2020-06-17 17:50:15', 1, 4, '::1'),
(16, 'Menu  [Services]Data has been deleted successfully', '2020-06-17 17:50:21', 1, 6, '::1'),
(17, 'Menu  [Rema]Data has been deleted successfully.', '2020-06-17 17:50:25', 1, 6, '::1'),
(18, 'Menu  [Gallery]Data has been deleted successfully.', '2020-06-17 17:50:31', 1, 6, '::1'),
(19, 'Menu  [FAQ]Data has been deleted successfully.', '2020-06-17 17:50:35', 1, 6, '::1'),
(20, 'Menu  [Newsletter]Data has been deleted successful', '2020-06-17 17:50:46', 1, 6, '::1'),
(21, 'Menu [Photos] Edit Successfully', '2020-06-17 17:50:59', 1, 4, '::1'),
(22, 'Menu [Videos] Edit Successfully', '2020-06-17 17:51:10', 1, 4, '::1'),
(23, 'Menu [Profile] Edit Successfully', '2020-06-17 17:51:38', 1, 4, '::1'),
(24, 'Menu [Media] Edit Successfully', '2020-06-17 17:51:53', 1, 4, '::1'),
(25, 'Menu [Gallery] Edit Successfully', '2020-06-17 17:52:03', 1, 4, '::1'),
(26, 'Menu [Contact] Edit Successfully', '2020-06-17 17:52:16', 1, 4, '::1'),
(27, 'Changes on Config \'Om Sir\' has been saved successf', '2020-06-17 17:59:19', 1, 4, '::1'),
(28, 'Slideshow  [Dharahara Tower - Booking Open]Data ha', '2020-06-17 18:19:55', 1, 6, '::1'),
(29, 'Slideshow  [BCL - Ramkot, Premium Plot]Data has be', '2020-06-17 18:19:55', 1, 6, '::1'),
(30, 'Slideshow  [BCL - Ramkot, Type 45 F]Data has been ', '2020-06-17 18:19:55', 1, 6, '::1'),
(31, 'Slideshow  [BCL - Ramkot, Type 53 F]Data has been ', '2020-06-17 18:19:55', 1, 6, '::1'),
(32, 'Slideshow  [Brihat Community Living – Ramkot]Data ', '2020-06-17 18:19:55', 1, 6, '::1'),
(33, 'Slideshow [Meeting]Data has been added successfull', '2020-06-17 18:20:33', 1, 3, '::1'),
(34, 'Slideshow [Presentation]Data has been added succes', '2020-06-17 18:20:53', 1, 3, '::1'),
(35, 'Slideshow [Event]Data has been added successfully.', '2020-06-17 18:21:15', 1, 3, '::1'),
(36, 'Slideshow [Dr. Om Rajbhandary]Data has been added ', '2020-06-17 18:21:36', 1, 3, '::1'),
(37, 'Changes on Article \'A real estate expert\' has been', '2020-06-17 18:34:48', 1, 4, '::1'),
(38, 'Changes on Article \'A real estate expert\' has been', '2020-06-17 18:44:35', 1, 4, '::1'),
(39, 'Logo Category [Involvements] Edit Successfully', '2020-06-17 18:46:24', 1, 4, '::1'),
(40, 'Logo \'17\' has been added successfully.', '2020-06-17 18:47:30', 1, 3, '::1'),
(41, 'Logo \'16\' has been added successfully.', '2020-06-17 18:47:46', 1, 3, '::1'),
(42, 'Logo \'15\' has been added successfully.', '2020-06-17 18:47:57', 1, 3, '::1'),
(43, 'Logo \'14\' has been added successfully.', '2020-06-17 18:48:09', 1, 3, '::1'),
(44, 'Logo \'13\' has been added successfully.', '2020-06-17 18:48:22', 1, 3, '::1'),
(45, 'Logo \'12\' has been added successfully.', '2020-06-17 18:48:32', 1, 3, '::1'),
(46, 'Logo \'11\' has been added successfully.', '2020-06-17 18:48:41', 1, 3, '::1'),
(47, 'Logo \'10\' has been added successfully.', '2020-06-17 18:48:52', 1, 3, '::1'),
(48, 'Logo \'9\' has been added successfully.', '2020-06-17 18:49:01', 1, 3, '::1'),
(49, 'Logo \'8\' has been added successfully.', '2020-06-17 18:49:10', 1, 3, '::1'),
(50, 'Logo \'6\' has been added successfully.', '2020-06-17 18:49:32', 1, 3, '::1'),
(51, 'Logo \'5\' has been added successfully.', '2020-06-17 18:49:43', 1, 3, '::1'),
(52, 'Logo \'4\' has been added successfully.', '2020-06-17 18:49:51', 1, 3, '::1'),
(53, 'Logo \'3\' has been added successfully.', '2020-06-17 18:49:58', 1, 3, '::1'),
(54, 'Logo \'2\' has been added successfully.', '2020-06-17 18:50:06', 1, 3, '::1'),
(55, 'Logo \'1\' has been added successfully.', '2020-06-17 18:50:14', 1, 3, '::1'),
(56, 'Events [Opinion]Data has been added successfully.', '2020-06-17 19:08:17', 1, 3, '::1'),
(57, 'Events [The Real Sector Pioneer]Data has been adde', '2020-06-17 19:08:52', 1, 3, '::1'),
(58, 'Events [Business Guff]Data has been added successf', '2020-06-17 19:09:24', 1, 3, '::1'),
(59, 'Events [Economy Business]Data has been added succe', '2020-06-17 19:09:53', 1, 3, '::1'),
(60, 'Events [Real Estate Sector Post Covid - 19]Data ha', '2020-06-17 19:10:37', 1, 3, '::1'),
(61, 'Events [Virtual Guest Lecture]Data has been added ', '2020-06-17 19:11:07', 1, 3, '::1'),
(62, 'Events  [1]Data has been deleted successfully.', '2020-06-17 19:11:19', 1, 6, '::1'),
(63, 'Events  [2]Data has been deleted successfully.', '2020-06-17 19:11:19', 1, 6, '::1'),
(64, 'Events  [4]Data has been deleted successfully.', '2020-06-17 19:11:19', 1, 6, '::1'),
(65, 'Events [media]Data has been added successfully.', '2020-06-17 19:25:08', 1, 3, '::1'),
(66, 'Login: Site Admin  logged in.', '2020-06-18 10:06:53', 1, 1, '::1'),
(67, 'Gallery [Home Gallery]Data has been added successf', '2020-06-18 10:13:38', 1, 3, '::1'),
(68, 'Sub Gallery Image [1]Data has been added successfu', '2020-06-18 10:14:35', 1, 3, '::1'),
(69, 'Sub Gallery Image [2]Data has been added successfu', '2020-06-18 10:14:35', 1, 3, '::1'),
(70, 'Sub Gallery Image [3]Data has been added successfu', '2020-06-18 10:14:36', 1, 3, '::1'),
(71, 'Sub Gallery Image [4]Data has been added successfu', '2020-06-18 10:14:36', 1, 3, '::1'),
(72, 'Sub Gallery Image [5]Data has been added successfu', '2020-06-18 10:14:36', 1, 3, '::1'),
(73, 'Sub Gallery Image [6]Data has been added successfu', '2020-06-18 10:14:36', 1, 3, '::1'),
(74, 'Sub Gallery Image [7]Data has been added successfu', '2020-06-18 10:14:36', 1, 3, '::1'),
(75, 'Changes on Config \'Om Sir\' has been saved successf', '2020-06-18 10:33:17', 1, 4, '::1'),
(76, 'Changes on Config \'Om Sir\' has been saved successf', '2020-06-18 10:35:32', 1, 4, '::1'),
(77, 'SocialNetworking [Facebook] Edit Successfully', '2020-06-18 10:45:56', 1, 4, '::1'),
(78, 'SocialNetworking [Facebook] Edit Successfully', '2020-06-18 10:46:06', 1, 4, '::1'),
(79, 'SocialNetworking [Twitter]Data has been added succ', '2020-06-18 10:46:26', 1, 3, '::1'),
(80, 'SocialNetworking [linkedin] Edit Successfully', '2020-06-18 10:46:49', 1, 4, '::1'),
(81, 'SocialNetworking [Instagram]Data has been added su', '2020-06-18 10:47:05', 1, 3, '::1'),
(82, 'SocialNetworking [Youtube] Edit Successfully', '2020-06-18 10:47:48', 1, 4, '::1'),
(83, 'SocialNetworking [Instagram] Edit Successfully', '2020-06-18 10:48:43', 1, 4, '::1'),
(84, 'SocialNetworking [linkedin] Edit Successfully', '2020-06-18 10:49:10', 1, 4, '::1'),
(85, 'SocialNetworking [linkedin] Edit Successfully', '2020-06-18 10:49:39', 1, 4, '::1'),
(86, 'Changes on Config \'Om Sir\' has been saved successf', '2020-06-18 10:55:09', 1, 4, '::1'),
(87, 'Changes on Config \'Om Sir\' has been saved successf', '2020-06-18 10:55:15', 1, 4, '::1'),
(88, 'Menu [Photos] Edit Successfully', '2020-06-18 11:03:06', 1, 4, '::1'),
(89, 'Menu [Gallery] Edit Successfully', '2020-06-18 11:03:13', 1, 4, '::1'),
(90, 'Gallery [Events]Data has been added successfully.', '2020-06-18 11:17:08', 1, 3, '::1'),
(91, 'Gallery [Presentation]Data has been added successf', '2020-06-18 11:17:42', 1, 3, '::1'),
(92, 'Gallery [Achievements]Data has been added successf', '2020-06-18 11:18:10', 1, 3, '::1'),
(93, 'Sub Gallery Image [1]Data has been added successfu', '2020-06-18 11:18:38', 1, 3, '::1'),
(94, 'Sub Gallery Image [2]Data has been added successfu', '2020-06-18 11:18:39', 1, 3, '::1'),
(95, 'Sub Gallery Image [1]Data has been added successfu', '2020-06-18 11:18:58', 1, 3, '::1'),
(96, 'Sub Gallery Image [2]Data has been added successfu', '2020-06-18 11:18:58', 1, 3, '::1'),
(97, 'Sub Gallery Image [1]Data has been added successfu', '2020-06-18 11:19:16', 1, 3, '::1'),
(98, 'Sub Gallery Image [2]Data has been added successfu', '2020-06-18 11:19:17', 1, 3, '::1'),
(99, 'Menu [Videos] Edit Successfully', '2020-06-18 11:27:40', 1, 4, '::1'),
(100, 'Video  [Trump celebrates May jobs numbers after a ', '2020-06-18 11:35:31', 1, 6, '::1'),
(101, 'Video  []Data has been deleted successfully.', '2020-06-18 11:35:34', 1, 6, '::1'),
(102, 'Video  [Programming / Coding / Hacking music vol.1', '2020-06-18 11:35:34', 1, 6, '::1'),
(103, 'Video [à¤²à¤?à¤¡à¤¾à¤?à¤¨à¤ªà¤?à¤¿ à¤?à¤°à¤?à¥? à¤', '2020-06-18 11:35:45', 1, 3, '::1'),
(104, 'Video  [à¤²à¤?à¤¡à¤¾à¤?à¤¨à¤ªà¤?à¤¿ à¤?à¤°à¤?à¥? à', '2020-06-18 11:39:19', 1, 6, '::1'),
(105, 'Video [à¤²à¤?à¤¡à¤¾à¤?à¤¨à¤ªà¤?à¤¿ à¤?à¤°à¤?à¥? à¤', '2020-06-18 11:39:30', 1, 3, '::1'),
(106, 'Video  [à¤²à¤?à¤¡à¤¾à¤?à¤¨à¤ªà¤?à¤¿ à¤?à¤°à¤?à¥? à', '2020-06-18 11:40:00', 1, 6, '::1'),
(107, 'Video [YouTube]Data has been added successfully.', '2020-06-18 11:40:35', 1, 3, '::1'),
(108, 'Video  [YouTube]Data has been deleted successfully', '2020-06-18 11:41:29', 1, 6, '::1'),
(109, 'Video [YouTube]Data has been added successfully.', '2020-06-18 11:41:33', 1, 3, '::1'),
(110, 'Video [OM RAJBHANDARI | THE REAL ESTATE PIONEER | ', '2020-06-18 11:41:56', 1, 3, '::1'),
(111, 'Video [YouTube]Data has been added successfully.', '2020-06-18 11:42:12', 1, 3, '::1'),
(112, 'Video [My Housing | Om Rajbhandari | Hamrokatha - ', '2020-06-18 11:42:35', 1, 3, '::1'),
(113, 'Video [Om Bahadur Rajbhandari à¥¤à¥¤ à¤?à¤®à¤¬à¤¹à', '2020-06-18 11:42:48', 1, 3, '::1'),
(114, 'Video [Never Change Your Originality - Om Rajbhand', '2020-06-18 11:43:07', 1, 3, '::1'),
(115, 'Video [à¤²à¤?à¤¡à¤¾à¤?à¤¨à¤ªà¤?à¤¿ à¤?à¤°à¤?à¥? à¤', '2020-06-18 12:05:37', 1, 4, '::1'),
(116, 'Changes on Config \'Om Sir\' has been saved successf', '2020-06-18 12:14:13', 1, 4, '::1'),
(117, 'Menu [Contact] Edit Successfully', '2020-06-18 12:14:29', 1, 4, '::1'),
(118, 'Menu [Contact] Edit Successfully', '2020-06-18 12:14:39', 1, 4, '::1'),
(119, 'Article Category  [1]Data has been deleted success', '2020-06-18 13:07:03', 1, 6, '::1'),
(120, 'Article Category  [Test 1]Data has been deleted su', '2020-06-18 13:07:03', 1, 6, '::1'),
(121, 'Article Category [Profile]Data has been added succ', '2020-06-18 13:07:09', 1, 3, '::1'),
(122, 'Login: Site Admin  logged in.', '2020-06-18 15:33:42', 1, 1, '::1'),
(123, 'Article \'Profile\' has been added successfully.', '2020-06-18 15:49:40', 1, 3, '::1'),
(124, 'Article \'Professional Experience / Organization\' h', '2020-06-18 15:52:52', 1, 3, '::1'),
(125, 'Article \'Recognition\' has been added successfully.', '2020-06-18 16:01:07', 1, 3, '::1'),
(126, 'Menu [Profile] Edit Successfully', '2020-06-18 16:04:39', 1, 4, '::1'),
(127, 'Training [ACE course]Data has been deleted success', '2020-06-18 16:37:46', 1, 6, '::1'),
(128, 'Training [Housing Scenario of Nepal]Data has been ', '2020-06-18 16:37:46', 1, 6, '::1'),
(129, 'Training [Role of Private sector in Urban Scenario', '2020-06-18 16:37:46', 1, 6, '::1'),
(130, 'Training [Entrepreneurship Journey]Data has been a', '2020-06-18 16:40:57', 1, 3, '::1'),
(131, 'Training [JOURNEY OF NAS ( Nepal Ambulance Service', '2020-06-18 16:41:33', 1, 3, '::1'),
(132, 'Training [Housing Scenario in Nepal]Data has been ', '2020-06-18 16:42:06', 1, 3, '::1'),
(133, 'Training [Entrepreneurship Journey]Data has been a', '2020-06-18 16:42:33', 1, 3, '::1'),
(134, 'Training [Heading for Human Resource Crisis]Data h', '2020-06-18 16:42:54', 1, 3, '::1'),
(135, 'Training [Sustainable Green Community Village]Data', '2020-06-18 16:43:16', 1, 3, '::1'),
(136, 'Training [Land pooling- Challenges &Opportunities]', '2020-06-18 16:43:41', 1, 3, '::1'),
(137, 'Training [Nhyokha Presentation]Data has been added', '2020-06-18 16:44:01', 1, 3, '::1'),
(138, 'Training [Housing Issues of Private Sector]Data ha', '2020-06-18 16:44:41', 1, 3, '::1'),
(139, 'Training [Fostering Entrepreneurship]Data has been', '2020-06-18 16:45:08', 1, 3, '::1'),
(140, 'Training [Housing Issues of Private Sector]Data ha', '2020-06-18 16:45:32', 1, 3, '::1'),
(141, 'Training [FDI and Country Market Update in Nepal]D', '2020-06-18 16:46:09', 1, 3, '::1'),
(142, 'Menu [Training & Presentation] Edit Successfully', '2020-06-18 16:53:03', 1, 4, '::1'),
(143, 'Training [FDI and Country Market Update in Nepal] ', '2020-06-18 17:48:02', 1, 4, '::1'),
(144, 'Training [test]Data has been added successfully.', '2020-06-18 18:10:12', 1, 3, '::1'),
(145, 'Training [test] Edit Successfully', '2020-06-18 18:21:05', 1, 4, '::1'),
(146, 'Changes on Article \'A real estate expert\' has been', '2020-06-18 18:23:55', 1, 4, '::1'),
(147, 'Login: Site Admin  logged in.', '2020-06-19 10:31:55', 1, 1, '::1'),
(148, 'Events [media] Edit Successfully', '2020-06-19 12:26:15', 1, 4, '::1'),
(149, 'Events [media] Edit Successfully', '2020-06-19 12:26:36', 1, 4, '::1'),
(150, 'Events [Urban Scenario and urban Challenges in Cit', '2020-06-19 12:32:11', 1, 4, '::1'),
(151, 'Events [Urban Scenario and master developer Concep', '2020-06-19 13:27:22', 1, 3, '::1'),
(152, 'Events [Banks should invest on real estate openly.', '2020-06-19 13:28:14', 1, 3, '::1'),
(153, 'Events [Housing draws a Point Home.]Data has been ', '2020-06-19 13:29:03', 1, 3, '::1'),
(154, 'Events [Architect of organized urbanization.]Data ', '2020-06-19 13:29:45', 1, 3, '::1'),
(155, 'Events [Pioneer in community living.]Data has been', '2020-06-19 13:31:01', 1, 3, '::1'),
(156, 'Events [House pooling and satellite town are neces', '2020-06-19 13:31:43', 1, 3, '::1'),
(157, 'Events [House pooling and satellite town are neces', '2020-06-21 11:33:20', 1, 4, '::1'),
(158, 'Changes on Article \'Profile\' has been saved succes', '2020-06-21 12:10:40', 1, 4, '::1'),
(159, 'Article \'testing\' has been added successfully.', '2020-06-21 12:14:42', 1, 3, '::1'),
(160, 'Articles  [testing]Data has been deleted successfu', '2020-06-21 12:19:13', 1, 6, '::1'),
(161, 'Menu [Media] Edit Successfully', '2020-06-21 12:19:29', 1, 4, '::1'),
(162, 'Menu [Profile] Edit Successfully', '2020-06-21 12:19:42', 1, 4, '::1'),
(163, 'Menu [Media] Edit Successfully', '2020-06-21 12:19:53', 1, 4, '::1'),
(164, 'Changes on Config \'Om Sir\' has been saved successf', '2020-06-21 13:19:44', 1, 4, '::1'),
(165, 'Logo Category [test]Data has been added successful', '2020-06-21 13:27:53', 1, 3, '::1'),
(166, 'Logo \'test1\' has been added successfully.', '2020-06-21 13:28:12', 1, 3, '::1'),
(167, 'Logo Category [test]Data has been deleted successf', '2020-06-21 13:29:05', 1, 6, '::1'),
(168, 'Logo [test1]Data has been deleted successfully.', '2020-06-21 13:29:10', 1, 6, '::1'),
(169, 'Changes on Logo \'1\' has been saved successfully.', '2020-06-21 13:29:40', 1, 4, '::1'),
(170, 'Login: Site Admin  logged in.', '2020-06-21 14:19:17', 1, 1, '43.231.208.4'),
(171, 'Login: Site Admin  logged in.', '2020-06-21 14:26:00', 1, 1, '27.34.68.214'),
(172, 'Login: Site Admin  logged in.', '2020-06-22 11:10:27', 1, 1, '27.34.104.49'),
(173, 'Menu [In Media] Edit Successfully', '2020-06-22 11:11:43', 1, 4, '27.34.104.49'),
(174, 'Menu [Photos] Edit Successfully', '2020-06-22 11:12:17', 1, 4, '27.34.104.49'),
(175, 'Menu [Videos] Edit Successfully', '2020-06-22 11:12:35', 1, 4, '27.34.104.49'),
(176, 'Slideshow [Dr. Om Bahadur Rajbhandary] Edit Succes', '2020-06-22 11:16:03', 1, 4, '27.34.104.49'),
(177, 'Changes on Config \'Om Rajbhandary\' has been saved ', '2020-06-22 11:17:08', 1, 4, '27.34.104.49'),
(178, 'Changes on Article \'A real estate expert\' has been', '2020-06-22 11:19:05', 1, 4, '27.34.104.49'),
(179, 'Changes on Article \'A real estate expert\' has been', '2020-06-22 11:19:33', 1, 4, '27.34.104.49'),
(180, 'Changes on Article \'Profile\' has been saved succes', '2020-06-22 11:26:24', 1, 4, '27.34.104.49'),
(181, 'Changes on Article \'Profile\' has been saved succes', '2020-06-22 11:27:19', 1, 4, '27.34.104.49'),
(182, 'Changes on Article \'Professional Experience\' has b', '2020-06-22 11:28:09', 1, 4, '27.34.104.49'),
(183, 'Changes on Article \'Professional Experience\' has b', '2020-06-22 11:30:34', 1, 4, '27.34.104.49'),
(184, 'Changes on Article \'Professional Experience\' has b', '2020-06-22 11:33:31', 1, 4, '27.34.104.49'),
(185, 'Changes on Article \'Professional Experience\' has b', '2020-06-22 11:37:59', 1, 4, '27.34.104.49'),
(186, 'Changes on Article \'Professional Experience\' has b', '2020-06-22 11:41:45', 1, 4, '27.34.104.49'),
(187, 'Changes on Article \'Professional Experience\' has b', '2020-06-22 11:43:17', 1, 4, '27.34.104.49'),
(188, 'Changes on Article \'Professional Experience\' has b', '2020-06-22 11:50:07', 1, 4, '27.34.104.49'),
(189, 'Login: Site Admin  logged in.', '2020-06-22 11:54:33', 1, 1, '43.231.208.4'),
(190, 'Changes on Article \'Professional Experience\' has b', '2020-06-22 11:55:06', 1, 4, '27.34.104.49'),
(191, 'Changes on Article \'Recognition\' has been saved su', '2020-06-22 11:57:48', 1, 4, '43.231.208.4'),
(192, 'Changes on Article \'Professional Experience\' has b', '2020-06-22 12:05:07', 1, 4, '27.34.104.49'),
(193, 'Changes on Article \'Professional Experience\' has b', '2020-06-22 12:13:06', 1, 4, '27.34.104.49'),
(194, 'Changes on Article \'Professional Experience\' has b', '2020-06-22 12:19:25', 1, 4, '27.34.104.49'),
(195, 'Login: Site Admin  logged in.', '2020-06-22 12:32:47', 1, 1, '27.34.54.169'),
(196, 'Changes on Article \'Recognition\' has been saved su', '2020-06-22 12:36:50', 1, 4, '27.34.54.169'),
(197, 'Changes on Article \'Recognition\' has been saved su', '2020-06-22 12:39:57', 1, 4, '27.34.54.169'),
(198, 'Changes on Article \'Recognition\' has been saved su', '2020-06-22 12:40:33', 1, 4, '27.34.54.169'),
(199, 'Changes on Article \'Recognition\' has been saved su', '2020-06-22 12:43:03', 1, 4, '27.34.54.169'),
(200, 'Changes on Article \'Recognition\' has been saved su', '2020-06-22 12:43:19', 1, 4, '27.34.54.169'),
(201, 'Changes on Article \'Recognition\' has been saved su', '2020-06-22 12:44:40', 1, 4, '27.34.54.169'),
(202, 'Changes on Article \'Recognition\' has been saved su', '2020-06-22 12:45:27', 1, 4, '27.34.54.169'),
(203, 'Events [REMA : A New Concept in Housing Industry] ', '2020-06-22 12:49:56', 1, 4, '27.34.104.49'),
(204, 'Events [Own House is Not Possible.]Data has been a', '2020-06-22 13:08:23', 1, 3, '27.34.104.49'),
(205, 'Events [Own House is Not Possible.<br>29 March - 1', '2020-06-22 13:11:03', 1, 4, '27.34.104.49'),
(206, 'Login: Site Admin  logged in.', '2020-06-22 13:16:18', 1, 1, '43.231.208.4'),
(207, 'Events [Pioneer in community living.] Edit Success', '2020-06-22 14:12:12', 1, 4, '27.34.104.240'),
(208, 'Events [Its high time for corporate houses to have', '2020-06-22 14:16:03', 1, 3, '27.34.104.240'),
(209, 'Events [Architect of organized urbanization.] Edit', '2020-06-22 14:17:34', 1, 4, '27.34.104.240'),
(210, 'Events [Architect of organized urbanization.] Edit', '2020-06-22 14:18:12', 1, 4, '27.34.104.240'),
(211, 'Gallery Image [Presentation] Edit Successfully', '2020-06-22 14:25:05', 1, 4, '27.34.104.240'),
(212, 'Sub Gallery Image  [1]Data has been deleted succes', '2020-06-22 14:28:29', 1, 6, '27.34.104.240'),
(213, 'Sub Gallery Image  [2]Data has been deleted succes', '2020-06-22 14:28:37', 1, 6, '27.34.104.240'),
(214, 'Sub Gallery Image [Training & Presentation]Data ha', '2020-06-22 14:30:18', 1, 3, '27.34.104.240'),
(215, 'Sub Gallery Image [Training & Presentation]Data ha', '2020-06-22 14:30:18', 1, 3, '27.34.104.240'),
(216, 'Sub Gallery Image [Training & Presentation]Data ha', '2020-06-22 14:30:18', 1, 3, '27.34.104.240'),
(217, 'Sub Gallery Image [Training & Presentation]Data ha', '2020-06-22 14:30:18', 1, 3, '27.34.104.240'),
(218, 'Sub Gallery Image [Training & Presentation]Data ha', '2020-06-22 14:30:18', 1, 3, '27.34.104.240'),
(219, 'Sub Gallery Image [Training & Presentation]Data ha', '2020-06-22 14:30:18', 1, 3, '27.34.104.240'),
(220, 'Sub Gallery Image [Training & Presentation]Data ha', '2020-06-22 14:30:18', 1, 3, '27.34.104.240'),
(221, 'Sub Gallery Image [Training & Presentation]Data ha', '2020-06-22 14:30:18', 1, 3, '27.34.104.240'),
(222, 'Sub Gallery Image [Training & Presentation]Data ha', '2020-06-22 14:30:18', 1, 3, '27.34.104.240'),
(223, 'Sub Gallery Image  [1]Data has been deleted succes', '2020-06-22 14:41:49', 1, 6, '27.34.104.240'),
(224, 'Sub Gallery Image  []Data has been deleted success', '2020-06-22 14:41:53', 1, 6, '27.34.104.240'),
(225, 'Sub Gallery Image  [2]Data has been deleted succes', '2020-06-22 14:41:53', 1, 6, '27.34.104.240'),
(226, 'Gallery Image [Events] Edit Successfully', '2020-06-22 14:44:15', 1, 4, '27.34.104.240'),
(227, 'Sub Gallery Image [Events]Data has been added succ', '2020-06-22 14:49:30', 1, 3, '27.34.104.240'),
(228, 'Sub Gallery Image [Events]Data has been added succ', '2020-06-22 14:49:30', 1, 3, '27.34.104.240'),
(229, 'Sub Gallery Image [Events]Data has been added succ', '2020-06-22 14:49:30', 1, 3, '27.34.104.240'),
(230, 'Sub Gallery Image [Events]Data has been added succ', '2020-06-22 14:49:30', 1, 3, '27.34.104.240'),
(231, 'Sub Gallery Image [Events]Data has been added succ', '2020-06-22 14:49:30', 1, 3, '27.34.104.240'),
(232, 'Sub Gallery Image [Events]Data has been added succ', '2020-06-22 14:49:30', 1, 3, '27.34.104.240'),
(233, 'Sub Gallery Image [Events]Data has been added succ', '2020-06-22 14:49:30', 1, 3, '27.34.104.240'),
(234, 'Sub Gallery Image [Events]Data has been added succ', '2020-06-22 14:49:30', 1, 3, '27.34.104.240'),
(235, 'Sub Gallery Image [Events]Data has been added succ', '2020-06-22 14:49:30', 1, 3, '27.34.104.240'),
(236, 'Gallery Image [Achievements] Edit Successfully', '2020-06-22 14:53:37', 1, 4, '27.34.104.240'),
(237, 'Sub Gallery Image  [1]Data has been deleted succes', '2020-06-22 14:53:49', 1, 6, '27.34.104.240'),
(238, 'Sub Gallery Image  []Data has been deleted success', '2020-06-22 14:53:53', 1, 6, '27.34.104.240'),
(239, 'Sub Gallery Image  [2]Data has been deleted succes', '2020-06-22 14:53:54', 1, 6, '27.34.104.240'),
(240, 'Sub Gallery Image [Achievements]Data has been adde', '2020-06-22 14:54:19', 1, 3, '27.34.104.240'),
(241, 'Sub Gallery Image [Achievements]Data has been adde', '2020-06-22 14:54:19', 1, 3, '27.34.104.240'),
(242, 'Gallery [Profile]Data has been added successfully.', '2020-06-22 15:00:29', 1, 3, '27.34.104.240'),
(243, 'Sub Gallery Image [Dr. Om Bahadur Rajbhandary]Data', '2020-06-22 15:02:14', 1, 3, '27.34.104.240'),
(244, 'Sub Gallery Image [Dr. Om Bahadur Rajbhandary]Data', '2020-06-22 15:02:14', 1, 3, '27.34.104.240'),
(245, 'Sub Gallery Image [Dr. Om Bahadur Rajbhandary]Data', '2020-06-22 15:02:14', 1, 3, '27.34.104.240'),
(246, 'Login: Site Admin  logged in.', '2020-06-22 15:59:50', 1, 1, '27.34.104.240'),
(247, 'Events [Housing draws a Point Home.] Edit Successf', '2020-06-22 16:01:36', 1, 4, '27.34.104.240'),
(248, 'Events [Urban Scenario and urban Challenges in Cit', '2020-06-22 16:03:32', 1, 3, '27.34.104.240'),
(249, 'Events [Capital inadequacy led to unfortunate proj', '2020-06-22 16:04:59', 1, 3, '27.34.104.240'),
(250, 'Events [Ongoing gradual improvement.]Data has been', '2020-06-22 16:05:34', 1, 3, '27.34.104.240'),
(251, 'Events [Real Estate Expo will be beneficial for de', '2020-06-22 16:06:29', 1, 3, '27.34.104.240'),
(252, 'Events [Ongoing gradual improvement.] Edit Success', '2020-06-22 16:07:01', 1, 4, '27.34.104.240'),
(253, 'Events [Glorious Triumph!]Data has been added succ', '2020-06-22 16:08:35', 1, 3, '27.34.104.240'),
(254, 'Events [100 Cover Story 15 July - 14 August, 2011]', '2020-06-22 16:15:17', 1, 3, '27.34.104.240'),
(255, 'Events [100 Cover Story <br>15 July - 14 August, 2', '2020-06-22 16:15:53', 1, 4, '27.34.104.240'),
(256, 'Events [Budget injects new lease of life to real e', '2020-06-22 16:16:34', 1, 3, '27.34.104.240'),
(257, 'Events [Corporate page (Remedies for alarming hous', '2020-06-22 16:17:35', 1, 3, '27.34.104.240'),
(258, 'Events [Personality page (Success is the distance ', '2020-06-22 16:18:08', 1, 3, '27.34.104.240'),
(259, 'Events [Successful Businessman (dedicated for hous', '2020-06-22 16:18:50', 1, 3, '27.34.104.240'),
(260, 'Events [Developers - built housing market on the R', '2020-06-22 16:19:17', 1, 3, '27.34.104.240'),
(261, 'Events [ Real Estate Sector is not a hobby.]Data h', '2020-06-22 16:19:50', 1, 3, '27.34.104.240'),
(262, 'Events [ Government should withdraw Capital Gain T', '2020-06-22 16:20:46', 1, 3, '27.34.104.240'),
(263, 'Events [70 Billion investments in Housing Sector i', '2020-06-22 16:22:00', 1, 3, '27.34.104.240'),
(264, 'Events [Countrys Wish Organized or Unorganized Urb', '2020-06-22 16:22:26', 1, 3, '27.34.104.240'),
(265, 'Events [Look outward policy can resurrect real est', '2020-06-22 16:23:01', 1, 3, '27.34.104.240'),
(266, 'Events [Family in business]Data has been added suc', '2020-06-22 16:23:26', 1, 3, '27.34.104.240'),
(267, 'Events [Healthy Thinking]Data has been added succe', '2020-06-22 16:23:47', 1, 3, '27.34.104.240'),
(268, 'Events [The boss - achievement <br>15 Dec – 14 Jan', '2020-06-22 16:25:13', 1, 3, '27.34.104.240'),
(269, 'Events [Importance of Real Estate for planned urba', '2020-06-22 16:25:57', 1, 3, '27.34.104.240'),
(270, 'Events [Journey of one decade.]Data has been added', '2020-06-22 16:27:22', 1, 3, '27.34.104.240'),
(271, 'Events [Teaching to Teaching.]Data has been added ', '2020-06-22 16:27:47', 1, 3, '27.34.104.240'),
(272, 'Events [Demand for housing till 2 decades.<br>5–11', '2020-06-22 16:28:40', 1, 3, '27.34.104.240'),
(273, 'Events [Housing Sector Reels under NRB Whammy.]Dat', '2020-06-22 16:29:05', 1, 3, '27.34.104.240'),
(274, 'Events [Earthquake <br>18-24 March 2010]Data has b', '2020-06-22 16:29:45', 1, 3, '27.34.104.240'),
(275, 'Events [Interview of worlds leaders in real estate', '2020-06-22 16:30:29', 1, 3, '27.34.104.240'),
(276, 'Events [Realtors Have Booming Time Ahead.]Data has', '2020-06-22 16:31:49', 1, 3, '27.34.104.240'),
(277, 'Events [Dr. Om Bahadur Rajbhandary]Data has been a', '2020-06-22 16:32:19', 1, 3, '27.34.104.240'),
(278, 'Events [Vision \"Master Developer\"]Data has been ad', '2020-06-22 16:32:51', 1, 3, '27.34.104.240'),
(279, 'Events [Consumers Role in Community Living.<br>21-', '2020-06-22 16:34:21', 1, 3, '27.34.104.240'),
(280, 'Events [Master Development Concept in Housing Sect', '2020-06-22 16:35:58', 1, 3, '27.34.104.240'),
(281, 'Events [(Real Estate Marketing Agent ) REMA : A Ne', '2020-06-22 16:36:58', 1, 3, '27.34.104.240'),
(282, 'Events [Past Present & Future Scenario of Urban Ne', '2020-06-22 16:38:11', 1, 3, '27.34.104.240'),
(283, 'Events [Dr. Om Bahadur Rajbhandary <br>June -July ', '2020-06-22 16:39:04', 1, 3, '27.34.104.240'),
(284, 'Events [Factors Effecting Housing Industry.<br>17 ', '2020-06-22 16:39:39', 1, 3, '27.34.104.240'),
(285, 'Events [Ma Shakchu]Data has been added successfull', '2020-06-22 16:40:24', 1, 3, '27.34.104.240'),
(286, 'Events [Unlimited Business]Data has been added suc', '2020-06-22 16:40:49', 1, 3, '27.34.104.240'),
(287, 'Events [We Want to Play The Role of Master Develop', '2020-06-22 16:43:17', 1, 3, '27.34.104.240'),
(288, 'Events [Investment in Housing Industry has Reached', '2020-06-22 16:43:46', 1, 3, '27.34.104.240'),
(289, 'Events [Challenges of Housing Industry.<br>Jan 28 ', '2020-06-22 16:44:23', 1, 3, '27.34.104.240'),
(290, 'Events [A Real Estate Developer.<br>28 Dec 2007 – ', '2020-06-22 16:45:04', 1, 3, '27.34.104.240'),
(291, 'Events [Destination of Housing Industry.]Data has ', '2020-06-22 16:45:29', 1, 3, '27.34.104.240'),
(292, 'Events [Destination of Housing Industry.] Edit Suc', '2020-06-22 16:46:37', 1, 4, '27.34.104.240'),
(293, 'Events [Housing Development is result of Democracy', '2020-06-22 16:47:20', 1, 3, '27.34.104.240'),
(294, 'Events [A Dreamweaver.]Data has been added success', '2020-06-22 16:47:48', 1, 3, '27.34.104.240'),
(295, 'Events [Lets Build Your Home]Data has been added s', '2020-06-22 16:49:02', 1, 3, '27.34.104.240'),
(296, 'Events [Corporate Identity : The Persona of A Corp', '2020-06-22 16:49:44', 1, 3, '27.34.104.240'),
(297, 'Events [Changeable Lifestyle, Changeable Habitatio', '2020-06-22 16:50:11', 1, 3, '27.34.104.240'),
(298, 'Events [Housing Development is Result of Hemocracy', '2020-06-22 16:50:36', 1, 3, '27.34.104.240'),
(299, 'Events [Our main Objective is Transformation of Kn', '2020-06-22 16:51:02', 1, 3, '27.34.104.240'),
(300, 'Events [A Life of Comfort at Comfort.]Data has bee', '2020-06-22 16:51:28', 1, 3, '27.34.104.240'),
(301, 'Events [Concrete Success.<br>15 Nov – 14 Dec 2005]', '2020-06-22 16:53:43', 1, 3, '27.34.104.240'),
(302, 'Events [Luxurious Home.]Data has been added succes', '2020-06-22 16:54:06', 1, 3, '27.34.104.240'),
(303, 'Events [The Fine Art of Marketing Housing.<br>July', '2020-06-22 16:54:37', 1, 3, '27.34.104.240'),
(304, 'Events [Community living Comes of Age in Nepal.]Da', '2020-06-22 16:55:03', 1, 3, '27.34.104.240'),
(305, 'Login: Site Admin  logged in.', '2020-06-22 17:31:37', 1, 1, '27.34.104.240'),
(306, 'Events [Virtual Guest Lecture] Edit Successfully', '2020-06-22 17:36:52', 1, 4, '27.34.104.240'),
(307, 'Events [Virtual Guest Lecture] Edit Successfully', '2020-06-22 17:39:39', 1, 4, '27.34.104.240'),
(308, 'Events [Virtual Guest Lecture] Edit Successfully', '2020-06-22 17:42:27', 1, 4, '27.34.104.240'),
(309, 'Events [Virtual Guest Lecture] Edit Successfully', '2020-06-22 17:43:36', 1, 4, '27.34.104.240'),
(310, 'Events [Virtual Guest Lecture] Edit Successfully', '2020-06-22 17:45:24', 1, 4, '27.34.104.240'),
(311, 'Events [Economy Business] Edit Successfully', '2020-06-22 17:50:05', 1, 4, '27.34.104.240'),
(312, 'Login: Site Admin  logged in.', '2020-06-22 17:50:21', 1, 1, '43.231.208.4'),
(313, 'Events [Virtual Guest Lecture] Edit Successfully', '2020-06-22 17:50:54', 1, 4, '43.231.208.4'),
(314, 'Events [Economy Business] Edit Successfully', '2020-06-22 17:52:42', 1, 4, '27.34.104.240'),
(315, 'Events [Economy Business] Edit Successfully', '2020-06-22 17:57:19', 1, 4, '27.34.104.240'),
(316, 'Events [????????? ???? ???? ????? ?] Edit Successf', '2020-06-22 18:07:02', 1, 4, '27.34.104.240'),
(317, 'Events [Virtual Guest Lecture] Edit Successfully', '2020-06-22 18:15:40', 1, 4, '27.34.104.240'),
(318, 'Events [Virtual Guest Lecture] Edit Successfully', '2020-06-22 18:16:26', 1, 4, '27.34.104.240'),
(319, 'Events [????????? ???? ???? ????? ?] Edit Successf', '2020-06-22 18:17:02', 1, 4, '27.34.104.240'),
(320, 'Events [Economy Business] Edit Successfully', '2020-06-22 18:17:54', 1, 4, '27.34.104.240'),
(321, 'Slideshow [Dr. Om Bahadur Rajbhandary] Edit Succes', '2020-06-22 18:24:43', 1, 4, '43.231.208.4'),
(322, 'Events [Economy Business] Edit Successfully', '2020-06-22 18:25:39', 1, 4, '27.34.104.240'),
(323, 'Changes on Article \'A real estate expert\' has been', '2020-06-22 18:45:28', 1, 4, '43.231.208.4'),
(324, 'Changes on Config \'Om Rajbhandary\' has been saved ', '2020-06-22 18:57:04', 1, 4, '27.34.104.240'),
(325, 'Events [The home market will grow after Luckdown] ', '2020-06-22 19:02:28', 1, 4, '27.34.104.240'),
(326, 'Slideshow [Dr. Om Bahadur Rajbhandary] Edit Succes', '2020-06-22 19:11:12', 1, 4, '27.34.104.240'),
(327, 'Slideshow [Dr. Om Bahadur Rajbhandary] Edit Succes', '2020-06-22 19:12:31', 1, 4, '27.34.104.240'),
(328, 'Slideshow [Dr. Om Bahadur Rajbhandary] Edit Succes', '2020-06-22 19:15:12', 1, 4, '27.34.104.240'),
(329, 'Slideshow [Dr. Om Bahadur Rajbhandary] Edit Succes', '2020-06-22 19:16:14', 1, 4, '27.34.104.240'),
(330, 'Slideshow [SCCI Conference] Edit Successfully', '2020-06-22 19:17:51', 1, 4, '27.34.104.240'),
(331, 'Slideshow [Dr. Om Bahadur Rajbhandary] Edit Succes', '2020-06-22 19:27:37', 1, 4, '27.34.104.240'),
(332, 'Slideshow [SCCI Conference] Edit Successfully', '2020-06-22 19:28:05', 1, 4, '27.34.104.240'),
(333, 'Slideshow [Dr. Om Bahadur Rajbhandary] Edit Succes', '2020-06-22 19:34:27', 1, 4, '27.34.104.240'),
(334, 'Slideshow [SCCI Conference] Edit Successfully', '2020-06-22 19:35:36', 1, 4, '27.34.104.240'),
(335, 'Slideshow [Brihat Executives] Edit Successfully', '2020-06-22 19:39:41', 1, 4, '27.34.104.240'),
(336, 'Slideshow [Dr. Om Bahadur Rajbhandary] Edit Succes', '2020-06-22 19:46:10', 1, 4, '27.34.104.240'),
(337, 'Slideshow [SCCI Conference] Edit Successfully', '2020-06-22 19:46:38', 1, 4, '27.34.104.240'),
(338, 'Slideshow [Brihat Executives] Edit Successfully', '2020-06-22 19:47:12', 1, 4, '27.34.104.240'),
(339, 'Slideshow [Green Building Leveling] Edit Successfu', '2020-06-22 19:48:36', 1, 4, '27.34.104.240'),
(340, 'Slideshow [Green Building Leveling] Edit Successfu', '2020-06-22 19:50:06', 1, 4, '27.34.104.240'),
(341, 'Slideshow [SCCI Conference] Edit Successfully', '2020-06-22 19:53:24', 1, 4, '27.34.104.240'),
(342, 'Changes on Article \'A real estate expert\' has been', '2020-06-22 19:56:34', 1, 4, '27.34.104.240'),
(343, 'Changes on Article \'A real estate expert\' has been', '2020-06-22 19:57:20', 1, 4, '27.34.104.240'),
(344, 'Slideshow [Dr. Om Bahadur Rajbhandary] Edit Succes', '2020-06-22 19:58:10', 1, 4, '27.34.104.240'),
(345, 'Changes on Article \'A real estate expert\' has been', '2020-06-22 19:59:38', 1, 4, '27.34.104.240'),
(346, 'Menu [Training] Edit Successfully', '2020-06-22 20:03:14', 1, 4, '27.34.104.240'),
(347, 'Training [Land pooling- Challenges &Opportunities]', '2020-06-22 20:06:17', 1, 4, '27.34.104.240'),
(348, 'Events [Virtual Guest Lecture] Edit Successfully', '2020-06-22 20:16:45', 1, 4, '27.34.104.240'),
(349, 'Events [Virtual Guest Lecture] Edit Successfully', '2020-06-22 20:34:00', 1, 4, '27.34.104.240'),
(350, 'Events [Virtual Guest Lecture] Edit Successfully', '2020-06-22 20:41:39', 1, 4, '27.34.104.240'),
(351, 'Menu [Media Coverage] Edit Successfully', '2020-06-22 20:58:34', 1, 4, '27.34.104.240'),
(352, 'Menu [Training & Presentation] Edit Successfully', '2020-06-22 20:59:15', 1, 4, '27.34.104.240'),
(353, 'Login: Site Admin  logged in.', '2020-06-23 10:06:49', 1, 1, '27.34.104.240'),
(354, 'Changes on Article \'A real estate expert\' has been', '2020-06-23 10:07:30', 1, 4, '27.34.104.240'),
(355, 'Slideshow [Dr. Om Bahadur Rajbhandary] Edit Succes', '2020-06-23 10:46:10', 1, 4, '27.34.104.240'),
(356, 'Login: Site Admin  logged in.', '2020-06-23 10:50:40', 1, 1, '43.231.208.4'),
(357, 'Gallery [Recognition]Data has been added successfu', '2020-06-23 11:04:17', 1, 3, '43.231.208.4'),
(358, 'Sub Gallery Image [Certificate of Appreciation Fro', '2020-06-23 11:27:59', 1, 3, '43.231.208.4'),
(359, 'Sub Gallery Image [Professional Doctoral<br />Cert', '2020-06-23 11:28:20', 1, 3, '43.231.208.4'),
(360, 'Sub Gallery Image [Honorable Judge<br />FIABCI-Tha', '2020-06-23 11:28:45', 1, 3, '43.231.208.4'),
(361, 'Sub Gallery Image [Letter of Appreciation By<br />', '2020-06-23 11:29:10', 1, 3, '43.231.208.4'),
(362, 'Sub Gallery Image [Agent of Change<br />2012 Honor', '2020-06-23 11:29:35', 1, 3, '43.231.208.4'),
(363, 'Sub Gallery Image [Honored with Home<br />Land Rea', '2020-06-23 11:30:10', 1, 3, '43.231.208.4'),
(364, 'Sub Gallery Image [Nepal police<br />2066]Data has', '2020-06-23 11:30:29', 1, 3, '43.231.208.4'),
(365, 'Sub Gallery Image [Letter of Felicitation<br />206', '2020-06-23 11:30:50', 1, 3, '43.231.208.4'),
(366, 'Sub Gallery Image [Letter of Felicitation<br />206', '2020-06-23 11:31:10', 1, 3, '43.231.208.4'),
(367, 'Sub Gallery Image [Certificate<br />May 26,2008]Da', '2020-06-23 11:31:27', 1, 3, '43.231.208.4'),
(368, 'Sub Gallery Image [Letter of Appreciation<br />Jun', '2020-06-23 11:31:47', 1, 3, '43.231.208.4'),
(369, 'Sub Gallery Image [Boss Award<br />June 8, 2010]Da', '2020-06-23 11:32:09', 1, 3, '43.231.208.4'),
(370, 'Sub Gallery Image [FNCCI Certificate]Data has been', '2020-06-23 11:32:24', 1, 3, '43.231.208.4'),
(371, 'Sub Gallery Image [LBEF Certificate<br />of Apprec', '2020-06-23 11:32:40', 1, 3, '43.231.208.4'),
(372, 'Sub Gallery Image [Global Entrepreneurship<br />We', '2020-06-23 11:32:56', 1, 3, '43.231.208.4'),
(373, 'Sub Gallery Image [Nepal Thailand<br />Friendship ', '2020-06-23 11:33:17', 1, 3, '43.231.208.4'),
(374, 'Login: Site Admin  logged in.', '2020-06-23 11:44:26', 1, 1, '27.34.104.240'),
(375, 'Training [test] Edit Successfully', '2020-06-23 11:57:24', 1, 4, '43.231.208.4'),
(376, 'Changes on Config \'Om Rajbhandary\' has been saved ', '2020-06-23 12:09:34', 1, 4, '27.34.104.240'),
(377, 'Changes on Config \'Om Rajbhandary\' has been saved ', '2020-06-23 12:11:29', 1, 4, '43.231.208.4'),
(378, 'Changes on Config \'Om Rajbhandary\' has been saved ', '2020-06-23 12:15:30', 1, 4, '43.231.208.4'),
(379, 'Changes on Config \'Om Rajbhandary\' has been saved ', '2020-06-23 12:25:38', 1, 4, '43.231.208.4'),
(380, 'Events [Virtual Guest Lecture] Edit Successfully', '2020-06-23 12:54:24', 1, 4, '27.34.104.240'),
(381, 'Events [Banks should invest on real estate openly.', '2020-06-23 13:23:23', 1, 4, '43.231.208.4'),
(382, 'Login: Site Admin  logged in.', '2020-06-23 16:27:50', 1, 1, '43.231.208.4'),
(383, 'Login: Site Admin  logged in.', '2020-06-23 16:28:11', 1, 1, '27.34.68.147'),
(384, 'Login: Site Admin  logged in.', '2020-06-23 18:01:03', 1, 1, '27.34.13.10'),
(385, 'Changes on Article \'Profile\' has been saved succes', '2020-06-23 18:04:48', 1, 4, '27.34.13.10'),
(386, 'Changes on Article \'Professional Experience\' has b', '2020-06-23 18:11:31', 1, 4, '27.34.13.10'),
(387, 'Events [Virtual Guest Lecture] Edit Successfully', '2020-06-23 18:47:25', 1, 4, '27.34.13.10'),
(388, 'Events [The home market will grow after Luckdown] ', '2020-06-23 18:48:41', 1, 4, '27.34.13.10'),
(389, 'Events [The home market will grow after Lockdown] ', '2020-06-23 18:49:00', 1, 4, '27.34.13.10'),
(390, 'Login: Site Admin  logged in.', '2020-06-23 21:35:02', 1, 1, '27.34.13.10'),
(391, 'Events [Virtual Guest Lecture] Edit Successfully', '2020-06-23 21:40:04', 1, 4, '27.34.13.10'),
(392, 'Events [The home market will grow after Lockdown] ', '2020-06-23 21:43:11', 1, 4, '27.34.13.10'),
(393, 'Article \'Involvements\' has been added successfully', '2020-06-23 21:52:50', 1, 3, '27.34.13.10'),
(394, 'Changes on Article \'Involvements\' has been saved s', '2020-06-23 21:56:35', 1, 4, '27.34.13.10'),
(395, 'Changes on Article \'Involvements\' has been saved s', '2020-06-23 22:04:22', 1, 4, '27.34.13.10'),
(396, 'Article Category [Involvements]Data has been added', '2020-06-23 22:05:30', 1, 3, '27.34.13.10'),
(397, 'Changes on Article \'Antarpreprna\' has been saved s', '2020-06-23 22:08:30', 1, 4, '27.34.13.10'),
(398, 'Changes on Article \'Antarpreprna\' has been saved s', '2020-06-23 22:25:30', 1, 4, '27.34.13.10'),
(399, 'Changes on Article \'Antarpreprna\' has been saved s', '2020-06-23 22:27:39', 1, 4, '27.34.13.10'),
(400, 'Changes on Article \'Antarpreprna\' has been saved s', '2020-06-23 22:29:08', 1, 4, '27.34.13.10'),
(401, 'Changes on Article \'Antarpreprna\' has been saved s', '2020-06-23 22:29:43', 1, 4, '27.34.13.10'),
(402, 'Changes on Article \'Antarpreprna\' has been saved s', '2020-06-23 22:32:01', 1, 4, '27.34.13.10'),
(403, 'Changes on Article \'Kathmandu Valley Water Supply\'', '2020-06-23 22:34:32', 1, 4, '27.34.13.10'),
(404, 'Changes on Logo \'10\' has been saved successfully.', '2020-06-23 22:39:15', 1, 4, '27.34.13.10'),
(405, 'Article \'Involvements\' has been added successfully', '2020-06-23 22:41:14', 1, 3, '27.34.13.10'),
(406, 'Changes on Article \'Involvements\' has been saved s', '2020-06-23 22:48:48', 1, 4, '27.34.13.10'),
(407, 'Changes on Article \'Involvements\' has been saved s', '2020-06-23 23:01:39', 1, 4, '27.34.13.10'),
(408, 'Changes on Article \'Involvements\' has been saved s', '2020-06-23 23:14:33', 1, 4, '27.34.13.10'),
(409, 'Changes on Article \'Involvements\' has been saved s', '2020-06-23 23:37:54', 1, 4, '27.34.13.10'),
(410, 'Login: Site Admin  logged in.', '2020-06-24 11:09:13', 1, 1, '43.231.208.4'),
(411, 'Changes on Logo \'1\' has been saved successfully.', '2020-06-24 11:09:36', 1, 4, '43.231.208.4'),
(412, 'Changes on Logo \'1\' has been saved successfully.', '2020-06-24 11:11:19', 1, 4, '43.231.208.4'),
(413, 'Login: Site Admin  logged in.', '2020-06-24 13:18:52', 1, 1, '27.34.13.10'),
(414, 'Changes on Article \'Professional Experience\' has b', '2020-06-24 13:25:08', 1, 4, '27.34.13.10'),
(415, 'Changes on Article \'Professional Experience\' has b', '2020-06-24 13:27:00', 1, 4, '27.34.13.10'),
(416, 'Changes on Article \'Professional Experience\' has b', '2020-06-24 13:28:40', 1, 4, '27.34.13.10'),
(417, 'Events [The home market will grow after Lockdown] ', '2020-06-24 13:34:50', 1, 4, '27.34.13.10'),
(418, 'Menu [Events] Edit Successfully', '2020-06-24 13:43:47', 1, 4, '27.34.13.10'),
(419, 'Changes on Logo \'1\' has been saved successfully.', '2020-06-24 13:55:22', 1, 4, '27.34.13.10'),
(420, 'Changes on Logo \'Antarpreprna\' has been saved succ', '2020-06-24 14:03:03', 1, 4, '27.34.68.191'),
(421, 'Changes on Logo \'Ace institute\' has been saved suc', '2020-06-24 14:03:28', 1, 4, '27.34.68.191'),
(422, 'Changes on Logo \'CACCI\' has been saved successfull', '2020-06-24 14:35:24', 1, 4, '27.34.68.191'),
(423, 'Changes on Logo \'Hospice\' has been saved successfu', '2020-06-24 14:35:44', 1, 4, '27.34.68.191'),
(424, 'Changes on Logo \'Nepal Ambulance Service\' has been', '2020-06-24 14:36:05', 1, 4, '27.34.68.191'),
(425, 'Changes on Logo \'Habitat\' has been saved successfu', '2020-06-24 14:36:29', 1, 4, '27.34.68.191'),
(426, 'Changes on Logo \'Industrial Promotion Board\' has b', '2020-06-24 14:38:12', 1, 4, '27.34.68.191'),
(427, 'Changes on Logo \'FNCCI\' has been saved successfull', '2020-06-24 14:38:36', 1, 4, '27.34.68.191'),
(428, 'Changes on Logo \'KTM Valley Water Supply\' has been', '2020-06-24 14:39:08', 1, 4, '27.34.68.191'),
(429, 'Changes on Logo \'NLHDA\' has been saved successfull', '2020-06-24 14:39:28', 1, 4, '27.34.68.191'),
(430, 'Changes on Logo \'NIURS\' has been saved successfull', '2020-06-24 14:39:56', 1, 4, '27.34.68.191'),
(431, 'Changes on Logo \'Thailand Friendship\' has been sav', '2020-06-24 14:40:31', 1, 4, '27.34.68.191'),
(432, 'Changes on Logo \'UN-HABITAT\' has been saved succes', '2020-06-24 14:40:54', 1, 4, '27.34.68.191'),
(433, 'Changes on Logo \'SAARC\' has been saved successfull', '2020-06-24 14:43:08', 1, 4, '27.34.68.191'),
(434, 'Changes on Logo \'Rotary Club\' has been saved succe', '2020-06-24 14:46:50', 1, 4, '27.34.68.191'),
(435, 'Changes on Logo \'TREBS\' has been saved successfull', '2020-06-24 14:48:34', 1, 4, '27.34.68.191'),
(436, 'Changes on Article \'Involvements\' has been saved s', '2020-06-24 14:58:46', 1, 4, '27.34.68.191'),
(437, 'Changes on Article \'Involvements\' has been saved s', '2020-06-24 15:00:10', 1, 4, '27.34.68.191'),
(438, 'Login: Site Admin  logged in.', '2020-06-24 15:20:01', 1, 1, '202.166.207.65'),
(439, 'Logo \'CE Construction\' has been added successfully', '2020-06-24 15:36:20', 1, 3, '27.34.68.191'),
(440, 'Logo \'The Comfort Housing\' has been added successf', '2020-06-24 15:36:57', 1, 3, '27.34.68.191'),
(441, 'Login: Site Admin  logged in.', '2020-06-24 15:38:45', 1, 1, '202.166.207.65'),
(442, 'Changes on Article \'Involvements\' has been saved s', '2020-06-24 15:42:04', 1, 4, '27.34.68.191'),
(443, 'Changes on Article \'Involvements\' has been saved s', '2020-06-24 15:42:17', 1, 4, '27.34.68.191'),
(444, 'Changes on Article \'Profile\' has been saved succes', '2020-06-24 15:43:31', 1, 4, '27.34.68.191'),
(445, 'Changes on Article \'Profile\' has been saved succes', '2020-06-24 15:44:08', 1, 4, '27.34.68.191'),
(446, 'Articles  [Kathmandu Valley Water Supply]Data has ', '2020-06-24 15:45:30', 1, 6, '27.34.68.191'),
(447, 'Changes on Logo \'KTM Valley Water Supply\' has been', '2020-06-24 15:45:46', 1, 4, '27.34.68.191'),
(448, 'Changes on Logo \'FNCCI\' has been saved successfull', '2020-06-24 15:46:01', 1, 4, '27.34.68.191'),
(449, 'Changes on Logo \'CE Construction\' has been saved s', '2020-06-24 15:51:37', 1, 4, '27.34.68.191'),
(450, 'Changes on Logo \'The Comfort Housing\' has been sav', '2020-06-24 15:52:01', 1, 4, '27.34.68.191'),
(451, 'Changes on Logo \'SAARC\' has been saved successfull', '2020-06-24 15:59:32', 1, 4, '27.34.68.191'),
(452, 'Changes on Logo \'CACCI\' has been saved successfull', '2020-06-24 16:00:04', 1, 4, '27.34.68.191'),
(453, 'Changes on Logo \'Industrial Promotion Board\' has b', '2020-06-24 16:00:18', 1, 4, '27.34.68.191'),
(454, 'Changes on Logo \'Thailand Friendship\' has been sav', '2020-06-24 16:00:47', 1, 4, '27.34.68.191'),
(455, 'Article \'The Comfort Housing\' has been added succe', '2020-06-24 16:06:32', 1, 3, '27.34.68.191'),
(456, 'Changes on Logo \'KTM Valley Water Supply\' has been', '2020-06-24 16:07:26', 1, 4, '27.34.68.191'),
(457, 'Article \'Antarpreprna\' has been added successfully', '2020-06-24 16:08:10', 1, 3, '27.34.68.191'),
(458, 'Changes on Logo \'FNCCI\' has been saved successfull', '2020-06-24 16:08:37', 1, 4, '27.34.68.191'),
(459, 'Changes on Logo \'KTM Valley Water Supply\' has been', '2020-06-24 16:09:27', 1, 4, '27.34.68.191'),
(460, 'Changes on Logo \'FNCCI\' has been saved successfull', '2020-06-24 16:09:41', 1, 4, '27.34.68.191'),
(461, 'Login: Site Admin  logged in.', '2020-06-24 16:41:58', 1, 1, '43.231.208.4'),
(462, 'Changes on Config \'Om Rajbhandary\' has been saved ', '2020-06-24 16:42:42', 1, 4, '43.231.208.4'),
(463, 'Login: Site Admin  logged in.', '2020-06-24 17:46:54', 1, 1, '27.34.68.191'),
(464, 'Video [YouTube]Data has been added successfully.', '2020-06-24 17:47:29', 1, 3, '27.34.68.191'),
(465, 'Video [YouTube]Data has been added successfully.', '2020-06-24 17:49:15', 1, 3, '27.34.68.191'),
(466, 'Video []Data has been added successfully.', '2020-06-24 17:49:30', 1, 3, '27.34.68.191'),
(467, 'Video  []Data has been deleted successfully.', '2020-06-24 17:50:25', 1, 6, '27.34.68.191'),
(468, 'Video [YouTube]Data has been added successfully.', '2020-06-24 17:50:42', 1, 3, '27.34.68.191'),
(469, 'Video  [YouTube]Data has been deleted successfully', '2020-06-24 17:50:59', 1, 6, '27.34.68.191'),
(470, 'Changes on Config \'Om Rajbhandary\' has been saved ', '2020-06-24 17:55:46', 1, 4, '27.34.68.191'),
(471, 'Events [The home market will grow after Lockdown] ', '2020-06-24 18:02:11', 1, 4, '27.34.68.191'),
(472, 'Events [The home market will grow after Lockdown] ', '2020-06-24 18:03:25', 1, 4, '27.34.68.191'),
(473, 'Events [The home market will grow after Lockdown] ', '2020-06-24 18:09:35', 1, 4, '27.34.68.191'),
(474, 'Events [The home market will grow after Lockdown] ', '2020-06-24 18:11:31', 1, 4, '27.34.68.191'),
(475, 'Events [Post lockdown Real Estate Sector will grow', '2020-06-24 18:14:35', 1, 4, '27.34.68.191'),
(476, 'Events [Post lockdown Real Estate Sector will grow', '2020-06-24 18:16:24', 1, 4, '27.34.68.191'),
(477, 'Events [ COVID – 19 Implications for Business in N', '2020-06-24 18:18:30', 1, 3, '27.34.68.191'),
(478, 'Events [One who make the balanced team wins the el', '2020-06-24 18:19:27', 1, 3, '27.34.68.191'),
(479, 'Events [A Visionary Developer.]Data has been added', '2020-06-24 18:20:34', 1, 3, '27.34.68.191'),
(480, 'Events [My first car was a Volkswagen Beetle and w', '2020-06-24 18:21:51', 1, 3, '27.34.68.191'),
(481, 'Events [) Topic: Prospective buyers will be given ', '2020-06-24 18:22:29', 1, 3, '27.34.68.191'),
(482, 'Events [Real Estate Expo to regain customer’s self', '2020-06-24 18:23:02', 1, 3, '27.34.68.191'),
(483, 'Events [Housing for planned urbanization.]Data has', '2020-06-24 18:23:27', 1, 3, '27.34.68.191'),
(484, 'Events [Prospective buyers will be given special t', '2020-06-24 18:24:33', 1, 4, '27.34.68.191'),
(485, 'Events [Investigation to secure investment.]Data h', '2020-06-24 18:25:09', 1, 3, '27.34.68.191'),
(486, 'Events [Good time to buy a home]Data has been adde', '2020-06-24 18:32:34', 1, 3, '27.34.68.191'),
(487, 'Events [Not Possible for the middle class to buy a', '2020-06-24 18:35:09', 1, 3, '27.34.68.191'),
(488, 'Events [Measures of manpower management in reconst', '2020-06-24 18:38:06', 1, 3, '27.34.68.191'),
(489, 'Events [Measures of manpower management in reconst', '2020-06-24 18:39:44', 1, 4, '27.34.68.191'),
(490, 'Events [Antarpreprna for Entrepreneurs]Data has be', '2020-06-24 18:42:20', 1, 3, '27.34.68.191'),
(491, 'Events [No one can stop the growth of real estate]', '2020-06-24 18:43:50', 1, 3, '27.34.68.191'),
(492, 'Events [Real estate entrepreneur shares experience', '2020-06-24 18:52:19', 1, 3, '27.34.68.191'),
(493, 'Events [Announcement of Fourth Real Estate Marketi', '2020-06-24 18:54:29', 1, 3, '27.34.68.191'),
(494, 'Events [Agency for Real Estate Affairs ]Data has b', '2020-06-24 18:56:12', 1, 3, '27.34.68.191'),
(495, 'Events [Real Estate Training Workshop with TREBS ]', '2020-06-24 18:59:33', 1, 3, '27.34.68.191'),
(496, 'Events [Real Estate Training Workshop with TREBS ]', '2020-06-24 18:59:59', 1, 4, '27.34.68.191'),
(497, 'Events [Real Estate Training Workshop with TREBS ]', '2020-06-24 19:01:00', 1, 4, '27.34.68.191'),
(498, 'Events [Creative Business Cup Nepal 2018 in Septem', '2020-06-24 19:02:14', 1, 3, '27.34.68.191'),
(499, 'Events [Creative Business Cup to be hosted in Nepa', '2020-06-24 19:03:20', 1, 3, '27.34.68.191'),
(500, 'Events [Encouraging multi-faceted education]Data h', '2020-06-24 19:05:05', 1, 3, '27.34.68.191'),
(501, 'Events [REMA, Need of an Existing Real Estate Mark', '2020-06-24 19:06:37', 1, 3, '27.34.68.191'),
(502, 'Video [YouTube]Data has been added successfully.', '2020-06-24 19:08:33', 1, 3, '27.34.68.191'),
(503, 'Video [YouTube]Data has been added successfully.', '2020-06-24 19:08:48', 1, 3, '27.34.68.191'),
(504, 'Video [YouTube]Data has been added successfully.', '2020-06-24 19:09:03', 1, 3, '27.34.68.191'),
(505, 'Video [YouTube]Data has been added successfully.', '2020-06-24 19:09:18', 1, 3, '27.34.68.191'),
(506, 'Video [YouTube]Data has been added successfully.', '2020-06-24 19:09:42', 1, 3, '27.34.68.191');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(507, 'Video [YouTube]Data has been added successfully.', '2020-06-24 19:09:57', 1, 3, '27.34.68.191'),
(508, 'Video [Om Bahadur Rajbhandari à¥¤à¥¤ à¤?à¤®à¤¬à¤¹à', '2020-06-24 19:10:18', 1, 3, '27.34.68.191'),
(509, 'Video [OM RAJBHANDARI | THE REAL ESTATE PIONEER | ', '2020-06-24 19:10:48', 1, 3, '27.34.68.191'),
(510, 'Video [Never Change Your Originality - Om Rajbhand', '2020-06-24 19:11:04', 1, 3, '27.34.68.191'),
(511, 'Video [YouTube]Data has been added successfully.', '2020-06-24 19:11:26', 1, 3, '27.34.68.191'),
(512, 'Video [My Housing | Om Rajbhandari | Hamrokatha - ', '2020-06-24 19:11:40', 1, 3, '27.34.68.191'),
(513, 'Video [Interview of  Om Rajbhandari on KTV - Part ', '2020-06-24 19:11:50', 1, 3, '27.34.68.191'),
(514, 'Video [YouTube]Data has been added successfully.', '2020-06-24 19:12:00', 1, 3, '27.34.68.191'),
(515, 'Video  [My Housing | Om Rajbhandari | Hamrokatha -', '2020-06-24 19:12:55', 1, 6, '27.34.68.191'),
(516, 'Video  []Data has been deleted successfully.', '2020-06-24 19:13:09', 1, 6, '27.34.68.191'),
(517, 'Video  [YouTube]Data has been deleted successfully', '2020-06-24 19:13:09', 1, 6, '27.34.68.191'),
(518, 'Video  []Data has been deleted successfully.', '2020-06-24 19:13:23', 1, 6, '27.34.68.191'),
(519, 'Video  []Data has been deleted successfully.', '2020-06-24 19:13:23', 1, 6, '27.34.68.191'),
(520, 'Video  [Interview of  Om Rajbhandari on KTV - Part', '2020-06-24 19:13:23', 1, 6, '27.34.68.191'),
(521, 'Video  []Data has been deleted successfully.', '2020-06-24 19:13:36', 1, 6, '27.34.68.191'),
(522, 'Video  []Data has been deleted successfully.', '2020-06-24 19:13:37', 1, 6, '27.34.68.191'),
(523, 'Video  [YouTube]Data has been deleted successfully', '2020-06-24 19:13:37', 1, 6, '27.34.68.191'),
(524, 'Video  []Data has been deleted successfully.', '2020-06-24 19:13:37', 1, 6, '27.34.68.191'),
(525, 'Video  []Data has been deleted successfully.', '2020-06-24 19:13:55', 1, 6, '27.34.68.191'),
(526, 'Video  [Never Change Your Originality - Om Rajbhan', '2020-06-24 19:13:55', 1, 6, '27.34.68.191'),
(527, 'Video  []Data has been deleted successfully.', '2020-06-24 19:13:55', 1, 6, '27.34.68.191'),
(528, 'Video  []Data has been deleted successfully.', '2020-06-24 19:13:55', 1, 6, '27.34.68.191'),
(529, 'Video  []Data has been deleted successfully.', '2020-06-24 19:13:55', 1, 6, '27.34.68.191'),
(530, 'Video  []Data has been deleted successfully.', '2020-06-24 19:14:53', 1, 6, '27.34.68.191'),
(531, 'Video  []Data has been deleted successfully.', '2020-06-24 19:14:53', 1, 6, '27.34.68.191'),
(532, 'Video  []Data has been deleted successfully.', '2020-06-24 19:14:53', 1, 6, '27.34.68.191'),
(533, 'Video  []Data has been deleted successfully.', '2020-06-24 19:14:53', 1, 6, '27.34.68.191'),
(534, 'Video  []Data has been deleted successfully.', '2020-06-24 19:14:54', 1, 6, '27.34.68.191'),
(535, 'Video  []Data has been deleted successfully.', '2020-06-24 19:14:54', 1, 6, '27.34.68.191'),
(536, 'Video  [OM RAJBHANDARI | THE REAL ESTATE PIONEER |', '2020-06-24 19:14:54', 1, 6, '27.34.68.191'),
(537, 'Video  []Data has been deleted successfully.', '2020-06-24 19:15:46', 1, 6, '27.34.68.191'),
(538, 'Video  []Data has been deleted successfully.', '2020-06-24 19:15:46', 1, 6, '27.34.68.191'),
(539, 'Video  []Data has been deleted successfully.', '2020-06-24 19:15:46', 1, 6, '27.34.68.191'),
(540, 'Video  []Data has been deleted successfully.', '2020-06-24 19:15:46', 1, 6, '27.34.68.191'),
(541, 'Video  []Data has been deleted successfully.', '2020-06-24 19:15:46', 1, 6, '27.34.68.191'),
(542, 'Video  []Data has been deleted successfully.', '2020-06-24 19:15:46', 1, 6, '27.34.68.191'),
(543, 'Video  []Data has been deleted successfully.', '2020-06-24 19:15:46', 1, 6, '27.34.68.191'),
(544, 'Video  [Om Bahadur Rajbhandari à¥¤à¥¤ à¤?à¤®à¤¬à¤¹', '2020-06-24 19:15:47', 1, 6, '27.34.68.191'),
(545, 'Login: Site Admin  logged in.', '2020-06-25 10:35:46', 1, 1, '27.34.68.191'),
(546, 'Changes on Logo \'CE Construction\' has been saved s', '2020-06-25 10:52:55', 1, 4, '27.34.68.191'),
(547, 'Changes on Logo \'The Comfort Housing\' has been sav', '2020-06-25 10:54:55', 1, 4, '27.34.68.191'),
(548, 'Changes on Logo \'Antarpreprna\' has been saved succ', '2020-06-25 10:55:17', 1, 4, '27.34.68.191'),
(549, 'Changes on Logo \'Nepal Ambulance Service\' has been', '2020-06-25 10:55:58', 1, 4, '27.34.68.191'),
(550, 'Changes on Logo \'Hospice\' has been saved successfu', '2020-06-25 10:56:18', 1, 4, '27.34.68.191'),
(551, 'Changes on Logo \'Rotary Club\' has been saved succe', '2020-06-25 10:56:39', 1, 4, '27.34.68.191'),
(552, 'Changes on Logo \'TREBS\' has been saved successfull', '2020-06-25 10:57:01', 1, 4, '27.34.68.191'),
(553, 'Changes on Logo \'Habitat\' has been saved successfu', '2020-06-25 10:57:24', 1, 4, '27.34.68.191'),
(554, 'Changes on Logo \'UN-HABITAT\' has been saved succes', '2020-06-25 10:57:43', 1, 4, '27.34.68.191'),
(555, 'Changes on Logo \'Ace institute\' has been saved suc', '2020-06-25 10:58:07', 1, 4, '27.34.68.191'),
(556, 'Changes on Logo \'NIURS\' has been saved successfull', '2020-06-25 10:58:29', 1, 4, '27.34.68.191'),
(557, 'Changes on Logo \'NLHDA\' has been saved successfull', '2020-06-25 10:59:04', 1, 4, '27.34.68.191'),
(558, 'Login: Site Admin  logged in.', '2020-06-25 11:55:38', 1, 1, '202.166.207.65'),
(559, 'Login: Site Admin  logged in.', '2020-06-25 16:37:09', 1, 1, '202.166.207.65'),
(560, 'Events [Real estate entrepreneur shares experience', '2020-06-25 16:39:00', 1, 4, '202.166.207.65'),
(561, 'Login: Site Admin  logged in.', '2020-06-25 16:46:06', 1, 1, '43.231.208.4'),
(562, 'Video [After Lockdown] Edit Successfully', '2020-06-25 17:11:21', 1, 4, '43.231.208.4'),
(563, 'Login: Site Admin  logged in.', '2020-06-25 18:21:14', 1, 1, '43.231.208.4'),
(564, 'Login: Site Admin  logged in.', '2020-06-26 11:19:23', 1, 1, '27.34.68.80'),
(565, 'Changes on Logo \'CE Construction\' has been saved s', '2020-06-26 11:20:53', 1, 4, '27.34.68.80'),
(566, 'Changes on Logo \'The Comfort Housing\' has been sav', '2020-06-26 11:21:21', 1, 4, '27.34.68.80'),
(567, 'Changes on Logo \'Canada Nepal Business Executive C', '2020-06-26 11:22:34', 1, 4, '27.34.68.80'),
(568, 'Changes on Logo \'Thai Real Estate Business School ', '2020-06-26 11:23:20', 1, 4, '27.34.68.80'),
(569, 'Changes on Article \'Involvements\' has been saved s', '2020-06-26 11:25:04', 1, 4, '27.34.68.80'),
(570, 'Changes on Article \'Kathmandu Valley Water Supply ', '2020-06-26 11:26:16', 1, 4, '27.34.68.80'),
(571, 'Changes on Logo \'KTM Valley Water Supply\' has been', '2020-06-26 11:28:18', 1, 4, '27.34.68.80'),
(572, 'Changes on Article \'Kathmandu Valley Water Supply ', '2020-06-26 11:30:19', 1, 4, '27.34.68.80'),
(573, 'Changes on Article \'High powered commission for so', '2020-06-26 11:32:11', 1, 4, '27.34.68.80'),
(574, 'Article \'Involvement\' has been added successfully.', '2020-06-26 11:33:46', 1, 3, '27.34.68.80'),
(575, 'Article \'Industrial Promotion Board (Ministry of I', '2020-06-26 11:39:00', 1, 3, '27.34.68.80'),
(576, 'Article \'Federation of Nepalese Chambers of Commer', '2020-06-26 11:40:04', 1, 3, '27.34.68.80'),
(577, 'Article \'SAARC Chambers of Commerce and Industry (', '2020-06-26 11:40:47', 1, 3, '27.34.68.80'),
(578, 'Article \'Confederation of Asia-Pacific Chambers of', '2020-06-26 11:41:46', 1, 3, '27.34.68.80'),
(579, 'Article \'Canada Nepal Business Executive Committee', '2020-06-26 11:42:54', 1, 3, '27.34.68.80'),
(580, 'Article \'Nepal Land and Housing Developers Associa', '2020-06-26 11:47:24', 1, 3, '27.34.68.80'),
(581, 'Article \'Nepal Institute of Urban and Regional Stu', '2020-06-26 11:48:10', 1, 3, '27.34.68.80'),
(582, 'Article \'Third United Nations Conference on Housin', '2020-06-26 11:49:16', 1, 3, '27.34.68.80'),
(583, 'Changes on Article \'Industrial Promotion Board (Mi', '2020-06-26 11:59:02', 1, 4, '27.34.68.80'),
(584, 'Changes on Logo \'Industrial Promotion Board\' has b', '2020-06-26 11:59:47', 1, 4, '27.34.68.80'),
(585, 'Article \'UN-Habitat &ldquo;For a Better Urban Futu', '2020-06-26 12:28:18', 1, 3, '27.34.68.80'),
(586, 'Article \'Habitat for Humanity International (HFHI)', '2020-06-26 12:28:55', 1, 3, '27.34.68.80'),
(587, 'Article \'TREBS\' has been added successfully.', '2020-06-26 12:31:21', 1, 3, '27.34.68.80'),
(588, 'Changes on Article \'Industrial Promotion Board\' ha', '2020-06-26 12:32:57', 1, 4, '27.34.68.80'),
(589, 'Changes on Article \'HFHI\' has been saved successfu', '2020-06-26 12:33:22', 1, 4, '27.34.68.80'),
(590, 'Changes on Article \'UN-Habitat\' has been saved suc', '2020-06-26 12:34:27', 1, 4, '27.34.68.80'),
(591, 'Changes on Article \'Habitat III\' has been saved su', '2020-06-26 12:35:02', 1, 4, '27.34.68.80'),
(592, 'Changes on Article \'NIURS\' has been saved successf', '2020-06-26 12:36:50', 1, 4, '27.34.68.80'),
(593, 'Changes on Article \'NLHDA\' has been saved successf', '2020-06-26 12:38:00', 1, 4, '27.34.68.80'),
(594, 'Changes on Article \'CACCI\' has been saved successf', '2020-06-26 12:38:24', 1, 4, '27.34.68.80'),
(595, 'Changes on Article \'SCCI\' has been saved successfu', '2020-06-26 12:38:48', 1, 4, '27.34.68.80'),
(596, 'Changes on Article \'FNCCI\' has been saved successf', '2020-06-26 12:49:02', 1, 4, '27.34.68.80'),
(597, 'Article \'Rotary Club of Kasthamandap\' has been add', '2020-06-26 12:51:10', 1, 3, '27.34.68.80'),
(598, 'Article \'Hospice Nepal\' has been added successfull', '2020-06-26 12:52:20', 1, 3, '27.34.68.80'),
(599, 'Article \'Nepal Ambulance Service (NAS)\' has been a', '2020-06-26 12:52:58', 1, 3, '27.34.68.80'),
(600, 'Article \'Ace Institute of Management\' has been add', '2020-06-26 12:53:32', 1, 3, '27.34.68.80'),
(601, 'Article \'Anterprerana P. Ltd\' has been added succe', '2020-06-26 12:53:58', 1, 3, '27.34.68.80'),
(602, 'Article \'The Comfort Housing Pvt. Ltd\' has been ad', '2020-06-26 12:54:31', 1, 3, '27.34.68.80'),
(603, 'Article \'CE Construction Pvt. Ltd.\' has been added', '2020-06-26 12:54:58', 1, 3, '27.34.68.80'),
(604, 'Changes on Article \'Recognition\' has been saved su', '2020-06-26 12:56:35', 1, 4, '27.34.68.80'),
(605, 'Changes on Article \'Recognition\' has been saved su', '2020-06-26 12:57:13', 1, 4, '27.34.68.80'),
(606, 'Login: Site Admin  logged in.', '2020-06-26 12:58:37', 1, 1, '43.231.208.4'),
(607, 'Changes on Article \'Profile\' has been saved succes', '2020-06-26 12:58:54', 1, 4, '27.34.68.80'),
(608, 'Changes on Article \'Professional Experience\' has b', '2020-06-26 12:59:34', 1, 4, '27.34.68.80'),
(609, 'Articles  [Involvement]Data has been deleted succe', '2020-06-26 13:06:08', 1, 6, '27.34.68.80'),
(610, 'Changes on Article \'Kathmandu Valley Water Supply ', '2020-06-26 13:09:15', 1, 4, '27.34.68.80'),
(611, 'Changes on Article \'High powered commission for so', '2020-06-26 13:09:54', 1, 4, '27.34.68.80'),
(612, 'Changes on Article \'SCCI\' has been saved successfu', '2020-06-26 13:11:14', 1, 4, '27.34.68.80'),
(613, 'Changes on Article \'Kathmandu Valley Water Supply ', '2020-06-26 13:11:57', 1, 4, '27.34.68.80'),
(614, 'Changes on Article \'High powered commission for so', '2020-06-26 13:12:17', 1, 4, '27.34.68.80'),
(615, 'Changes on Article \'FNCCI\' has been saved successf', '2020-06-26 13:12:33', 1, 4, '27.34.68.80'),
(616, 'Changes on Article \'SCCI\' has been saved successfu', '2020-06-26 13:13:06', 1, 4, '27.34.68.80'),
(617, 'Changes on Article \'Ace Institute of Management\' h', '2020-06-26 13:14:19', 1, 4, '27.34.68.80'),
(618, 'Changes on Article \'Rotary Club of Kasthamandap\' h', '2020-06-26 13:14:58', 1, 4, '27.34.68.80'),
(619, 'Changes on Article \'Hospice Nepal\' has been saved ', '2020-06-26 13:15:28', 1, 4, '27.34.68.80'),
(620, 'Changes on Article \'Nepal Ambulance Service (NAS)\'', '2020-06-26 13:15:57', 1, 4, '27.34.68.80'),
(621, 'Changes on Article \'Anterprerana P. Ltd\' has been ', '2020-06-26 13:16:27', 1, 4, '27.34.68.80'),
(622, 'Changes on Article \'The Comfort Housing Pvt. Ltd\' ', '2020-06-26 13:16:57', 1, 4, '27.34.68.80'),
(623, 'Changes on Article \'Ace Institute of Management\' h', '2020-06-26 13:17:07', 1, 4, '43.231.208.4'),
(624, 'Changes on Article \'Ace Institute of Management\' h', '2020-06-26 13:17:27', 1, 4, '43.231.208.4'),
(625, 'Changes on Article \'CE Construction Pvt. Ltd.\' has', '2020-06-26 13:17:44', 1, 4, '27.34.68.80'),
(626, 'Changes on Logo \'FNCCI\' has been saved successfull', '2020-06-26 13:18:32', 1, 4, '27.34.68.80'),
(627, 'Changes on Logo \'SAARC\' has been saved successfull', '2020-06-26 13:18:52', 1, 4, '27.34.68.80'),
(628, 'Changes on Logo \'CACCI\' has been saved successfull', '2020-06-26 13:19:16', 1, 4, '27.34.68.80'),
(629, 'Changes on Logo \'Industrial Promotion Board\' has b', '2020-06-26 13:19:36', 1, 4, '27.34.68.80'),
(630, 'Changes on Logo \'Canada Nepal Business Executive C', '2020-06-26 13:19:59', 1, 4, '27.34.68.80'),
(631, 'Changes on Logo \'NLHDA\' has been saved successfull', '2020-06-26 13:20:20', 1, 4, '27.34.68.80'),
(632, 'Changes on Logo \'NIURS\' has been saved successfull', '2020-06-26 13:20:51', 1, 4, '27.34.68.80'),
(633, 'Changes on Logo \'Ace institute\' has been saved suc', '2020-06-26 13:21:14', 1, 4, '27.34.68.80'),
(634, 'Changes on Logo \'UN-HABITAT\' has been saved succes', '2020-06-26 13:21:31', 1, 4, '27.34.68.80'),
(635, 'Changes on Logo \'Habitat\' has been saved successfu', '2020-06-26 13:21:54', 1, 4, '27.34.68.80'),
(636, 'Changes on Logo \'Thai Real Estate Business School ', '2020-06-26 13:22:19', 1, 4, '27.34.68.80'),
(637, 'Changes on Logo \'Rotary Club of Kasthamandap\' has ', '2020-06-26 13:22:49', 1, 4, '27.34.68.80'),
(638, 'Changes on Logo \'Hospice\' has been saved successfu', '2020-06-26 13:23:11', 1, 4, '27.34.68.80'),
(639, 'Changes on Logo \'Nepal Ambulance Service\' has been', '2020-06-26 13:23:34', 1, 4, '27.34.68.80'),
(640, 'Changes on Logo \'Antarpreprna\' has been saved succ', '2020-06-26 13:23:54', 1, 4, '27.34.68.80'),
(641, 'Changes on Logo \'The Comfort Housing\' has been sav', '2020-06-26 13:24:18', 1, 4, '27.34.68.80'),
(642, 'Changes on Logo \'CE Construction\' has been saved s', '2020-06-26 13:24:36', 1, 4, '27.34.68.80'),
(643, 'Video [OM RAJBHANDARI | THE REAL ESTATE PIONEER | ', '2020-06-26 13:27:58', 1, 4, '27.34.68.80'),
(644, 'Video [Post lockdown Real Estate Sector will grow]', '2020-06-26 13:29:02', 1, 4, '27.34.68.80'),
(645, 'Video [My Housing | Om Rajbhandari | Hamrokatha] E', '2020-06-26 13:29:27', 1, 4, '27.34.68.80'),
(646, 'Video [Development of Housing & Apartments] Edit S', '2020-06-26 13:31:18', 1, 4, '27.34.68.80'),
(647, 'Video [Himalayan TV - Part 1] Edit Successfully', '2020-06-26 13:32:20', 1, 4, '27.34.68.80'),
(648, 'Video [News24 TV - Part 1] Edit Successfully', '2020-06-26 13:33:41', 1, 4, '27.34.68.80'),
(649, 'Video [News24 TV - Part 2] Edit Successfully', '2020-06-26 13:34:11', 1, 4, '27.34.68.80'),
(650, 'Video [Capital Talk on Himalayan TV - Part 1] Edit', '2020-06-26 13:35:44', 1, 4, '27.34.68.80'),
(651, 'Video [Omni Tower Syncate Suites] Edit Successfull', '2020-06-26 13:36:58', 1, 4, '27.34.68.80'),
(652, 'Video [Never Change Your Originality] Edit Success', '2020-06-26 13:37:34', 1, 4, '27.34.68.80'),
(653, 'Video [Interview on Himalayan TV] Edit Successfull', '2020-06-26 13:39:20', 1, 4, '27.34.68.80'),
(654, 'Video [Interview on KTV] Edit Successfully', '2020-06-26 13:39:59', 1, 4, '27.34.68.80'),
(655, 'Video [Interview on Metro Biz] Edit Successfully', '2020-06-26 13:40:26', 1, 4, '27.34.68.80'),
(656, 'Video [Last Thursday\'s with Mr. Om Rajbhandary] Ed', '2020-06-26 13:41:19', 1, 4, '27.34.68.80'),
(657, 'Login: Site Admin  logged in.', '2020-06-26 15:17:40', 1, 1, '202.166.207.65'),
(658, 'Events [Business Guff] Edit Successfully', '2020-06-26 15:37:47', 1, 4, '202.166.207.65'),
(659, 'Events [Virtual Guest Lecture] Edit Successfully', '2020-06-26 15:38:52', 1, 4, '202.166.207.65'),
(660, 'Events [The Real Sector Pioneer] Edit Successfully', '2020-06-26 15:49:28', 1, 4, '202.166.207.65'),
(661, 'Events [Real Estate Sector Post Covid - 19] Edit S', '2020-06-26 15:52:29', 1, 4, '202.166.207.65'),
(662, 'Login: Site Admin  logged in.', '2020-06-28 11:40:07', 1, 1, '27.34.68.137'),
(663, 'Changes on Config \'Om Rajbhandary\' has been saved ', '2020-06-28 11:40:36', 1, 4, '27.34.68.137'),
(664, 'Login: Site Admin  logged in.', '2020-06-28 11:58:30', 1, 1, '202.166.207.65'),
(665, 'Changes on Article \'Kathmandu Valley Water Supply ', '2020-06-28 12:25:43', 1, 4, '202.166.207.65'),
(666, 'Changes on Article \'Kathmandu Valley Water Supply ', '2020-06-28 12:26:48', 1, 4, '202.166.207.65'),
(667, 'Events [ COVID – 19 Implications for Business in N', '2020-06-28 12:42:42', 1, 4, '202.166.207.65'),
(668, 'Login: Site Admin  logged in.', '2020-06-28 14:41:26', 1, 1, '202.166.207.65'),
(669, 'Login: Site Admin  logged in.', '2020-06-28 14:42:04', 1, 1, '27.34.68.243'),
(670, 'Changes on Logo \'KTM Valley Water Supply\' has been', '2020-06-28 14:42:45', 1, 4, '27.34.68.243'),
(671, 'Changes on Article \'Kathmandu Valley Water Supply ', '2020-06-28 14:43:57', 1, 4, '27.34.68.243'),
(672, 'Changes on Article \'Professional Experience\' has b', '2020-06-28 14:54:00', 1, 4, '202.166.207.65'),
(673, 'Events [Opinion] Edit Successfully', '2020-06-28 14:58:26', 1, 4, '202.166.207.65'),
(674, 'Events [Opinion] Edit Successfully', '2020-06-28 15:00:26', 1, 4, '202.166.207.65'),
(675, 'Events [Opinion] Edit Successfully', '2020-06-28 15:03:18', 1, 4, '202.166.207.65'),
(676, 'Events [Banks should invest on real estate openly.', '2020-06-28 15:13:16', 1, 4, '202.166.207.65'),
(677, 'Events [Urban Scenario and master developer Concep', '2020-06-28 15:14:10', 1, 4, '202.166.207.65'),
(678, 'Events [Opinion] Edit Successfully', '2020-06-28 15:24:47', 1, 4, '202.166.207.65'),
(679, 'Events [Opinion] Edit Successfully', '2020-06-28 15:36:14', 1, 4, '202.166.207.65'),
(680, 'Events [Opinion] Edit Successfully', '2020-06-28 15:40:48', 1, 4, '202.166.207.65'),
(681, 'Events [Opinion] Edit Successfully', '2020-06-28 15:45:54', 1, 4, '202.166.207.65'),
(682, 'Login: Site Admin  logged in.', '2020-06-28 15:54:35', 1, 1, '27.34.68.243'),
(683, 'Changes on Config \'Om Rajbhandary\' has been saved ', '2020-06-28 16:00:24', 1, 4, '27.34.68.243'),
(684, 'Login: Site Admin  logged in.', '2020-06-29 11:20:37', 1, 1, '27.34.68.243'),
(685, 'Changes on Config \'Om Rajbhandary\' has been saved ', '2020-06-29 11:21:15', 1, 4, '27.34.68.243'),
(686, 'Changes on Config \'Om Rajbhandary\' has been saved ', '2020-06-29 11:22:59', 1, 4, '27.34.68.243'),
(687, 'Changes on Config \'Om Rajbhandary\' has been saved ', '2020-06-29 11:23:30', 1, 4, '27.34.68.243'),
(688, 'Changes on Config \'Om Rajbhandary\' has been saved ', '2020-06-29 11:24:11', 1, 4, '27.34.68.243'),
(689, 'Changes on Config \'Om Rajbhandary\' has been saved ', '2020-06-29 11:30:20', 1, 4, '27.34.68.243'),
(690, 'Changes on Config \'Om Rajbhandary\' has been saved ', '2020-06-29 11:31:42', 1, 4, '27.34.68.243'),
(691, 'Changes on Config \'Om Rajbhandary\' has been saved ', '2020-06-29 11:36:16', 1, 4, '27.34.68.243'),
(692, 'Login: Site Admin  logged in.', '2020-06-30 11:37:41', 1, 1, '202.166.207.65'),
(693, 'Video  []Data has been deleted successfully.', '2020-06-30 11:38:12', 1, 6, '202.166.207.65'),
(694, 'Video  [Omni Tower Syncate Suites]Data has been de', '2020-06-30 11:38:12', 1, 6, '202.166.207.65'),
(695, 'Sub Gallery Image  [Achievements]Data has been del', '2020-06-30 12:05:29', 1, 6, '202.166.207.65'),
(696, 'Sub Gallery Image  []Data has been deleted success', '2020-06-30 12:05:33', 1, 6, '202.166.207.65'),
(697, 'Sub Gallery Image  [Achievements]Data has been del', '2020-06-30 12:05:33', 1, 6, '202.166.207.65'),
(698, 'Sub Gallery Image [Professional Doctoral Certifica', '2020-06-30 12:09:46', 1, 3, '202.166.207.65'),
(699, 'Login: Site Admin  logged in.', '2020-06-30 13:37:54', 1, 1, '202.166.207.65'),
(700, 'Changes on Article \'INTRODUCTION\' has been saved s', '2020-06-30 13:56:36', 1, 4, '202.166.207.65'),
(701, 'Login: Site Admin  logged in.', '2020-06-30 13:57:07', 1, 1, '27.34.104.130'),
(702, 'Changes on Article \'INTRODUCTION\' has been saved s', '2020-06-30 14:03:48', 1, 4, '202.166.207.65'),
(703, 'Events [The Real Sector Pioneer] Edit Successfully', '2020-06-30 14:06:50', 1, 4, '27.34.104.25'),
(704, 'Events [Real Estate Sector will grow, no other opt', '2020-06-30 14:21:53', 1, 3, '202.166.207.65'),
(705, 'Events [Real Estate Sector will grow, no other opt', '2020-06-30 14:22:59', 1, 4, '202.166.207.65'),
(706, 'Events [Opinion] Edit Successfully', '2020-06-30 14:45:06', 1, 4, '202.166.207.65'),
(707, 'Events [Real Estate Sector will grow, no other opt', '2020-06-30 14:49:29', 1, 4, '202.166.207.65'),
(708, 'Events [Real Estate Sector will grow, no other opt', '2020-06-30 15:01:30', 1, 4, '202.166.207.65'),
(709, 'Login: Site Admin  logged in.', '2020-06-30 15:07:04', 1, 1, '202.166.207.65'),
(710, 'Changes on Article \'Awards | Certificates\' has bee', '2020-06-30 15:17:08', 1, 4, '202.166.207.65'),
(711, 'Article \'Recognition\' has been added successfully.', '2020-06-30 15:19:40', 1, 3, '202.166.207.65'),
(712, 'Changes on Article \'Recognition\' has been saved su', '2020-06-30 15:21:58', 1, 4, '202.166.207.65'),
(713, 'Gallery Image [Achievements] Edit Successfully', '2020-06-30 15:25:41', 1, 4, '202.166.207.65'),
(714, 'Sub Gallery Image  [Professional Doctoral Certific', '2020-06-30 15:26:54', 1, 6, '202.166.207.65'),
(715, 'Sub Gallery Image [Professional Doctoral Certifica', '2020-06-30 15:27:13', 1, 3, '202.166.207.65'),
(716, 'Login: Site Admin  logged in.', '2020-06-30 17:18:57', 1, 1, '202.166.207.65'),
(717, 'Login: Site Admin  logged in.', '2020-07-01 10:03:40', 1, 1, '202.166.207.65'),
(718, 'Events [Real Estate Sector will grow, no other opt', '2020-07-01 10:09:10', 1, 4, '202.166.207.65'),
(719, 'Events [Real Estate Sector will grow, no other opt', '2020-07-01 10:30:46', 1, 4, '202.166.207.65'),
(720, 'Events [Real Estate Sector will grow, no other opt', '2020-07-01 10:34:17', 1, 4, '202.166.207.65'),
(721, 'Events [Real Estate Sector will grow, no other opt', '2020-07-01 10:34:52', 1, 4, '202.166.207.65'),
(722, 'Events [Real Estate Sector will grow, no other opt', '2020-07-01 10:36:29', 1, 4, '202.166.207.65'),
(723, 'Changes on Article \'Recognition\' has been saved su', '2020-07-01 12:16:17', 1, 4, '202.166.207.65'),
(724, 'Changes on Article \'Awards | Certificates\' has bee', '2020-07-01 12:17:57', 1, 4, '202.166.207.65'),
(725, 'Login: Site Admin  logged in.', '2020-07-01 13:54:15', 1, 1, '202.166.207.65'),
(726, 'Login: Site Admin  logged in.', '2020-07-01 15:36:13', 1, 1, '202.166.207.65'),
(727, 'Slideshow [Dr. Om Rajbhandary] Edit Successfully', '2020-07-01 16:08:31', 1, 4, '202.166.207.65'),
(728, 'Events [Real Estate Sector will grow, no other opt', '2020-07-01 16:16:09', 1, 4, '202.166.207.65'),
(729, 'Events [Real Estate Sector will grow, no other opt', '2020-07-01 16:22:38', 1, 4, '202.166.207.65'),
(730, 'Events [Real Estate Sector will grow, no other opt', '2020-07-01 16:25:11', 1, 4, '202.166.207.65'),
(731, 'Events [Real Estate Sector will grow, no other opt', '2020-07-01 16:29:18', 1, 4, '202.166.207.65'),
(732, 'Events [Real Estate Sector will grow, no other opt', '2020-07-01 16:31:21', 1, 4, '202.166.207.65'),
(733, 'Changes on Article \'Profile\' has been saved succes', '2020-07-01 16:34:44', 1, 4, '202.166.207.65'),
(734, 'Menu [CSR] CreatedData has been added successfully', '2020-07-01 16:47:18', 1, 3, '202.166.207.65'),
(735, 'Login: Site Admin  logged in.', '2020-07-02 13:50:08', 1, 1, '202.166.198.50'),
(736, 'Login: Site Admin  logged in.', '2020-07-03 10:44:19', 1, 1, '202.166.207.65'),
(737, 'Login: Site Admin  logged in.', '2020-07-03 11:53:53', 1, 1, '202.166.207.65'),
(738, 'Login: Site Admin  logged in.', '2020-07-03 17:00:00', 1, 1, '202.166.198.50'),
(739, 'Login: Site Admin  logged in.', '2020-07-05 14:26:25', 1, 1, '202.166.198.50'),
(740, 'SocialNetworking [Facebook] Edit Successfully', '2020-07-05 14:32:28', 1, 4, '202.166.198.50'),
(741, 'Login: Site Admin  logged in.', '2020-07-06 14:23:33', 1, 1, '202.166.198.50'),
(742, 'Login: Site Admin  logged in.', '2020-07-06 16:00:06', 1, 1, '202.166.207.65'),
(743, 'Changes on Config \'Om Rajbhandary\' has been saved ', '2020-07-06 16:06:00', 1, 4, '202.166.207.65'),
(744, 'Login: Site Admin  logged in.', '2020-07-08 11:42:29', 1, 1, '27.34.68.236'),
(745, 'Login: Site Admin  logged in.', '2020-07-08 11:48:04', 1, 1, '43.231.211.149'),
(746, 'User [Site Admin  ] Edit Successfully', '2020-07-08 12:02:53', 1, 4, '27.34.68.236'),
(747, 'Login: Site Admin  logged in.', '2020-07-08 12:03:02', 1, 1, '27.34.68.236'),
(748, 'Login: Site Admin  logged in.', '2020-07-08 12:04:41', 1, 1, '43.231.211.149'),
(749, 'Changes on Config \'Kathmandu Kora Cycling Challeng', '2020-07-08 12:09:27', 1, 4, '27.34.68.236'),
(750, 'Changes on Config \'Kathmandu Kora Cycling Challeng', '2020-07-08 12:10:03', 1, 4, '27.34.68.236'),
(751, 'Menu [RIDES] Edit Successfully', '2020-07-08 12:12:20', 1, 4, '27.34.68.236'),
(752, 'Menu [HOME] Edit Successfully', '2020-07-08 12:12:36', 1, 4, '27.34.68.236'),
(753, 'Menu [CAUSE] Edit Successfully', '2020-07-08 12:13:06', 1, 4, '27.34.68.236'),
(754, 'Menu [BLOG] Edit Successfully', '2020-07-08 12:13:30', 1, 4, '27.34.68.236'),
(755, 'Menu [CAUSE] Edit Successfully', '2020-07-08 12:13:43', 1, 4, '27.34.68.236'),
(756, 'Menu [ABOUT] Edit Successfully', '2020-07-08 12:14:10', 1, 4, '27.34.68.236'),
(757, 'Menu [FAQ\'s] Edit Successfully', '2020-07-08 12:14:39', 1, 4, '27.34.68.236'),
(758, 'Menu [CONTACT] Edit Successfully', '2020-07-08 12:14:59', 1, 4, '27.34.68.236'),
(759, 'Slideshow [| #KTMKORA] Edit Successfully', '2020-07-08 12:30:53', 1, 4, '27.34.68.236'),
(760, 'Slideshow [| #KTMKORA] Edit Successfully', '2020-07-08 12:31:37', 1, 4, '27.34.68.236'),
(761, 'Slideshows  [Green Building Leveling]Data has been', '2020-07-08 12:31:56', 1, 6, '27.34.68.236'),
(762, 'Slideshow  [Green Building Leveling]Data has been ', '2020-07-08 12:31:56', 1, 6, '27.34.68.236'),
(763, 'Slideshow [#KTMKORA] Edit Successfully', '2020-07-08 12:32:27', 1, 4, '27.34.68.236'),
(764, 'Slideshow [#KTMKORA] Edit Successfully', '2020-07-08 12:32:49', 1, 4, '27.34.68.236'),
(765, 'Slideshow [#KTMKORA] Edit Successfully', '2020-07-08 12:33:59', 1, 4, '27.34.68.236'),
(766, 'Slideshow [#KTMKORA] Edit Successfully', '2020-07-08 12:34:42', 1, 4, '27.34.68.236'),
(767, 'Slideshow [#KTMKORA] Edit Successfully', '2020-07-08 12:35:05', 1, 4, '27.34.68.236'),
(768, 'Logo Category [Our Partners] Edit Successfully', '2020-07-08 12:38:24', 1, 4, '27.34.68.236'),
(769, 'Logo Category [Our Supporter]Data has been added s', '2020-07-08 12:38:45', 1, 3, '27.34.68.236'),
(770, 'Changes on Config \'Kathmandu Kora Cycling Challeng', '2020-07-08 12:42:18', 1, 4, '27.34.68.236'),
(771, 'SocialNetworking  [Location]Data has been deleted ', '2020-07-08 12:44:29', 1, 6, '27.34.68.236'),
(772, 'SocialNetworking  [Location]Data has been deleted ', '2020-07-08 12:44:29', 1, 6, '27.34.68.236'),
(773, 'SocialNetworking [linkedin] Edit Successfully', '2020-07-08 12:44:43', 1, 4, '27.34.68.236'),
(774, 'SocialNetworking [Facebook] Edit Successfully', '2020-07-08 12:45:00', 1, 4, '27.34.68.236'),
(775, 'SocialNetworking [Twitter] Edit Successfully', '2020-07-08 12:45:14', 1, 4, '27.34.68.236'),
(776, 'SocialNetworking [Instagram] Edit Successfully', '2020-07-08 12:45:29', 1, 4, '27.34.68.236'),
(777, 'Article Category  [Involvements]Data has been dele', '2020-07-08 12:48:09', 1, 6, '27.34.68.236'),
(778, 'Article Category [Rides] Edit Successfully', '2020-07-08 12:48:18', 1, 4, '27.34.68.236'),
(779, 'Changes on Article \'50k | Novice to Expert\' has be', '2020-07-08 13:03:00', 1, 4, '27.34.68.236'),
(780, 'Menu [RIDES] Edit Successfully', '2020-07-08 13:03:42', 1, 4, '27.34.68.236'),
(781, 'Changes on Article \'75k | Good to Expert\' has been', '2020-07-08 13:06:01', 1, 4, '27.34.68.236'),
(782, 'Menu [50k | Novice to Expert] CreatedData has been', '2020-07-08 13:07:45', 1, 3, '27.34.68.236'),
(783, 'Menu [75k | Good to Expert] CreatedData has been a', '2020-07-08 13:08:59', 1, 3, '27.34.68.236'),
(784, 'Changes on Article \'100k | Expert to Pro\' has been', '2020-07-08 13:13:11', 1, 4, '27.34.68.236'),
(785, 'Changes on Article \'50k | Novice to Expert\' has be', '2020-07-08 13:13:31', 1, 4, '27.34.68.236'),
(786, 'Menu [100k | Expert to Pro] CreatedData has been a', '2020-07-08 13:14:10', 1, 3, '27.34.68.236'),
(787, 'Review []Data has been deleted successfully.', '2020-07-08 13:31:43', 1, 6, '43.231.211.149'),
(788, 'Review []Data has been deleted successfully.', '2020-07-08 13:31:54', 1, 6, '43.231.211.149'),
(789, 'Changes on Article \'50k | Novice to Expert\' has be', '2020-07-08 13:47:25', 1, 4, '43.231.211.149'),
(790, 'Changes on Article \'75k | Good to Expert\' has been', '2020-07-08 13:47:36', 1, 4, '43.231.211.149'),
(791, 'Changes on Article \'100k | Expert to Pro\' has been', '2020-07-08 13:47:46', 1, 4, '43.231.211.149'),
(792, 'Events [#Kora19 Riding Jersey Lucky Draw | Final L', '2020-07-08 13:54:36', 1, 4, '27.34.68.236'),
(793, 'Login: Site Admin  logged in.', '2020-07-08 13:57:04', 1, 1, '27.34.68.236'),
(794, 'Events [#Kora19 Riding Jersey Lucky Draw | Final L', '2020-07-08 13:58:26', 1, 4, '27.34.68.236'),
(795, 'Changes on Article \'50k | Novice to Expert\' has be', '2020-07-08 14:01:29', 1, 4, '43.231.211.149'),
(796, 'Changes on Article \'75k | Good to Expert\' has been', '2020-07-08 14:02:01', 1, 4, '43.231.211.149'),
(797, 'Changes on Article \'100k | Expert to Pro\' has been', '2020-07-08 14:02:30', 1, 4, '43.231.211.149'),
(798, 'Events [#Kora19 Lucky Draw | List Three @ PancBike', '2020-07-08 14:04:32', 1, 4, '27.34.68.236'),
(799, 'Events [#Kora19 Riding Jersey Lucky Draw | List Tw', '2020-07-08 14:06:36', 1, 4, '27.34.68.236'),
(800, 'Events  [We Want to Play The Role of Master Develo', '2020-07-08 14:26:51', 1, 6, '43.231.211.149'),
(801, 'Events  [Unlimited Business]Data has been deleted ', '2020-07-08 14:26:51', 1, 6, '43.231.211.149'),
(802, 'Events  [Ma Shakchu]Data has been deleted successf', '2020-07-08 14:26:51', 1, 6, '43.231.211.149'),
(803, 'Events  [Factors Effecting Housing Industry.<br>17', '2020-07-08 14:26:51', 1, 6, '43.231.211.149'),
(804, 'Events  [Dr. Om Bahadur Rajbhandary <br>June -July', '2020-07-08 14:26:51', 1, 6, '43.231.211.149'),
(805, 'Events  [Past Present & Future Scenario of Urban N', '2020-07-08 14:26:51', 1, 6, '43.231.211.149'),
(806, 'Events  [(Real Estate Marketing Agent ) REMA : A N', '2020-07-08 14:26:51', 1, 6, '43.231.211.149'),
(807, 'Events  [Master Development Concept in Housing Sec', '2020-07-08 14:26:51', 1, 6, '43.231.211.149'),
(808, 'Events  [Consumers Role in Community Living.<br>21', '2020-07-08 14:26:51', 1, 6, '43.231.211.149'),
(809, 'Events  [Vision \"Master Developer\"]Data has been d', '2020-07-08 14:26:51', 1, 6, '43.231.211.149'),
(810, 'Events [#Kora19 Riding Jersey Lucky Draw | Final L', '2020-07-08 14:40:55', 1, 4, '43.231.211.149'),
(811, 'Events [#Kora19 Riding Jersey Lucky Draw | Final L', '2020-07-08 14:41:22', 1, 4, '43.231.211.149'),
(812, 'Events [#Kora19 Riding Jersey Lucky Draw | Final L', '2020-07-08 14:43:09', 1, 4, '43.231.211.149'),
(813, 'Events [#Kora19 Lucky Draw | List Three @ PancBike', '2020-07-08 14:44:52', 1, 4, '43.231.211.149'),
(814, 'Events [#Kora19 Riding Jersey Lucky Draw | Final L', '2020-07-08 14:45:05', 1, 4, '43.231.211.149'),
(815, 'Events [#Kora19 Riding Jersey Lucky Draw | List Tw', '2020-07-08 14:45:25', 1, 4, '43.231.211.149'),
(816, 'Changes on Logo \'CE Construction\' has been saved s', '2020-07-08 14:46:10', 1, 4, '43.231.211.149'),
(817, 'Events [#Kora19 Lucky Draw | List Three @ PancBike', '2020-07-08 15:16:55', 1, 4, '27.34.68.236'),
(818, 'Events [korkora]Data has been added successfully.', '2020-07-08 16:30:02', 1, 3, '43.231.211.149'),
(819, 'Events [korkora] Edit Successfully', '2020-07-08 16:33:10', 1, 4, '43.231.211.149'),
(820, 'Events  [korkora]Data has been deleted successfull', '2020-07-08 16:33:28', 1, 6, '43.231.211.149'),
(821, 'Changes on Config \'Kathmandu Kora Cycling Challeng', '2020-07-08 16:46:18', 1, 4, '43.231.211.149'),
(822, 'Events [#Kora19 Lucky Draw | List Three @ PancBike', '2020-07-08 17:25:18', 1, 4, '27.34.68.236'),
(823, 'Events [#Kora19 Riding Jersey Lucky Draw | Final L', '2020-07-08 17:25:31', 1, 4, '27.34.68.236'),
(824, 'Changes on Article \'INTRODUCTION\' has been saved s', '2020-07-08 17:33:48', 1, 4, '27.34.68.236'),
(825, 'Changes on Article \'About\' has been saved successf', '2020-07-08 17:36:15', 1, 4, '27.34.68.236'),
(826, 'Menu [ABOUT] Edit Successfully', '2020-07-08 17:36:37', 1, 4, '27.34.68.236'),
(827, 'Article \'FAQ\' has been added successfully.', '2020-07-08 17:42:00', 1, 3, '27.34.68.236'),
(828, 'Menu [FAQ\'s] Edit Successfully', '2020-07-08 17:42:31', 1, 4, '27.34.68.236'),
(829, 'Changes on Config \'Kathmandu Kora Cycling Challeng', '2020-07-08 17:43:42', 1, 4, '43.231.211.149'),
(830, 'Changes on Article \'FAQ\' has been saved successful', '2020-07-08 17:43:44', 1, 4, '27.34.68.236'),
(831, 'Changes on Article \'FAQ\' has been saved successful', '2020-07-08 17:45:57', 1, 4, '27.34.68.236'),
(832, 'Events [#kora19 | THE CAUSE]Data has been added su', '2020-07-08 17:50:10', 1, 3, '27.34.68.236'),
(833, 'Events [#kora19 | THE CAUSE] Edit Successfully', '2020-07-08 17:51:13', 1, 4, '27.34.68.236'),
(834, 'Menu [CAUSE] Edit Successfully', '2020-07-08 17:51:55', 1, 4, '27.34.68.236'),
(835, 'Events [#kora19 | THE CAUSE] Edit Successfully', '2020-07-08 17:56:14', 1, 4, '27.34.68.236'),
(836, 'Events [#Kora19 Lucky Draw | List Three @ PancBike', '2020-07-08 17:57:32', 1, 4, '27.34.68.236'),
(837, 'Events [#Kora19 Riding Jersey Lucky Draw | List Tw', '2020-07-08 17:58:10', 1, 4, '27.34.68.236'),
(838, 'Events [#Kora19 Riding Jersey Lucky Draw | List Tw', '2020-07-08 18:04:16', 1, 4, '27.34.68.236'),
(839, 'Slideshow [#KTMKORA] Edit Successfully', '2020-07-08 18:05:05', 1, 4, '27.34.68.236'),
(840, 'Changes on Config \'Kathmandu Kora Cycling Challeng', '2020-07-08 18:07:32', 1, 4, '27.34.68.236'),
(841, 'Changes on Config \'Kathmandu Kora Cycling Challeng', '2020-07-08 18:07:48', 1, 4, '27.34.68.236'),
(842, 'Gallery Image [Home Gallery] Edit Successfully', '2020-07-08 18:22:36', 1, 4, '27.34.68.236'),
(843, 'Sub Gallery Image  [7]Data has been deleted succes', '2020-07-08 18:22:55', 1, 6, '27.34.68.236'),
(844, 'Sub Gallery Image  []Data has been deleted success', '2020-07-08 18:22:59', 1, 6, '27.34.68.236'),
(845, 'Sub Gallery Image  [6]Data has been deleted succes', '2020-07-08 18:22:59', 1, 6, '27.34.68.236'),
(846, 'Sub Gallery Image  []Data has been deleted success', '2020-07-08 18:23:03', 1, 6, '27.34.68.236'),
(847, 'Sub Gallery Image  []Data has been deleted success', '2020-07-08 18:23:03', 1, 6, '27.34.68.236'),
(848, 'Sub Gallery Image  [5]Data has been deleted succes', '2020-07-08 18:23:03', 1, 6, '27.34.68.236'),
(849, 'Sub Gallery Image  []Data has been deleted success', '2020-07-08 18:23:09', 1, 6, '27.34.68.236'),
(850, 'Sub Gallery Image  [3]Data has been deleted succes', '2020-07-08 18:23:09', 1, 6, '27.34.68.236'),
(851, 'Sub Gallery Image  []Data has been deleted success', '2020-07-08 18:23:09', 1, 6, '27.34.68.236'),
(852, 'Sub Gallery Image  []Data has been deleted success', '2020-07-08 18:23:09', 1, 6, '27.34.68.236'),
(853, 'Sub Gallery Image  []Data has been deleted success', '2020-07-08 18:23:15', 1, 6, '27.34.68.236'),
(854, 'Sub Gallery Image  []Data has been deleted success', '2020-07-08 18:23:15', 1, 6, '27.34.68.236'),
(855, 'Sub Gallery Image  []Data has been deleted success', '2020-07-08 18:23:15', 1, 6, '27.34.68.236'),
(856, 'Sub Gallery Image  []Data has been deleted success', '2020-07-08 18:23:15', 1, 6, '27.34.68.236'),
(857, 'Sub Gallery Image  [4]Data has been deleted succes', '2020-07-08 18:23:16', 1, 6, '27.34.68.236'),
(858, 'Sub Gallery Image  []Data has been deleted success', '2020-07-08 18:23:20', 1, 6, '27.34.68.236'),
(859, 'Sub Gallery Image  []Data has been deleted success', '2020-07-08 18:23:20', 1, 6, '27.34.68.236'),
(860, 'Sub Gallery Image  []Data has been deleted success', '2020-07-08 18:23:20', 1, 6, '27.34.68.236'),
(861, 'Sub Gallery Image  []Data has been deleted success', '2020-07-08 18:23:20', 1, 6, '27.34.68.236'),
(862, 'Sub Gallery Image  []Data has been deleted success', '2020-07-08 18:23:21', 1, 6, '27.34.68.236'),
(863, 'Sub Gallery Image  [2]Data has been deleted succes', '2020-07-08 18:23:21', 1, 6, '27.34.68.236'),
(864, 'Sub Gallery Image  []Data has been deleted success', '2020-07-08 18:23:24', 1, 6, '27.34.68.236'),
(865, 'Sub Gallery Image  []Data has been deleted success', '2020-07-08 18:23:24', 1, 6, '27.34.68.236'),
(866, 'Sub Gallery Image  []Data has been deleted success', '2020-07-08 18:23:24', 1, 6, '27.34.68.236'),
(867, 'Sub Gallery Image  []Data has been deleted success', '2020-07-08 18:23:24', 1, 6, '27.34.68.236'),
(868, 'Sub Gallery Image  []Data has been deleted success', '2020-07-08 18:23:25', 1, 6, '27.34.68.236'),
(869, 'Sub Gallery Image  []Data has been deleted success', '2020-07-08 18:23:25', 1, 6, '27.34.68.236'),
(870, 'Sub Gallery Image  [1]Data has been deleted succes', '2020-07-08 18:23:25', 1, 6, '27.34.68.236'),
(871, 'Sub Gallery Image [Kathmandu Kora Cycling Challeng', '2020-07-08 18:24:33', 1, 3, '27.34.68.236'),
(872, 'Sub Gallery Image [Kathmandu Kora Cycling Challeng', '2020-07-08 18:24:33', 1, 3, '27.34.68.236'),
(873, 'Sub Gallery Image [Kathmandu Kora Cycling Challeng', '2020-07-08 18:24:33', 1, 3, '27.34.68.236'),
(874, 'Sub Gallery Image [Kathmandu Kora Cycling Challeng', '2020-07-08 18:24:33', 1, 3, '27.34.68.236'),
(875, 'Sub Gallery Image [Kathmandu Kora Cycling Challeng', '2020-07-08 18:24:33', 1, 3, '27.34.68.236'),
(876, 'Sub Gallery Image [Kathmandu Kora Cycling Challeng', '2020-07-08 18:24:33', 1, 3, '27.34.68.236'),
(877, 'Changes on Logo \'Nepal Mediciti\' has been saved su', '2020-07-08 18:29:57', 1, 4, '27.34.68.236'),
(878, 'Changes on Logo \'One\' has been saved successfully.', '2020-07-08 18:38:56', 1, 4, '27.34.68.253'),
(879, 'Changes on Logo \'Two\' has been saved successfully.', '2020-07-08 18:40:38', 1, 4, '27.34.68.253'),
(880, 'Changes on Logo \'Three\' has been saved successfull', '2020-07-08 18:41:12', 1, 4, '27.34.68.253'),
(881, 'Changes on Logo \'four\' has been saved successfully', '2020-07-08 18:47:13', 1, 4, '27.34.68.253'),
(882, 'Changes on Logo \'five\' has been saved successfully', '2020-07-08 18:47:45', 1, 4, '27.34.68.253'),
(883, 'Changes on Logo \'six\' has been saved successfully.', '2020-07-08 18:49:07', 1, 4, '27.34.68.253'),
(884, 'Changes on Logo \'seven\' has been saved successfull', '2020-07-08 18:49:35', 1, 4, '27.34.68.253'),
(885, 'Changes on Logo \'eight\' has been saved successfull', '2020-07-08 18:50:01', 1, 4, '27.34.68.253'),
(886, 'Changes on Logo \'nine\' has been saved successfully', '2020-07-08 18:51:03', 1, 4, '27.34.68.253'),
(887, 'Changes on Logo \'ten\' has been saved successfully.', '2020-07-08 18:51:33', 1, 4, '27.34.68.253'),
(888, 'Changes on Logo \'eleven\' has been saved successful', '2020-07-08 18:52:02', 1, 4, '27.34.68.253'),
(889, 'Changes on Logo \'twelve\' has been saved successful', '2020-07-08 18:52:33', 1, 4, '27.34.68.253'),
(890, 'Changes on Logo \'thirteen\' has been saved successf', '2020-07-08 18:53:11', 1, 4, '27.34.68.253'),
(891, 'Changes on Logo \'fourteen\' has been saved successf', '2020-07-08 18:53:42', 1, 4, '27.34.68.253'),
(892, 'Changes on Logo \'fifteen\' has been saved successfu', '2020-07-08 18:54:10', 1, 4, '27.34.68.253'),
(893, 'Changes on Logo \'1\' has been saved successfully.', '2020-07-08 19:06:40', 1, 4, '27.34.68.253'),
(894, 'Changes on Logo \'1\' has been saved successfully.', '2020-07-08 19:07:03', 1, 4, '27.34.68.253'),
(895, 'Changes on Logo \'2\' has been saved successfully.', '2020-07-08 19:07:34', 1, 4, '27.34.68.253'),
(896, 'Changes on Logo \'3\' has been saved successfully.', '2020-07-08 19:08:07', 1, 4, '27.34.68.253'),
(897, 'Logo \'4\' has been added successfully.', '2020-07-08 19:08:43', 1, 3, '27.34.68.253'),
(898, 'Logo \'5\' has been added successfully.', '2020-07-08 19:09:00', 1, 3, '27.34.68.253'),
(899, 'Logo \'6\' has been added successfully.', '2020-07-08 19:09:24', 1, 3, '27.34.68.253'),
(900, 'Logo \'7\' has been added successfully.', '2020-07-08 19:09:52', 1, 3, '27.34.68.253'),
(901, 'Logo \'8\' has been added successfully.', '2020-07-08 19:10:07', 1, 3, '27.34.68.253'),
(902, 'Logo \'9\' has been added successfully.', '2020-07-08 19:10:57', 1, 3, '27.34.68.253'),
(903, 'Logo \'10\' has been added successfully.', '2020-07-08 19:11:20', 1, 3, '27.34.68.253'),
(904, 'Logo \'11\' has been added successfully.', '2020-07-08 19:11:44', 1, 3, '27.34.68.253'),
(905, 'Logo \'12\' has been added successfully.', '2020-07-08 19:12:04', 1, 3, '27.34.68.253'),
(906, 'Logo \'13\' has been added successfully.', '2020-07-08 19:12:22', 1, 3, '27.34.68.253'),
(907, 'Logo \'14\' has been added successfully.', '2020-07-08 19:12:45', 1, 3, '27.34.68.253'),
(908, 'Logo \'15\' has been added successfully.', '2020-07-08 19:15:01', 1, 3, '27.34.68.253'),
(909, 'Logo \'16\' has been added successfully.', '2020-07-08 19:15:23', 1, 3, '27.34.68.253'),
(910, 'Logo \'17\' has been added successfully.', '2020-07-08 19:15:41', 1, 3, '27.34.68.253'),
(911, 'Logo \'18\' has been added successfully.', '2020-07-08 19:15:57', 1, 3, '27.34.68.253'),
(912, 'Logo \'19\' has been added successfully.', '2020-07-08 19:23:32', 1, 3, '27.34.68.253'),
(913, 'Logo \'20\' has been added successfully.', '2020-07-08 19:23:49', 1, 3, '27.34.68.253'),
(914, 'Logo \'21\' has been added successfully.', '2020-07-08 19:24:11', 1, 3, '27.34.68.253'),
(915, 'Logo \'22\' has been added successfully.', '2020-07-08 19:24:49', 1, 3, '27.34.68.253'),
(916, 'Logo \'23\' has been added successfully.', '2020-07-08 19:25:48', 1, 3, '27.34.68.253'),
(917, 'Logo \'24\' has been added successfully.', '2020-07-08 19:26:23', 1, 3, '27.34.68.253'),
(918, 'Changes on Article \'50k | Novice to Expert\' has be', '2020-07-08 19:29:48', 1, 4, '27.34.68.253'),
(919, 'Changes on Article \'50k | Novice to Expert\' has be', '2020-07-08 19:31:26', 1, 4, '27.34.68.253'),
(920, 'Changes on Article \'50k | Novice to Expert\' has be', '2020-07-08 19:34:28', 1, 4, '27.34.68.253'),
(921, 'Changes on Article \'50k | Novice to Expert\' has be', '2020-07-08 19:35:54', 1, 4, '27.34.68.253'),
(922, 'Login: Site Admin  logged in.', '2020-07-08 19:41:59', 1, 1, '43.231.211.149'),
(923, 'Login: Site Admin  logged in.', '2020-07-09 10:03:36', 1, 1, '43.231.211.149'),
(924, 'Menu [CAUSE] Edit Successfully', '2020-07-09 10:26:55', 1, 4, '43.231.211.149'),
(925, 'Events [Casue test 1]Data has been added successfu', '2020-07-09 11:25:49', 1, 3, '43.231.211.149'),
(926, 'Events [Casue test 1] Edit Successfully', '2020-07-09 11:27:29', 1, 4, '43.231.211.149'),
(927, 'Events [Casue test 1] Edit Successfully', '2020-07-09 11:32:35', 1, 4, '43.231.211.149'),
(928, 'Events [Casue test 1] Edit Successfully', '2020-07-09 12:11:57', 1, 4, '43.231.211.149'),
(929, 'Events  [Casue test 1]Data has been deleted succes', '2020-07-09 13:23:58', 1, 6, '43.231.211.149'),
(930, 'Login: Site Admin  logged in.', '2020-07-09 13:38:41', 1, 1, '27.34.68.253'),
(931, 'Events [#Kora19 Riding Jersey Lucky Draw | Final L', '2020-07-09 13:40:57', 1, 4, '27.34.68.253'),
(932, 'Events [#Kora19 Lucky Draw | List Three @ PancBike', '2020-07-09 13:41:56', 1, 4, '27.34.68.253'),
(933, 'Events [#Kora19 Riding Jersey Lucky Draw | List Tw', '2020-07-09 13:42:10', 1, 4, '27.34.68.253'),
(934, 'Events [#kora19 | THE CAUSE] Edit Successfully', '2020-07-09 13:45:12', 1, 4, '27.34.68.253'),
(935, 'Login: Site Admin  logged in.', '2020-07-09 15:03:39', 1, 1, '27.34.68.253'),
(936, 'Changes on Config \'Kathmandu Kora Cycling Challeng', '2020-07-09 15:04:33', 1, 4, '27.34.68.253'),
(937, 'Login: Site Admin  logged in.', '2020-07-09 19:17:37', 1, 1, '27.34.20.77'),
(938, 'Events [#Kora19 Riding Jersey Lucky Draw | Final L', '2020-07-09 19:30:08', 1, 4, '27.34.20.77'),
(939, 'Events [#Kora19 Riding Jersey Lucky Draw | Final L', '2020-07-09 19:36:34', 1, 4, '27.34.20.77'),
(940, 'Events [#Kora19 Riding Jersey Lucky Draw | Final L', '2020-07-09 19:55:44', 1, 4, '27.34.20.77'),
(941, 'Login: Site Admin  logged in.', '2020-07-09 22:22:35', 1, 1, '27.34.20.77'),
(942, 'Events [#Kora11]Data has been added successfully.', '2020-07-09 22:27:58', 1, 3, '27.34.20.77'),
(943, 'Events [#Kora2012]Data has been added successfully', '2020-07-09 22:28:40', 1, 3, '27.34.20.77'),
(944, 'Events [#Kora11] Edit Successfully', '2020-07-09 22:29:06', 1, 4, '27.34.20.77'),
(945, 'Events [#Kora2012] Edit Successfully', '2020-07-09 22:29:21', 1, 4, '27.34.20.77'),
(946, 'Events [#Kora2011] Edit Successfully', '2020-07-09 22:29:38', 1, 4, '27.34.20.77'),
(947, 'Events [#Kora2013]Data has been added successfully', '2020-07-09 22:30:44', 1, 3, '27.34.20.77'),
(948, 'Events [#Kora2014]Data has been added successfully', '2020-07-09 22:31:32', 1, 3, '27.34.20.77'),
(949, 'Events [#Kora2015]Data has been added successfully', '2020-07-09 22:32:12', 1, 3, '27.34.20.77'),
(950, 'Events [#Kora19 Lucky Draw | List Three @ PancBike', '2020-07-09 22:43:45', 1, 4, '27.34.20.77'),
(951, 'Events [#Kora19 Riding Jersey Lucky Draw | List Tw', '2020-07-09 22:46:14', 1, 4, '27.34.20.77'),
(952, 'Events [#Kora19 Riding Jersey Lucky Draw | Final L', '2020-07-09 22:47:54', 1, 4, '27.34.20.77'),
(953, 'Events [#Kora19 Lucky Draw | List Three @ PancBike', '2020-07-09 22:48:33', 1, 4, '27.34.20.77'),
(954, 'Events [#Kora19 Riding Jersey Lucky Draw | List Tw', '2020-07-09 22:49:15', 1, 4, '27.34.20.77'),
(955, 'Events [#Kora19 Riding Jersey Lucky Draw | Final L', '2020-07-09 22:53:38', 1, 4, '27.34.20.77'),
(956, 'Events [#Kora19 Lucky Draw | List Three @ PancBike', '2020-07-09 22:56:32', 1, 4, '27.34.20.77'),
(957, 'Events [#Kora19 Riding Jersey Lucky Draw | List Tw', '2020-07-09 22:59:16', 1, 4, '27.34.20.77'),
(958, 'Login: Site Admin  logged in.', '2020-07-10 10:30:12', 1, 1, '27.34.20.77'),
(959, 'Events [#Kora19 Riding Jersey Lucky Draw | List Tw', '2020-07-10 10:33:31', 1, 4, '27.34.20.77'),
(960, 'Login: Site Admin  logged in.', '2020-07-10 12:04:55', 1, 1, '27.34.20.77'),
(961, 'Events [#Kora19 Riding Jersey Lucky Draw | List Tw', '2020-07-10 12:05:45', 1, 4, '27.34.20.77'),
(962, 'Events [#Kora19 Riding Jersey Lucky Draw | List Tw', '2020-07-10 12:20:54', 1, 4, '27.34.20.77'),
(963, 'Events [#Kora19 Riding Jersey Lucky Draw | List Tw', '2020-07-10 12:36:43', 1, 4, '27.34.20.77'),
(964, 'Events [#Kora19 Riding Jersey Lucky Draw | List Tw', '2020-07-10 12:42:58', 1, 4, '27.34.20.77'),
(965, 'Login: Site Admin  logged in.', '2020-07-10 13:47:22', 1, 1, '27.34.20.77'),
(966, 'Events [#Kora19 Lucky Draw | List Three @ PancBike', '2020-07-10 13:47:58', 1, 4, '27.34.20.77'),
(967, 'Login: Site Admin  logged in.', '2020-07-10 16:22:16', 1, 1, '27.34.20.77'),
(968, 'Events [#Kora19 Riding Jersey Lucky Draw | Final L', '2020-07-10 16:23:06', 1, 4, '27.34.20.77'),
(969, 'Login: Site Admin  logged in.', '2020-07-13 11:19:45', 1, 1, '27.34.68.178'),
(970, 'User [Site Admin  ] Edit Successfully', '2020-07-13 11:20:23', 1, 4, '27.34.68.178'),
(971, 'Login: Site Admin  logged in.', '2020-07-13 11:20:34', 1, 1, '27.34.68.178'),
(972, 'Login: Site Admin  logged in.', '2020-07-13 11:25:50', 1, 1, '103.10.28.40'),
(973, 'Login: Site Admin  logged in.', '2020-07-16 13:34:01', 1, 1, '27.34.88.92'),
(974, 'User [Jay  San] login Created Data has been added ', '2020-07-16 13:34:53', 1, 3, '27.34.88.92'),
(975, 'User [Site Admin  ] Edit Successfully', '2020-07-16 13:36:05', 1, 4, '27.34.88.92'),
(976, 'Login: Site Admin  logged in.', '2020-07-16 13:36:19', 1, 1, '27.34.88.92'),
(977, 'Login: Site Admin  logged in.', '2020-07-24 15:05:11', 1, 1, '27.34.20.55'),
(978, 'Slideshow [#KTMKORA] Edit Successfully', '2020-07-24 15:33:58', 1, 4, '27.34.20.55'),
(979, 'Slideshow [Click2Win Photo Contest]Data has been a', '2020-07-24 15:41:01', 1, 3, '27.34.20.55'),
(980, 'Slideshow [Click2Win Photo Contest] Edit Successfu', '2020-07-24 15:41:34', 1, 4, '27.34.20.55'),
(981, 'Slideshow [#Click2Win ] Edit Successfully', '2020-07-24 15:42:13', 1, 4, '27.34.20.55'),
(982, 'Slideshow [#ktmkora] Edit Successfully', '2020-07-24 15:44:05', 1, 4, '27.34.20.55'),
(983, 'Slideshow [#KTMKORA] Edit Successfully', '2020-07-24 15:48:57', 1, 4, '27.34.20.55'),
(984, 'Slideshow [#KTMKORA] Edit Successfully', '2020-07-24 15:50:03', 1, 4, '27.34.20.55'),
(985, 'Slideshow [#KTMKORA] Edit Successfully', '2020-07-24 15:50:25', 1, 4, '27.34.20.55'),
(986, 'Slideshow [#KTMKORA] Edit Successfully', '2020-07-24 15:54:39', 1, 4, '27.34.20.55'),
(987, 'Slideshow [#KTMKORA] Edit Successfully', '2020-07-24 15:56:01', 1, 4, '27.34.20.55'),
(988, 'Slideshow [#KTMKORA] Edit Successfully', '2020-07-24 15:58:36', 1, 4, '27.34.20.55'),
(989, 'Changes on Config \'Kathmandu Kora Cycling Challeng', '2020-07-24 16:05:34', 1, 4, '27.34.20.55'),
(990, 'Login: Super admin  logged in.', '2021-03-22 12:25:19', 1, 1, '110.44.118.211'),
(991, 'Login: Super admin  logged in.', '2021-03-22 12:25:59', 1, 1, '110.44.118.211'),
(992, 'Video  [OM RAJBHANDARI | THE REAL ESTATE PIONEER |', '2021-03-22 12:27:20', 1, 6, '110.44.118.211'),
(993, 'Video  []Data has been deleted successfully.', '2021-03-22 12:27:23', 1, 6, '110.44.118.211'),
(994, 'Video  [Post lockdown Real Estate Sector will grow', '2021-03-22 12:27:23', 1, 6, '110.44.118.211'),
(995, 'Video  []Data has been deleted successfully.', '2021-03-22 12:27:38', 1, 6, '110.44.118.211'),
(996, 'Video  [My Housing | Om Rajbhandari | Hamrokatha]D', '2021-03-22 12:27:38', 1, 6, '110.44.118.211'),
(997, 'Video  []Data has been deleted successfully.', '2021-03-22 12:27:38', 1, 6, '110.44.118.211'),
(998, 'Video  []Data has been deleted successfully.', '2021-03-22 12:27:38', 1, 6, '110.44.118.211'),
(999, 'Video  []Data has been deleted successfully.', '2021-03-22 12:27:38', 1, 6, '110.44.118.211'),
(1000, 'Video  []Data has been deleted successfully.', '2021-03-22 12:27:39', 1, 6, '110.44.118.211'),
(1001, 'Video  [Development of Housing & Apartments]Data h', '2021-03-22 12:27:40', 1, 6, '110.44.118.211'),
(1002, 'Video  []Data has been deleted successfully.', '2021-03-22 12:27:40', 1, 6, '110.44.118.211'),
(1003, 'Video  [News24 TV - Part 1]Data has been deleted s', '2021-03-22 12:27:45', 1, 6, '110.44.118.211'),
(1004, 'Video  [News24 TV - Part 2]Data has been deleted s', '2021-03-22 12:27:49', 1, 6, '110.44.118.211');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1005, 'Video  []Data has been deleted successfully.', '2021-03-22 12:27:49', 1, 6, '110.44.118.211'),
(1006, 'Video  []Data has been deleted successfully.', '2021-03-22 12:27:52', 1, 6, '110.44.118.211'),
(1007, 'Video  [Capital Talk on Himalayan TV - Part 1]Data', '2021-03-22 12:27:52', 1, 6, '110.44.118.211'),
(1008, 'Video  []Data has been deleted successfully.', '2021-03-22 12:27:52', 1, 6, '110.44.118.211'),
(1009, 'Video  [Interview on KTV]Data has been deleted suc', '2021-03-22 12:27:55', 1, 6, '110.44.118.211'),
(1010, 'Video  []Data has been deleted successfully.', '2021-03-22 12:27:55', 1, 6, '110.44.118.211'),
(1011, 'Video  []Data has been deleted successfully.', '2021-03-22 12:27:55', 1, 6, '110.44.118.211'),
(1012, 'Video  []Data has been deleted successfully.', '2021-03-22 12:27:55', 1, 6, '110.44.118.211'),
(1013, 'Video  []Data has been deleted successfully.', '2021-03-22 12:27:58', 1, 6, '110.44.118.211'),
(1014, 'Video  []Data has been deleted successfully.', '2021-03-22 12:27:58', 1, 6, '110.44.118.211'),
(1015, 'Video  []Data has been deleted successfully.', '2021-03-22 12:27:58', 1, 6, '110.44.118.211'),
(1016, 'Video  []Data has been deleted successfully.', '2021-03-22 12:27:58', 1, 6, '110.44.118.211'),
(1017, 'Video  [Interview on Metro Biz]Data has been delet', '2021-03-22 12:27:58', 1, 6, '110.44.118.211'),
(1018, 'Video  []Data has been deleted successfully.', '2021-03-22 12:28:02', 1, 6, '110.44.118.211'),
(1019, 'Video  []Data has been deleted successfully.', '2021-03-22 12:28:03', 1, 6, '110.44.118.211'),
(1020, 'Video  []Data has been deleted successfully.', '2021-03-22 12:28:03', 1, 6, '110.44.118.211'),
(1021, 'Video  [Last Thursday\'s with Mr. Om Rajbhandary]Da', '2021-03-22 12:28:03', 1, 6, '110.44.118.211'),
(1022, 'Video  []Data has been deleted successfully.', '2021-03-22 12:28:03', 1, 6, '110.44.118.211'),
(1023, 'Video  []Data has been deleted successfully.', '2021-03-22 12:28:03', 1, 6, '110.44.118.211'),
(1024, 'Login: Super admin  logged in.', '2021-03-22 15:44:27', 1, 1, '110.44.118.211'),
(1025, 'Login: Super admin  logged in.', '2021-03-23 12:30:14', 1, 1, '110.44.118.211'),
(1026, 'Slideshows  [#KTMKORA]Data has been deleted succes', '2021-03-23 12:31:00', 1, 6, '110.44.118.211'),
(1027, 'Slideshow  [#KTMKORA]Data has been deleted success', '2021-03-23 12:31:00', 1, 6, '110.44.118.211'),
(1028, 'Slideshows  [#KTMKORA]Data has been deleted succes', '2021-03-23 12:31:02', 1, 6, '110.44.118.211'),
(1029, 'Slideshow  [#KTMKORA]Data has been deleted success', '2021-03-23 12:31:02', 1, 6, '110.44.118.211'),
(1030, 'Slideshows  [#KTMKORA]Data has been deleted succes', '2021-03-23 12:31:05', 1, 6, '110.44.118.211'),
(1031, 'Slideshow  [#KTMKORA]Data has been deleted success', '2021-03-23 12:31:05', 1, 6, '110.44.118.211'),
(1032, 'Slideshow [#ktmkora] Edit Successfully', '2021-03-23 12:31:51', 1, 4, '110.44.118.211'),
(1033, 'Login: Super admin  logged in.', '2021-03-23 15:06:28', 1, 1, '110.44.118.211'),
(1034, 'User [Site Admin  ] Edit Successfully', '2021-03-23 15:07:59', 1, 4, '110.44.118.211'),
(1035, 'User [Jay  San] Edit Successfully', '2021-03-23 15:08:16', 1, 4, '110.44.118.211'),
(1036, 'User [Super admin  ] Edit Successfully', '2021-03-23 15:08:30', 1, 4, '110.44.118.211'),
(1037, 'Login: Super admin  logged in.', '2021-03-23 15:08:40', 1, 1, '110.44.118.211'),
(1038, 'User [Site Admin  ] Edit Successfully', '2021-03-23 15:09:01', 1, 4, '110.44.118.211'),
(1039, 'Menu [PORTFOLIO] Edit Successfully', '2021-03-23 15:09:42', 1, 4, '110.44.118.211'),
(1040, 'Menu [ABOUT GALLERY] Edit Successfully', '2021-03-23 15:10:20', 1, 4, '110.44.118.211'),
(1041, 'Menu [PHOTOS] Edit Successfully', '2021-03-23 15:10:47', 1, 4, '110.44.118.211'),
(1042, 'Menu [VIDEOS] Edit Successfully', '2021-03-23 15:11:00', 1, 4, '110.44.118.211'),
(1043, 'Menu [ARTIST SAZIV SHAKYA] Edit Successfully', '2021-03-23 15:11:34', 1, 4, '110.44.118.211'),
(1044, 'Menu  [RIDES]Data has been deleted successfully.', '2021-03-23 15:12:36', 1, 6, '110.44.118.211'),
(1045, 'Menu  [Training & Presentation]Data has been delet', '2021-03-23 15:12:39', 1, 6, '110.44.118.211'),
(1046, 'Menu  [CAUSE]Data has been deleted successfully.', '2021-03-23 15:12:42', 1, 6, '110.44.118.211'),
(1047, 'Menu  [Profile]Data has been deleted successfully.', '2021-03-23 15:12:58', 1, 6, '110.44.118.211'),
(1048, 'Menu  [Media]Data has been deleted successfully.', '2021-03-23 15:13:08', 1, 6, '110.44.118.211'),
(1049, 'Menu  [Gallery]Data has been deleted successfully.', '2021-03-23 15:13:10', 1, 6, '110.44.118.211'),
(1050, 'Login: Site Admin  logged in.', '2021-03-23 15:16:35', 1, 1, '110.44.118.211'),
(1051, 'Slideshow [The Spiritual Art] Edit Successfully', '2021-03-23 15:21:06', 1, 4, '110.44.118.211'),
(1052, 'Changes on Config \'The Spiritual Arts\' has been sa', '2021-03-23 15:24:32', 1, 4, '110.44.118.211'),
(1053, 'Changes on Config \'The Spiritual Arts\' has been sa', '2021-03-23 15:25:09', 1, 4, '110.44.118.211'),
(1054, 'Changes on Config \'The Spiritual Arts\' has been sa', '2021-03-23 15:25:23', 1, 4, '110.44.118.211'),
(1055, 'SocialNetworking [Facebook] Edit Successfully', '2021-03-23 15:26:18', 1, 4, '110.44.118.211'),
(1056, 'SocialNetworking [Facebook] Edit Successfully', '2021-03-23 15:26:52', 1, 4, '110.44.118.211'),
(1057, 'Changes on Config \'The Spiritual Arts\' has been sa', '2021-03-23 15:32:34', 1, 4, '110.44.118.211'),
(1058, 'Video  [Never Change Your Originality]Data has bee', '2021-03-23 15:33:39', 1, 6, '110.44.118.211'),
(1059, 'Video  []Data has been deleted successfully.', '2021-03-23 15:33:41', 1, 6, '110.44.118.211'),
(1060, 'Video  [Interview on Himalayan TV]Data has been de', '2021-03-23 15:33:41', 1, 6, '110.44.118.211'),
(1061, 'Video  []Data has been deleted successfully.', '2021-03-23 15:33:44', 1, 6, '110.44.118.211'),
(1062, 'Video  [Himalayan TV - Part 1]Data has been delete', '2021-03-23 15:33:44', 1, 6, '110.44.118.211'),
(1063, 'Video  []Data has been deleted successfully.', '2021-03-23 15:33:44', 1, 6, '110.44.118.211'),
(1064, 'Video [Few words by Lok Ratna Shakya for Artist Sa', '2021-03-23 15:54:11', 1, 3, '110.44.118.211'),
(1065, 'Video [Artist Saziv Shakya Unleashed]Data has been', '2021-03-23 15:54:33', 1, 3, '110.44.118.211'),
(1066, 'Video [Few words by Art Collector Birendra Shahi]D', '2021-03-23 15:54:50', 1, 3, '110.44.118.211'),
(1067, 'Changes on Config \'The Spiritual Arts\' has been sa', '2021-03-23 16:04:01', 1, 4, '110.44.118.211'),
(1068, 'Menu [PORTFOLIO] Edit Successfully', '2021-03-23 16:14:14', 1, 4, '110.44.118.211'),
(1069, 'Changes on Article \'About\' has been saved successf', '2021-03-23 16:20:50', 1, 4, '110.44.118.211'),
(1070, 'Articles  [50k | Novice to Expert]Data has been de', '2021-03-23 16:21:52', 1, 6, '110.44.118.211'),
(1071, 'Article \'Saziv Shakya\' has been added successfully', '2021-03-23 16:24:13', 1, 3, '110.44.118.211'),
(1072, 'Menu [ARTIST SAZIV SHAKYA] Edit Successfully', '2021-03-23 16:24:23', 1, 4, '110.44.118.211'),
(1073, 'Menu  [Contact]Data has been deleted successfully.', '2021-03-23 16:24:28', 1, 6, '110.44.118.211'),
(1074, 'Article Category  [Rides]Data has been deleted suc', '2021-03-23 16:24:56', 1, 6, '110.44.118.211'),
(1075, 'Changes on Article \'Saziv Shakya\' has been saved s', '2021-03-23 16:27:58', 1, 4, '110.44.118.211'),
(1076, 'Gallery Image [Hand Sketch] Edit Successfully', '2021-03-23 16:32:05', 1, 4, '110.44.118.211'),
(1077, 'Gallery Image [Hand Sketch] Edit Successfully', '2021-03-23 16:32:45', 1, 4, '110.44.118.211'),
(1078, 'Sub Gallery Image  [Training & Presentation]Data h', '2021-03-23 16:33:00', 1, 6, '110.44.118.211'),
(1079, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:04', 1, 6, '110.44.118.211'),
(1080, 'Sub Gallery Image  [Training & Presentation]Data h', '2021-03-23 16:33:04', 1, 6, '110.44.118.211'),
(1081, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:07', 1, 6, '110.44.118.211'),
(1082, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:07', 1, 6, '110.44.118.211'),
(1083, 'Sub Gallery Image  [Training & Presentation]Data h', '2021-03-23 16:33:07', 1, 6, '110.44.118.211'),
(1084, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:10', 1, 6, '110.44.118.211'),
(1085, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:10', 1, 6, '110.44.118.211'),
(1086, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:10', 1, 6, '110.44.118.211'),
(1087, 'Sub Gallery Image  [Training & Presentation]Data h', '2021-03-23 16:33:10', 1, 6, '110.44.118.211'),
(1088, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:13', 1, 6, '110.44.118.211'),
(1089, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:13', 1, 6, '110.44.118.211'),
(1090, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:13', 1, 6, '110.44.118.211'),
(1091, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:13', 1, 6, '110.44.118.211'),
(1092, 'Sub Gallery Image  [Training & Presentation]Data h', '2021-03-23 16:33:13', 1, 6, '110.44.118.211'),
(1093, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:17', 1, 6, '110.44.118.211'),
(1094, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:17', 1, 6, '110.44.118.211'),
(1095, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:17', 1, 6, '110.44.118.211'),
(1096, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:17', 1, 6, '110.44.118.211'),
(1097, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:17', 1, 6, '110.44.118.211'),
(1098, 'Sub Gallery Image  [Training & Presentation]Data h', '2021-03-23 16:33:17', 1, 6, '110.44.118.211'),
(1099, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:20', 1, 6, '110.44.118.211'),
(1100, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:20', 1, 6, '110.44.118.211'),
(1101, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:20', 1, 6, '110.44.118.211'),
(1102, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:21', 1, 6, '110.44.118.211'),
(1103, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:21', 1, 6, '110.44.118.211'),
(1104, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:21', 1, 6, '110.44.118.211'),
(1105, 'Sub Gallery Image  [Training & Presentation]Data h', '2021-03-23 16:33:21', 1, 6, '110.44.118.211'),
(1106, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:24', 1, 6, '110.44.118.211'),
(1107, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:24', 1, 6, '110.44.118.211'),
(1108, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:24', 1, 6, '110.44.118.211'),
(1109, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:24', 1, 6, '110.44.118.211'),
(1110, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:24', 1, 6, '110.44.118.211'),
(1111, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:24', 1, 6, '110.44.118.211'),
(1112, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:25', 1, 6, '110.44.118.211'),
(1113, 'Sub Gallery Image  [Training & Presentation]Data h', '2021-03-23 16:33:25', 1, 6, '110.44.118.211'),
(1114, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:28', 1, 6, '110.44.118.211'),
(1115, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:28', 1, 6, '110.44.118.211'),
(1116, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:28', 1, 6, '110.44.118.211'),
(1117, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:28', 1, 6, '110.44.118.211'),
(1118, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:28', 1, 6, '110.44.118.211'),
(1119, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:28', 1, 6, '110.44.118.211'),
(1120, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:29', 1, 6, '110.44.118.211'),
(1121, 'Sub Gallery Image  [Training & Presentation]Data h', '2021-03-23 16:33:29', 1, 6, '110.44.118.211'),
(1122, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:33:29', 1, 6, '110.44.118.211'),
(1123, 'Sub Gallery Image [hand sketch art]Data has been a', '2021-03-23 16:35:50', 1, 3, '110.44.118.211'),
(1124, 'Sub Gallery Image [hand sketch art]Data has been a', '2021-03-23 16:35:50', 1, 3, '110.44.118.211'),
(1125, 'Sub Gallery Image [hand sketch art]Data has been a', '2021-03-23 16:35:50', 1, 3, '110.44.118.211'),
(1126, 'Sub Gallery Image [hand sketch art]Data has been a', '2021-03-23 16:35:50', 1, 3, '110.44.118.211'),
(1127, 'Sub Gallery Image [hand sketch art]Data has been a', '2021-03-23 16:35:50', 1, 3, '110.44.118.211'),
(1128, 'Sub Gallery Image [hand sketch art]Data has been a', '2021-03-23 16:35:50', 1, 3, '110.44.118.211'),
(1129, 'Sub Gallery Image [hand sketch art]Data has been a', '2021-03-23 16:35:50', 1, 3, '110.44.118.211'),
(1130, 'Sub Gallery Image [hand sketch art]Data has been a', '2021-03-23 16:35:50', 1, 3, '110.44.118.211'),
(1131, 'Sub Gallery Image [hand sketch art]Data has been a', '2021-03-23 16:35:50', 1, 3, '110.44.118.211'),
(1132, 'Sub Gallery Image [hand sketch art]Data has been a', '2021-03-23 16:35:50', 1, 3, '110.44.118.211'),
(1133, 'Gallery Image [Art Collection] Edit Successfully', '2021-03-23 16:39:44', 1, 4, '110.44.118.211'),
(1134, 'Sub Gallery Image  [Dr. Om Bahadur Rajbhandary]Dat', '2021-03-23 16:39:55', 1, 6, '110.44.118.211'),
(1135, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:39:58', 1, 6, '110.44.118.211'),
(1136, 'Sub Gallery Image  [Dr. Om Bahadur Rajbhandary]Dat', '2021-03-23 16:39:58', 1, 6, '110.44.118.211'),
(1137, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:40:02', 1, 6, '110.44.118.211'),
(1138, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:40:02', 1, 6, '110.44.118.211'),
(1139, 'Sub Gallery Image  [Dr. Om Bahadur Rajbhandary]Dat', '2021-03-23 16:40:02', 1, 6, '110.44.118.211'),
(1140, 'Sub Gallery Image [art collection]Data has been ad', '2021-03-23 16:40:41', 1, 3, '110.44.118.211'),
(1141, 'Sub Gallery Image [art collection]Data has been ad', '2021-03-23 16:40:41', 1, 3, '110.44.118.211'),
(1142, 'Sub Gallery Image [art collection]Data has been ad', '2021-03-23 16:40:41', 1, 3, '110.44.118.211'),
(1143, 'Sub Gallery Image [art collection]Data has been ad', '2021-03-23 16:40:41', 1, 3, '110.44.118.211'),
(1144, 'Sub Gallery Image [art collection]Data has been ad', '2021-03-23 16:40:41', 1, 3, '110.44.118.211'),
(1145, 'Sub Gallery Image [art collection]Data has been ad', '2021-03-23 16:40:41', 1, 3, '110.44.118.211'),
(1146, 'Sub Gallery Image [art collection]Data has been ad', '2021-03-23 16:40:41', 1, 3, '110.44.118.211'),
(1147, 'Sub Gallery Image [art collection]Data has been ad', '2021-03-23 16:40:41', 1, 3, '110.44.118.211'),
(1148, 'Sub Gallery Image [art collection]Data has been ad', '2021-03-23 16:40:41', 1, 3, '110.44.118.211'),
(1149, 'Sub Gallery Image [art collection]Data has been ad', '2021-03-23 16:40:41', 1, 3, '110.44.118.211'),
(1150, 'Sub Gallery Image  [art collection]Data has been d', '2021-03-23 16:41:00', 1, 6, '110.44.118.211'),
(1151, 'Gallery Image  [Achievements]Data has been deleted', '2021-03-23 16:47:36', 1, 6, '110.44.118.211'),
(1152, 'Gallery Image  []Data has been deleted successfull', '2021-03-23 16:47:38', 1, 6, '110.44.118.211'),
(1153, 'Gallery Image  [Recognition]Data has been deleted ', '2021-03-23 16:47:38', 1, 6, '110.44.118.211'),
(1154, 'Gallery Image [Gallery Shop] Edit Successfully', '2021-03-23 16:48:19', 1, 4, '110.44.118.211'),
(1155, 'Sub Gallery Image  [Events]Data has been deleted s', '2021-03-23 16:48:43', 1, 6, '110.44.118.211'),
(1156, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:48:48', 1, 6, '110.44.118.211'),
(1157, 'Sub Gallery Image  [Events]Data has been deleted s', '2021-03-23 16:48:48', 1, 6, '110.44.118.211'),
(1158, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:48:51', 1, 6, '110.44.118.211'),
(1159, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:48:51', 1, 6, '110.44.118.211'),
(1160, 'Sub Gallery Image  [Events]Data has been deleted s', '2021-03-23 16:48:51', 1, 6, '110.44.118.211'),
(1161, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:48:54', 1, 6, '110.44.118.211'),
(1162, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:48:54', 1, 6, '110.44.118.211'),
(1163, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:48:54', 1, 6, '110.44.118.211'),
(1164, 'Sub Gallery Image  [Events]Data has been deleted s', '2021-03-23 16:48:55', 1, 6, '110.44.118.211'),
(1165, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:48:58', 1, 6, '110.44.118.211'),
(1166, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:48:58', 1, 6, '110.44.118.211'),
(1167, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:48:58', 1, 6, '110.44.118.211'),
(1168, 'Sub Gallery Image  [Events]Data has been deleted s', '2021-03-23 16:48:58', 1, 6, '110.44.118.211'),
(1169, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:48:58', 1, 6, '110.44.118.211'),
(1170, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:01', 1, 6, '110.44.118.211'),
(1171, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:01', 1, 6, '110.44.118.211'),
(1172, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:01', 1, 6, '110.44.118.211'),
(1173, 'Sub Gallery Image  [Events]Data has been deleted s', '2021-03-23 16:49:01', 1, 6, '110.44.118.211'),
(1174, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:01', 1, 6, '110.44.118.211'),
(1175, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:01', 1, 6, '110.44.118.211'),
(1176, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:05', 1, 6, '110.44.118.211'),
(1177, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:05', 1, 6, '110.44.118.211'),
(1178, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:05', 1, 6, '110.44.118.211'),
(1179, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:05', 1, 6, '110.44.118.211'),
(1180, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:05', 1, 6, '110.44.118.211'),
(1181, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:05', 1, 6, '110.44.118.211'),
(1182, 'Sub Gallery Image  [Events]Data has been deleted s', '2021-03-23 16:49:05', 1, 6, '110.44.118.211'),
(1183, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:08', 1, 6, '110.44.118.211'),
(1184, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:08', 1, 6, '110.44.118.211'),
(1185, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:08', 1, 6, '110.44.118.211'),
(1186, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:08', 1, 6, '110.44.118.211'),
(1187, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:08', 1, 6, '110.44.118.211'),
(1188, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:08', 1, 6, '110.44.118.211'),
(1189, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:09', 1, 6, '110.44.118.211'),
(1190, 'Sub Gallery Image  [Events]Data has been deleted s', '2021-03-23 16:49:09', 1, 6, '110.44.118.211'),
(1191, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:12', 1, 6, '110.44.118.211'),
(1192, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:12', 1, 6, '110.44.118.211'),
(1193, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:12', 1, 6, '110.44.118.211'),
(1194, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:12', 1, 6, '110.44.118.211'),
(1195, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:12', 1, 6, '110.44.118.211'),
(1196, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:12', 1, 6, '110.44.118.211'),
(1197, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:12', 1, 6, '110.44.118.211'),
(1198, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 16:49:12', 1, 6, '110.44.118.211'),
(1199, 'Sub Gallery Image  [Events]Data has been deleted s', '2021-03-23 16:49:12', 1, 6, '110.44.118.211'),
(1200, 'Sub Gallery Image [gallery]Data has been added suc', '2021-03-23 16:49:37', 1, 3, '110.44.118.211'),
(1201, 'Sub Gallery Image [gallery]Data has been added suc', '2021-03-23 16:49:37', 1, 3, '110.44.118.211'),
(1202, 'Sub Gallery Image [gallery]Data has been added suc', '2021-03-23 16:49:37', 1, 3, '110.44.118.211'),
(1203, 'Sub Gallery Image [gallery]Data has been added suc', '2021-03-23 16:49:37', 1, 3, '110.44.118.211'),
(1204, 'Sub Gallery Image [gallery]Data has been added suc', '2021-03-23 16:49:37', 1, 3, '110.44.118.211'),
(1205, 'Sub Gallery Image [gallery]Data has been added suc', '2021-03-23 16:49:37', 1, 3, '110.44.118.211'),
(1206, 'Events [Saptalochana Tara] Edit Successfully', '2021-03-23 16:52:38', 1, 4, '110.44.118.211'),
(1207, 'Events [Saptalochana Tara] Edit Successfully', '2021-03-23 16:55:06', 1, 4, '110.44.118.211'),
(1208, 'Events [Padmapani Bodhisattva] Edit Successfully', '2021-03-23 16:57:27', 1, 4, '110.44.118.211'),
(1209, 'Events  [#Kora2015]Data has been deleted successfu', '2021-03-23 16:57:55', 1, 6, '110.44.118.211'),
(1210, 'Events  [#Kora2014]Data has been deleted successfu', '2021-03-23 16:57:55', 1, 6, '110.44.118.211'),
(1211, 'Events  [#Kora2013]Data has been deleted successfu', '2021-03-23 16:57:55', 1, 6, '110.44.118.211'),
(1212, 'Events  [#Kora2012]Data has been deleted successfu', '2021-03-23 16:57:55', 1, 6, '110.44.118.211'),
(1213, 'Events  [#Kora2011]Data has been deleted successfu', '2021-03-23 16:57:55', 1, 6, '110.44.118.211'),
(1214, 'Events [Padmapani Bodhisattva] Edit Successfully', '2021-03-23 17:00:24', 1, 4, '110.44.118.211'),
(1215, 'Events [Buddha] Edit Successfully', '2021-03-23 17:02:53', 1, 4, '110.44.118.211'),
(1216, 'Events [Buddha] Edit Successfully', '2021-03-23 17:06:33', 1, 4, '110.44.118.211'),
(1217, 'Events [Green Tara] Edit Successfully', '2021-03-23 17:07:32', 1, 4, '110.44.118.211'),
(1218, 'Events [Dancing Ganesh]Data has been added success', '2021-03-23 17:08:33', 1, 3, '110.44.118.211'),
(1219, 'Events [Solar System]Data has been added successfu', '2021-03-23 17:10:20', 1, 3, '110.44.118.211'),
(1220, 'Sub Gallery Image  [Kathmandu Kora Cycling Challen', '2021-03-23 17:34:17', 1, 6, '110.44.118.211'),
(1221, 'Sub Gallery Image  [Kathmandu Kora Cycling Challen', '2021-03-23 17:34:20', 1, 6, '110.44.118.211'),
(1222, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 17:34:20', 1, 6, '110.44.118.211'),
(1223, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 17:34:23', 1, 6, '110.44.118.211'),
(1224, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 17:34:23', 1, 6, '110.44.118.211'),
(1225, 'Sub Gallery Image  [Kathmandu Kora Cycling Challen', '2021-03-23 17:34:23', 1, 6, '110.44.118.211'),
(1226, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 17:34:27', 1, 6, '110.44.118.211'),
(1227, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 17:34:27', 1, 6, '110.44.118.211'),
(1228, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 17:34:27', 1, 6, '110.44.118.211'),
(1229, 'Sub Gallery Image  [Kathmandu Kora Cycling Challen', '2021-03-23 17:34:27', 1, 6, '110.44.118.211'),
(1230, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 17:34:30', 1, 6, '110.44.118.211'),
(1231, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 17:34:30', 1, 6, '110.44.118.211'),
(1232, 'Sub Gallery Image  [Kathmandu Kora Cycling Challen', '2021-03-23 17:34:30', 1, 6, '110.44.118.211'),
(1233, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 17:34:30', 1, 6, '110.44.118.211'),
(1234, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 17:34:30', 1, 6, '110.44.118.211'),
(1235, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 17:34:33', 1, 6, '110.44.118.211'),
(1236, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 17:34:33', 1, 6, '110.44.118.211'),
(1237, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 17:34:33', 1, 6, '110.44.118.211'),
(1238, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 17:34:33', 1, 6, '110.44.118.211'),
(1239, 'Sub Gallery Image  []Data has been deleted success', '2021-03-23 17:34:33', 1, 6, '110.44.118.211'),
(1240, 'Sub Gallery Image  [Kathmandu Kora Cycling Challen', '2021-03-23 17:34:33', 1, 6, '110.44.118.211'),
(1241, 'Sub Gallery Image [One]Data has been added success', '2021-03-23 17:35:11', 1, 3, '110.44.118.211'),
(1242, 'Sub Gallery Image [Two]Data has been added success', '2021-03-23 17:35:11', 1, 3, '110.44.118.211'),
(1243, 'Sub Gallery Image [Three]Data has been added succe', '2021-03-23 17:35:11', 1, 3, '110.44.118.211'),
(1244, 'Sub Gallery Image [Four]Data has been added succes', '2021-03-23 17:35:11', 1, 3, '110.44.118.211'),
(1245, 'Sub Gallery Image [Five]Data has been added succes', '2021-03-23 17:35:11', 1, 3, '110.44.118.211'),
(1246, 'Sub Gallery Image [Six]Data has been added success', '2021-03-23 17:35:11', 1, 3, '110.44.118.211'),
(1247, 'Login: Site Admin  logged in.', '2021-03-24 12:38:11', 1, 1, '110.44.118.211'),
(1248, 'User [Site Admin  ] Edit Successfully', '2021-03-24 12:39:53', 1, 4, '110.44.118.211'),
(1249, 'Login: Site Admin  logged in.', '2021-03-24 12:48:55', 1, 1, '110.44.118.211'),
(1250, 'User [Site Admin  ] Edit Successfully', '2021-03-24 12:50:10', 1, 4, '110.44.118.211'),
(1251, 'Login: Site Admin  logged in.', '2021-03-24 12:50:37', 1, 1, '110.44.118.211'),
(1252, 'User [Site Admin  ] Edit Successfully', '2021-03-24 12:50:47', 1, 4, '110.44.118.211'),
(1253, 'Login: Site Admin  logged in.', '2021-03-24 13:59:33', 1, 1, '110.44.118.211'),
(1254, 'Changes on Article \'About\' has been saved successf', '2021-03-24 14:01:10', 1, 4, '110.44.118.211'),
(1255, 'Changes on Article \'Saziv Shakya\' has been saved s', '2021-03-24 14:03:04', 1, 4, '110.44.118.211'),
(1256, 'Video  [Few words by Lok Ratna Shakya for Artist S', '2021-03-24 14:04:32', 1, 6, '110.44.118.211'),
(1257, 'Video  []Data has been deleted successfully.', '2021-03-24 14:04:38', 1, 6, '110.44.118.211'),
(1258, 'Video  [Artist Saziv Shakya Unleashed]Data has bee', '2021-03-24 14:04:38', 1, 6, '110.44.118.211'),
(1259, 'Video  []Data has been deleted successfully.', '2021-03-24 14:04:41', 1, 6, '110.44.118.211'),
(1260, 'Video  [Few words by Art Collector Birendra Shahi]', '2021-03-24 14:04:41', 1, 6, '110.44.118.211'),
(1261, 'Video  []Data has been deleted successfully.', '2021-03-24 14:04:41', 1, 6, '110.44.118.211'),
(1262, 'Video [Few words by Lok Ratna Shakya for Artist Sa', '2021-03-24 14:04:55', 1, 3, '110.44.118.211'),
(1263, 'Video [Lumbini Raj Shakya - First Guru of Saziv]Da', '2021-03-24 14:05:24', 1, 3, '110.44.118.211'),
(1264, 'Video [Few words by Art Collector Birendra Shahi]D', '2021-03-24 14:05:39', 1, 3, '110.44.118.211'),
(1265, 'Video [Artist Saziv Shakya Unleashed]Data has been', '2021-03-24 14:05:53', 1, 3, '110.44.118.211'),
(1266, 'Login: Site Admin  logged in.', '2021-11-22 14:49:25', 1, 1, '27.34.20.242'),
(1267, 'Login: Site Admin  logged in.', '2021-12-02 11:40:48', 1, 1, '27.34.20.48'),
(1268, 'Changes on Config \'The Spiritual Arts\' has been sa', '2021-12-02 11:42:05', 1, 4, '27.34.20.48'),
(1269, 'Login: Site Admin  logged in.', '2021-12-02 18:43:27', 1, 1, '27.34.20.48'),
(1270, 'SocialNetworking [Twitter] Edit Successfully', '2021-12-02 18:44:44', 1, 4, '27.34.20.48'),
(1271, 'SocialNetworking [Instagram] Edit Successfully', '2021-12-02 18:44:58', 1, 4, '27.34.20.48'),
(1272, 'Login: Site Admin  logged in.', '2022-08-11 12:53:50', 1, 1, '27.34.20.62'),
(1273, 'Login: Site Admin  logged in.', '2023-04-06 14:18:31', 1, 1, '27.34.20.21'),
(1274, 'Changes on Config \'Music Video Directors Guild of ', '2023-04-06 14:19:54', 1, 4, '27.34.20.21'),
(1275, 'User [Site Admin  ] Edit Successfully', '2023-04-06 14:20:27', 1, 4, '27.34.20.21'),
(1276, 'Login: Site Admin  logged in.', '2023-04-06 14:20:35', 1, 1, '27.34.20.21'),
(1277, 'Menu [ABOUT US] Edit Successfully', '2023-04-06 14:41:36', 1, 4, '27.34.20.21'),
(1278, 'Menu [OUR TEAM] Edit Successfully', '2023-04-06 14:41:55', 1, 4, '27.34.20.21'),
(1279, 'Menu [MUSIC VIDEOS] Edit Successfully', '2023-04-06 14:42:13', 1, 4, '27.34.20.21'),
(1280, 'Menu [PHOTO GALLERY] Edit Successfully', '2023-04-06 14:42:28', 1, 4, '27.34.20.21'),
(1281, 'Menu [OUR TEAM] Edit Successfully', '2023-04-06 14:42:51', 1, 4, '27.34.20.21'),
(1282, 'Menu [LATEST NEWS] Edit Successfully', '2023-04-06 14:43:05', 1, 4, '27.34.20.21'),
(1283, 'Slideshow [MVDGON] Edit Successfully', '2023-04-06 14:56:49', 1, 4, '27.34.20.21'),
(1284, 'Slideshow [slider1]Data has been added successfull', '2023-04-06 14:58:57', 1, 3, '27.34.20.21'),
(1285, 'Slideshow [slider1] Edit Successfully', '2023-04-06 15:03:51', 1, 4, '27.34.20.21'),
(1286, 'Slideshow [slider2]Data has been added successfull', '2023-04-06 15:04:23', 1, 3, '27.34.20.21'),
(1287, 'Slideshow [slider3]Data has been added successfull', '2023-04-06 15:04:45', 1, 3, '27.34.20.21'),
(1288, 'Slideshow [slider4]Data has been added successfull', '2023-04-06 15:05:35', 1, 3, '27.34.20.21'),
(1289, 'Changes on Config \'Music Video Directors Guild of ', '2023-04-06 15:44:11', 1, 4, '27.34.20.21'),
(1290, 'Sub Gallery Image [gallery1]Data has been added su', '2023-04-06 15:57:34', 1, 3, '27.34.20.21'),
(1291, 'Sub Gallery Image  [Six]Data has been deleted succ', '2023-04-06 16:06:27', 1, 6, '27.34.20.21'),
(1292, 'Sub Gallery Image  [Five]Data has been deleted suc', '2023-04-06 16:06:31', 1, 6, '27.34.20.21'),
(1293, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:06:31', 1, 6, '27.34.20.21'),
(1294, 'Sub Gallery Image  [Four]Data has been deleted suc', '2023-04-06 16:06:34', 1, 6, '27.34.20.21'),
(1295, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:06:34', 1, 6, '27.34.20.21'),
(1296, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:06:34', 1, 6, '27.34.20.21'),
(1297, 'Sub Gallery Image  [Three]Data has been deleted su', '2023-04-06 16:06:38', 1, 6, '27.34.20.21'),
(1298, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:06:38', 1, 6, '27.34.20.21'),
(1299, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:06:38', 1, 6, '27.34.20.21'),
(1300, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:06:38', 1, 6, '27.34.20.21'),
(1301, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:06:41', 1, 6, '27.34.20.21'),
(1302, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:06:41', 1, 6, '27.34.20.21'),
(1303, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:06:41', 1, 6, '27.34.20.21'),
(1304, 'Sub Gallery Image  [Two]Data has been deleted succ', '2023-04-06 16:06:41', 1, 6, '27.34.20.21'),
(1305, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:06:41', 1, 6, '27.34.20.21'),
(1306, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:06:44', 1, 6, '27.34.20.21'),
(1307, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:06:44', 1, 6, '27.34.20.21'),
(1308, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:06:44', 1, 6, '27.34.20.21'),
(1309, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:06:44', 1, 6, '27.34.20.21'),
(1310, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:06:45', 1, 6, '27.34.20.21'),
(1311, 'Sub Gallery Image  [One]Data has been deleted succ', '2023-04-06 16:06:45', 1, 6, '27.34.20.21'),
(1312, 'Sub Gallery Image [gallery17]Data has been added s', '2023-04-06 16:08:28', 1, 3, '27.34.20.21'),
(1313, 'Sub Gallery Image [gallery16]Data has been added s', '2023-04-06 16:08:28', 1, 3, '27.34.20.21'),
(1314, 'Sub Gallery Image [gallery15]Data has been added s', '2023-04-06 16:08:28', 1, 3, '27.34.20.21'),
(1315, 'Sub Gallery Image [gallery14]Data has been added s', '2023-04-06 16:08:28', 1, 3, '27.34.20.21'),
(1316, 'Sub Gallery Image [gallery13]Data has been added s', '2023-04-06 16:08:28', 1, 3, '27.34.20.21'),
(1317, 'Sub Gallery Image [gallery12]Data has been added s', '2023-04-06 16:08:28', 1, 3, '27.34.20.21'),
(1318, 'Sub Gallery Image [gallery11]Data has been added s', '2023-04-06 16:08:28', 1, 3, '27.34.20.21'),
(1319, 'Sub Gallery Image [gallery10]Data has been added s', '2023-04-06 16:08:28', 1, 3, '27.34.20.21'),
(1320, 'Sub Gallery Image [gallery9]Data has been added su', '2023-04-06 16:08:28', 1, 3, '27.34.20.21'),
(1321, 'Sub Gallery Image [gallery8]Data has been added su', '2023-04-06 16:08:28', 1, 3, '27.34.20.21'),
(1322, 'Sub Gallery Image [gallery7]Data has been added su', '2023-04-06 16:08:28', 1, 3, '27.34.20.21'),
(1323, 'Sub Gallery Image [gallery6]Data has been added su', '2023-04-06 16:08:28', 1, 3, '27.34.20.21'),
(1324, 'Sub Gallery Image [gallery5]Data has been added su', '2023-04-06 16:08:28', 1, 3, '27.34.20.21'),
(1325, 'Sub Gallery Image [gallery4]Data has been added su', '2023-04-06 16:08:28', 1, 3, '27.34.20.21'),
(1326, 'Sub Gallery Image [gallery3]Data has been added su', '2023-04-06 16:08:28', 1, 3, '27.34.20.21'),
(1327, 'Sub Gallery Image [gallery2]Data has been added su', '2023-04-06 16:08:28', 1, 3, '27.34.20.21'),
(1328, 'Changes on Config \'Music Video Directors Guild of ', '2023-04-06 16:11:36', 1, 4, '27.34.20.21'),
(1329, 'SocialNetworking [Facebook] Edit Successfully', '2023-04-06 16:12:43', 1, 4, '27.34.20.21'),
(1330, 'Login: Site Admin  logged in.', '2023-04-06 16:33:29', 1, 1, '27.34.22.197'),
(1331, 'Changes on Article \'Our Team Members\' has been sav', '2023-04-06 16:34:58', 1, 4, '27.34.20.21'),
(1332, 'Changes on Article \'About\' has been saved successf', '2023-04-06 16:35:29', 1, 4, '27.34.20.21'),
(1333, 'Menu [OUR TEAM] Edit Successfully', '2023-04-06 16:35:44', 1, 4, '27.34.20.21'),
(1334, 'Gallery Image [First AGM] Edit Successfully', '2023-04-06 16:39:21', 1, 4, '27.34.20.21'),
(1335, 'Gallery Image  [Art Collection]Data has been delet', '2023-04-06 16:39:46', 1, 6, '27.34.20.21'),
(1336, 'Gallery Image [Programs] Edit Successfully', '2023-04-06 16:40:57', 1, 4, '27.34.20.21'),
(1337, 'Gallery Image [First AGM] Edit Successfully', '2023-04-06 16:41:54', 1, 4, '27.34.20.21'),
(1338, 'Sub Gallery Image  [hand sketch art]Data has been ', '2023-04-06 16:42:12', 1, 6, '27.34.20.21'),
(1339, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:14', 1, 6, '27.34.20.21'),
(1340, 'Sub Gallery Image  [hand sketch art]Data has been ', '2023-04-06 16:42:14', 1, 6, '27.34.20.21'),
(1341, 'Sub Gallery Image  [hand sketch art]Data has been ', '2023-04-06 16:42:19', 1, 6, '27.34.20.21'),
(1342, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:19', 1, 6, '27.34.20.21'),
(1343, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:19', 1, 6, '27.34.20.21'),
(1344, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:23', 1, 6, '27.34.20.21'),
(1345, 'Sub Gallery Image  [hand sketch art]Data has been ', '2023-04-06 16:42:23', 1, 6, '27.34.20.21'),
(1346, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:23', 1, 6, '27.34.20.21'),
(1347, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:23', 1, 6, '27.34.20.21'),
(1348, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:26', 1, 6, '27.34.20.21'),
(1349, 'Sub Gallery Image  [hand sketch art]Data has been ', '2023-04-06 16:42:26', 1, 6, '27.34.20.21'),
(1350, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:26', 1, 6, '27.34.20.21'),
(1351, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:26', 1, 6, '27.34.20.21'),
(1352, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:26', 1, 6, '27.34.20.21'),
(1353, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:29', 1, 6, '27.34.20.21'),
(1354, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:29', 1, 6, '27.34.20.21'),
(1355, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:29', 1, 6, '27.34.20.21'),
(1356, 'Sub Gallery Image  [hand sketch art]Data has been ', '2023-04-06 16:42:29', 1, 6, '27.34.20.21'),
(1357, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:29', 1, 6, '27.34.20.21'),
(1358, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:29', 1, 6, '27.34.20.21'),
(1359, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:33', 1, 6, '27.34.20.21'),
(1360, 'Sub Gallery Image  [hand sketch art]Data has been ', '2023-04-06 16:42:33', 1, 6, '27.34.20.21'),
(1361, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:33', 1, 6, '27.34.20.21'),
(1362, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:33', 1, 6, '27.34.20.21'),
(1363, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:33', 1, 6, '27.34.20.21'),
(1364, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:33', 1, 6, '27.34.20.21'),
(1365, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:33', 1, 6, '27.34.20.21'),
(1366, 'Sub Gallery Image  [hand sketch art]Data has been ', '2023-04-06 16:42:38', 1, 6, '27.34.20.21'),
(1367, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:38', 1, 6, '27.34.20.21'),
(1368, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:38', 1, 6, '27.34.20.21'),
(1369, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:38', 1, 6, '27.34.20.21'),
(1370, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:38', 1, 6, '27.34.20.21'),
(1371, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:38', 1, 6, '27.34.20.21'),
(1372, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:38', 1, 6, '27.34.20.21'),
(1373, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:38', 1, 6, '27.34.20.21'),
(1374, 'Sub Gallery Image  [hand sketch art]Data has been ', '2023-04-06 16:42:41', 1, 6, '27.34.20.21'),
(1375, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:41', 1, 6, '27.34.20.21'),
(1376, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:41', 1, 6, '27.34.20.21'),
(1377, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:41', 1, 6, '27.34.20.21'),
(1378, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:41', 1, 6, '27.34.20.21'),
(1379, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:41', 1, 6, '27.34.20.21'),
(1380, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:41', 1, 6, '27.34.20.21'),
(1381, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:42', 1, 6, '27.34.20.21'),
(1382, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:42', 1, 6, '27.34.20.21'),
(1383, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:45', 1, 6, '27.34.20.21'),
(1384, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:45', 1, 6, '27.34.20.21'),
(1385, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:45', 1, 6, '27.34.20.21'),
(1386, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:45', 1, 6, '27.34.20.21'),
(1387, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:45', 1, 6, '27.34.20.21'),
(1388, 'Sub Gallery Image  [hand sketch art]Data has been ', '2023-04-06 16:42:45', 1, 6, '27.34.20.21'),
(1389, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:45', 1, 6, '27.34.20.21'),
(1390, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:45', 1, 6, '27.34.20.21'),
(1391, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:45', 1, 6, '27.34.20.21'),
(1392, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:42:45', 1, 6, '27.34.20.21'),
(1393, 'Sub Gallery Image [First AGM]Data has been added s', '2023-04-06 16:51:46', 1, 3, '27.34.20.21'),
(1394, 'Sub Gallery Image [First AGM]Data has been added s', '2023-04-06 16:51:46', 1, 3, '27.34.20.21'),
(1395, 'Sub Gallery Image [First AGM]Data has been added s', '2023-04-06 16:51:46', 1, 3, '27.34.20.21'),
(1396, 'Sub Gallery Image [First AGM]Data has been added s', '2023-04-06 16:51:46', 1, 3, '27.34.20.21'),
(1397, 'Sub Gallery Image [First AGM]Data has been added s', '2023-04-06 16:51:46', 1, 3, '27.34.20.21'),
(1398, 'Sub Gallery Image [First AGM]Data has been added s', '2023-04-06 16:51:46', 1, 3, '27.34.20.21'),
(1399, 'Sub Gallery Image [First AGM]Data has been added s', '2023-04-06 16:51:46', 1, 3, '27.34.20.21'),
(1400, 'Sub Gallery Image [First AGM]Data has been added s', '2023-04-06 16:51:46', 1, 3, '27.34.20.21'),
(1401, 'Sub Gallery Image [First AGM]Data has been added s', '2023-04-06 16:51:46', 1, 3, '27.34.20.21'),
(1402, 'Sub Gallery Image [First AGM]Data has been added s', '2023-04-06 16:51:46', 1, 3, '27.34.20.21'),
(1403, 'Sub Gallery Image [First AGM]Data has been added s', '2023-04-06 16:51:46', 1, 3, '27.34.20.21'),
(1404, 'Sub Gallery Image [First AGM]Data has been added s', '2023-04-06 16:51:46', 1, 3, '27.34.20.21'),
(1405, 'Sub Gallery Image [First AGM]Data has been added s', '2023-04-06 16:51:46', 1, 3, '27.34.20.21'),
(1406, 'Sub Gallery Image [First AGM]Data has been added s', '2023-04-06 16:51:46', 1, 3, '27.34.20.21'),
(1407, 'Sub Gallery Image [First AGM]Data has been added s', '2023-04-06 16:54:12', 1, 3, '27.34.20.21'),
(1408, 'Sub Gallery Image [First AGM]Data has been added s', '2023-04-06 16:54:12', 1, 3, '27.34.20.21'),
(1409, 'Sub Gallery Image  [gallery]Data has been deleted ', '2023-04-06 16:54:38', 1, 6, '27.34.20.21'),
(1410, 'Sub Gallery Image  [gallery]Data has been deleted ', '2023-04-06 16:54:41', 1, 6, '27.34.20.21'),
(1411, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:54:41', 1, 6, '27.34.20.21'),
(1412, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:54:44', 1, 6, '27.34.20.21'),
(1413, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:54:44', 1, 6, '27.34.20.21'),
(1414, 'Sub Gallery Image  [gallery]Data has been deleted ', '2023-04-06 16:54:44', 1, 6, '27.34.20.21'),
(1415, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:55:06', 1, 6, '27.34.20.21'),
(1416, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:55:06', 1, 6, '27.34.20.21'),
(1417, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:55:06', 1, 6, '27.34.20.21'),
(1418, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:55:06', 1, 6, '27.34.20.21'),
(1419, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:55:06', 1, 6, '27.34.20.21'),
(1420, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:55:07', 1, 6, '27.34.20.21'),
(1421, 'Sub Gallery Image  [gallery]Data has been deleted ', '2023-04-06 16:55:21', 1, 6, '27.34.20.21'),
(1422, 'Sub Gallery Image  [gallery]Data has been deleted ', '2023-04-06 16:55:25', 1, 6, '27.34.20.21'),
(1423, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:55:25', 1, 6, '27.34.20.21'),
(1424, 'Sub Gallery Image  [gallery]Data has been deleted ', '2023-04-06 16:55:29', 1, 6, '27.34.20.21'),
(1425, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:55:29', 1, 6, '27.34.20.21'),
(1426, 'Sub Gallery Image  []Data has been deleted success', '2023-04-06 16:55:29', 1, 6, '27.34.20.21'),
(1427, 'Sub Gallery Image [Programs]Data has been added su', '2023-04-06 16:56:01', 1, 3, '27.34.20.21'),
(1428, 'Sub Gallery Image [Programs]Data has been added su', '2023-04-06 16:56:01', 1, 3, '27.34.20.21'),
(1429, 'Events  [Solar System]Data has been deleted succes', '2023-04-06 16:56:51', 1, 6, '27.34.20.21'),
(1430, 'Events  [Dancing Ganesh]Data has been deleted succ', '2023-04-06 16:56:51', 1, 6, '27.34.20.21'),
(1431, 'Events  [Green Tara]Data has been deleted successf', '2023-04-06 16:56:51', 1, 6, '27.34.20.21'),
(1432, 'Events  [Buddha]Data has been deleted successfully', '2023-04-06 16:56:51', 1, 6, '27.34.20.21'),
(1433, 'Events  [Padmapani Bodhisattva]Data has been delet', '2023-04-06 16:56:51', 1, 6, '27.34.20.21'),
(1434, 'Events  [Saptalochana Tara]Data has been deleted s', '2023-04-06 16:56:51', 1, 6, '27.34.20.21'),
(1435, 'Events [The Himalayan Times]Data has been added su', '2023-04-06 17:00:02', 1, 3, '27.34.20.21'),
(1436, 'Events [The Himalayan Times] Edit Successfully', '2023-04-06 17:00:23', 1, 4, '27.34.20.21'),
(1437, 'Events [The Himalayan Times] Edit Successfully', '2023-04-06 17:01:23', 1, 4, '27.34.20.21'),
(1438, 'Menu [LATEST NEWS] Edit Successfully', '2023-04-06 17:03:59', 1, 4, '27.34.22.197'),
(1439, 'Events [First AGM]Data has been added successfully', '2023-04-06 17:05:28', 1, 3, '27.34.20.21'),
(1440, 'Events [First AGM] Edit Successfully', '2023-04-06 17:06:27', 1, 4, '27.34.20.21'),
(1441, 'Events [Elected Committee Members 2022]Data has be', '2023-04-06 17:08:56', 1, 3, '27.34.20.21'),
(1442, 'Changes on Article \'About\' has been saved successf', '2023-04-06 17:10:10', 1, 4, '27.34.20.21'),
(1443, 'Changes on Article \'Our Team Members\' has been sav', '2023-04-06 17:11:01', 1, 4, '27.34.20.21'),
(1444, 'Video  [Artist Saziv Shakya Unleashed]Data has bee', '2023-04-06 17:11:27', 1, 6, '27.34.20.21'),
(1445, 'Video  [Few words by Art Collector Birendra Shahi]', '2023-04-06 17:11:29', 1, 6, '27.34.20.21'),
(1446, 'Video  []Data has been deleted successfully.', '2023-04-06 17:11:29', 1, 6, '27.34.20.21'),
(1447, 'Video  []Data has been deleted successfully.', '2023-04-06 17:11:31', 1, 6, '27.34.20.21'),
(1448, 'Video  []Data has been deleted successfully.', '2023-04-06 17:11:31', 1, 6, '27.34.20.21'),
(1449, 'Video  [Lumbini Raj Shakya - First Guru of Saziv]D', '2023-04-06 17:11:31', 1, 6, '27.34.20.21'),
(1450, 'Video  []Data has been deleted successfully.', '2023-04-06 17:11:35', 1, 6, '27.34.20.21'),
(1451, 'Video  []Data has been deleted successfully.', '2023-04-06 17:11:35', 1, 6, '27.34.20.21'),
(1452, 'Video  []Data has been deleted successfully.', '2023-04-06 17:11:35', 1, 6, '27.34.20.21'),
(1453, 'Video  [Few words by Lok Ratna Shakya for Artist S', '2023-04-06 17:11:35', 1, 6, '27.34.20.21'),
(1454, 'Video [SUNA BAATULI / Kali Prasad Baskota Feat. Ni', '2023-04-06 17:12:45', 1, 3, '27.34.20.21'),
(1455, 'Changes on Config \'Music Video Directors Guild of ', '2023-04-06 17:19:16', 1, 4, '27.34.20.21'),
(1456, 'Changes on Article \'Our Team Members\' has been sav', '2023-04-06 17:39:48', 1, 4, '27.34.20.21'),
(1457, 'Events [First AGM] Edit Successfully', '2023-04-06 17:41:00', 1, 4, '27.34.20.21'),
(1458, 'Events [First AGM] Edit Successfully', '2023-04-06 17:43:47', 1, 4, '27.34.20.21'),
(1459, 'Events [Elected Committee Members 2022] Edit Succe', '2023-04-06 17:54:18', 1, 4, '27.34.20.21'),
(1460, 'Events [The Himalayan Times] Edit Successfully', '2023-04-06 17:58:00', 1, 4, '27.34.20.21'),
(1461, 'Login: Site Admin  logged in.', '2023-06-01 16:20:55', 1, 1, '27.34.20.14'),
(1462, 'Login: Site Admin  logged in.', '2023-06-04 11:26:58', 1, 1, '110.44.127.170'),
(1463, 'Login: Site Admin  logged in.', '2023-06-25 08:20:24', 1, 1, '103.174.85.38'),
(1464, 'Login: Site Admin  logged in.', '2023-06-25 08:20:46', 1, 1, '103.174.85.38'),
(1465, 'Menu [NEWS & EVENTS] Edit Successfully', '2023-06-25 08:21:42', 1, 4, '103.174.85.38'),
(1466, 'Menu [BOARD MEMBERS] Edit Successfully', '2023-06-25 08:22:12', 1, 4, '103.174.85.38'),
(1467, 'Login: Site Admin  logged in.', '2023-07-02 16:05:52', 1, 1, '103.10.31.74'),
(1468, 'Login: Site Admin  logged out.', '2023-07-02 16:07:40', 1, 2, '103.10.31.74'),
(1469, 'Login: Site Admin  logged in.', '2023-07-02 16:07:50', 1, 1, '103.10.31.74'),
(1470, 'Login: Site Admin  logged in.', '2023-07-11 10:09:28', 1, 1, '27.34.64.179'),
(1471, 'Login: Site Admin  logged in.', '2023-07-11 10:15:54', 1, 1, '103.174.84.17'),
(1472, 'Login: Site Admin  logged in.', '2023-07-11 11:07:41', 1, 1, '103.174.84.17'),
(1473, 'Login: Site Admin  logged in.', '2023-07-11 14:47:42', 1, 1, '27.34.109.157'),
(1474, 'Article \'Member\' has been added successfully.', '2023-07-11 15:02:38', 1, 3, '27.34.109.157'),
(1475, 'Changes on Article \'Our Member\' has been saved suc', '2023-07-11 15:13:04', 1, 4, '27.34.109.157'),
(1476, 'Changes on Article \'Our Member\' has been saved suc', '2023-07-11 15:16:37', 1, 4, '27.34.109.157'),
(1477, 'Login: Site Admin  logged in.', '2023-07-11 15:19:46', 1, 1, '27.34.64.179'),
(1478, 'Changes on Article \'Our Member\' has been saved suc', '2023-07-11 15:43:18', 1, 4, '27.34.109.157'),
(1479, 'Changes on Article \'Our Member\' has been saved suc', '2023-07-11 15:50:30', 1, 4, '27.34.109.157'),
(1480, 'Changes on Article \'Our Member\' has been saved suc', '2023-07-11 15:51:25', 1, 4, '27.34.109.157'),
(1481, 'Changes on Article \'Our Member\' has been saved suc', '2023-07-11 15:52:11', 1, 4, '27.34.109.157'),
(1482, 'Changes on Article \'Our Member\' has been saved suc', '2023-07-11 15:57:16', 1, 4, '27.34.109.157'),
(1483, 'Changes on Article \'Our Member\' has been saved suc', '2023-07-11 15:58:03', 1, 4, '27.34.109.157'),
(1484, 'Changes on Article \'Our Member\' has been saved suc', '2023-07-11 16:06:35', 1, 4, '27.34.109.157'),
(1485, 'Changes on Article \'Our Member\' has been saved suc', '2023-07-11 16:07:18', 1, 4, '27.34.109.157'),
(1486, 'Changes on Article \'Our Member\' has been saved suc', '2023-07-11 16:09:53', 1, 4, '27.34.109.157'),
(1487, 'Login: Site Admin  logged in.', '2023-07-14 12:42:57', 1, 1, '27.34.64.148'),
(1488, 'Login: Site Admin  logged in.', '2023-07-14 13:11:57', 1, 1, '113.199.251.54');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1489, 'Login: Site Admin  logged in.', '2023-07-14 16:38:25', 1, 1, '27.34.109.128'),
(1490, 'Article \'Babita Shrestha\' has been added successfu', '2023-07-14 16:39:48', 1, 3, '27.34.109.128'),
(1491, 'Article \'test\' has been added successfully.', '2023-07-14 16:41:45', 1, 3, '27.34.109.128'),
(1492, 'Menu [BOARD MEMBERS] Edit Successfully', '2023-07-14 16:42:08', 1, 4, '27.34.109.128'),
(1493, 'Login: Site Admin  logged in.', '2023-07-14 16:45:06', 1, 1, '27.34.64.148'),
(1494, 'Changes on Article \'Babita Shrestha\' has been save', '2023-07-14 16:45:49', 1, 4, '27.34.64.148'),
(1495, 'Article \'abc\' has been added successfully.', '2023-07-14 16:48:31', 1, 3, '27.34.64.148'),
(1496, 'Changes on Article \'abc\' has been saved successful', '2023-07-14 17:00:30', 1, 4, '27.34.64.148'),
(1497, 'Changes on Article \'abc\' has been saved successful', '2023-07-14 17:03:04', 1, 4, '27.34.64.148'),
(1498, 'Changes on Article \'test\' has been saved successfu', '2023-07-14 17:07:06', 1, 4, '27.34.64.148'),
(1499, 'Login: Site Admin  logged in.', '2023-07-14 17:18:10', 1, 1, '113.199.248.9'),
(1500, 'Member  [test]Data has been deleted successfully.', '2023-07-14 17:25:15', 1, 6, '27.34.64.148'),
(1501, 'Member  []Data has been deleted successfully.', '2023-07-14 17:25:18', 1, 6, '27.34.64.148'),
(1502, 'Member  [abc]Data has been deleted successfully.', '2023-07-14 17:25:18', 1, 6, '27.34.64.148'),
(1503, 'Changes on Article \'Babita Shrestha\' has been save', '2023-07-14 17:28:48', 1, 4, '27.34.64.148'),
(1504, 'Menu [BOARD MEMBERS] Edit Successfully', '2023-07-14 17:30:24', 1, 4, '27.34.64.148'),
(1505, 'Menu [BOARD MEMBERS] Edit Successfully', '2023-07-14 17:30:49', 1, 4, '27.34.64.148'),
(1506, 'Menu [MEMBERS] CreatedData has been added successf', '2023-07-14 17:31:30', 1, 3, '27.34.64.148'),
(1507, 'Changes on Article \'Babita Shrestha\' has been save', '2023-07-14 17:35:44', 1, 4, '27.34.64.148'),
(1508, 'Changes on Article \'Babita Shrestha\' has been save', '2023-07-14 17:38:55', 1, 4, '27.34.64.148'),
(1509, 'Changes on Article \'Babita Shrestha\' has been save', '2023-07-14 17:39:15', 1, 4, '27.34.64.148'),
(1510, 'Changes on Article \'Babita Shrestha\' has been save', '2023-07-14 17:39:52', 1, 4, '27.34.64.148'),
(1511, 'Changes on Article \'Babita Shrestha\' has been save', '2023-07-14 17:58:19', 1, 4, '27.34.64.148'),
(1512, 'Changes on Article \'Babita Shrestha\' has been save', '2023-07-14 17:59:23', 1, 4, '27.34.64.148'),
(1513, 'Changes on Article \'Babita Shrestha\' has been save', '2023-07-14 18:01:54', 1, 4, '27.34.64.148'),
(1514, 'Changes on Article \'Babita Shrestha\' has been save', '2023-07-14 18:03:18', 1, 4, '27.34.64.148'),
(1515, 'Login: Site Admin  logged in.', '2023-07-15 15:29:49', 1, 1, '36.252.28.51'),
(1516, 'Changes on Config \'Music Video Directors Guild of ', '2023-07-15 15:31:26', 1, 4, '36.252.28.51'),
(1517, 'Login: Site Admin  logged in.', '2023-08-13 16:38:09', 1, 1, '110.44.125.14'),
(1518, 'User [Site Admin  ] Edit Successfully', '2023-08-13 16:38:28', 1, 4, '110.44.125.14'),
(1519, 'Login: Site Admin  logged in.', '2023-08-13 16:38:33', 1, 1, '110.44.125.14'),
(1520, 'User [Site Admin  ] Edit Successfully', '2023-08-13 16:39:46', 1, 4, '110.44.125.14'),
(1521, 'Login: Site Admin  logged in.', '2023-08-13 16:39:50', 1, 1, '110.44.125.14'),
(1522, 'Menu [mine] CreatedData has been added successfull', '2023-08-13 16:40:02', 1, 3, '110.44.125.14'),
(1523, 'Menu [mine] Edit Successfully', '2023-08-13 16:40:18', 1, 4, '110.44.125.14'),
(1524, 'Menu [mine] Edit Successfully', '2023-08-13 16:40:26', 1, 4, '110.44.125.14'),
(1525, 'Menu [mine] Edit Successfully', '2023-08-13 16:40:36', 1, 4, '110.44.125.14'),
(1526, 'Menu [mine] Edit Successfully', '2023-08-13 16:40:40', 1, 4, '110.44.125.14'),
(1527, 'Menu  [mine]Data has been deleted successfully.', '2023-08-13 16:40:48', 1, 6, '110.44.125.14'),
(1528, 'Article \'htrshtr\' has been added successfully.', '2023-08-13 16:41:10', 1, 3, '110.44.125.14'),
(1529, 'Changes on Article \'htrshtr\' has been saved succes', '2023-08-13 16:41:45', 1, 4, '110.44.125.14'),
(1530, 'Articles  [htrshtr]Data has been deleted successfu', '2023-08-13 16:41:52', 1, 6, '110.44.125.14'),
(1531, 'Article \'htrshtr\' has been added successfully.', '2023-08-13 16:42:12', 1, 3, '110.44.125.14'),
(1532, 'Changes on Article \'htrshtr\' has been saved succes', '2023-08-13 16:42:32', 1, 4, '110.44.125.14'),
(1533, 'Slideshow [adfasdf]Data has been added successfull', '2023-08-13 16:43:05', 1, 3, '110.44.125.14'),
(1534, 'Slideshows  [adfasdf]Data has been deleted success', '2023-08-13 16:43:19', 1, 6, '110.44.125.14'),
(1535, 'Slideshow  [adfasdf]Data has been deleted successf', '2023-08-13 16:43:19', 1, 6, '110.44.125.14'),
(1536, 'Article \'asd\' has been added successfully.', '2023-08-13 16:43:36', 1, 3, '110.44.125.14'),
(1537, 'Changes on Article \'asdasd\' has been saved success', '2023-08-13 16:43:52', 1, 4, '110.44.125.14'),
(1538, 'Member  [asdasd]Data has been deleted successfully', '2023-08-13 16:44:04', 1, 6, '110.44.125.14'),
(1539, 'Gallery [gal]Data has been added successfully.', '2023-08-13 16:44:15', 1, 3, '110.44.125.14'),
(1540, 'Sub Gallery Image [1]Data has been added successfu', '2023-08-13 16:44:42', 1, 3, '110.44.125.14'),
(1541, 'Sub Gallery Image [2]Data has been added successfu', '2023-08-13 16:44:42', 1, 3, '110.44.125.14'),
(1542, 'Sub Gallery Image [3]Data has been added successfu', '2023-08-13 16:44:42', 1, 3, '110.44.125.14'),
(1543, 'Gallery Image [1] Edit Successfully', '2023-08-13 16:44:51', 1, 4, '110.44.125.14'),
(1544, 'Gallery Image [3] Edit Successfully', '2023-08-13 16:45:02', 1, 4, '110.44.125.14'),
(1545, 'Sub Gallery Image  [1]Data has been deleted succes', '2023-08-13 16:45:20', 1, 6, '110.44.125.14'),
(1546, 'Sub Gallery Image  [3]Data has been deleted succes', '2023-08-13 16:45:26', 1, 6, '110.44.125.14'),
(1547, 'Sub Gallery Image  []Data has been deleted success', '2023-08-13 16:45:26', 1, 6, '110.44.125.14'),
(1548, 'Sub Gallery Image  [2]Data has been deleted succes', '2023-08-13 16:45:28', 1, 6, '110.44.125.14'),
(1549, 'Sub Gallery Image  []Data has been deleted success', '2023-08-13 16:45:28', 1, 6, '110.44.125.14'),
(1550, 'Sub Gallery Image  []Data has been deleted success', '2023-08-13 16:45:28', 1, 6, '110.44.125.14'),
(1551, 'Gallery Image  [gal]Data has been deleted successf', '2023-08-13 16:45:36', 1, 6, '110.44.125.14'),
(1552, 'Login: Site Admin  logged in.', '2023-08-13 17:50:01', 1, 1, '36.252.172.59'),
(1553, 'Changes on Config \'Music Video Directors Guild of ', '2023-08-13 17:51:06', 1, 4, '36.252.172.59'),
(1554, 'Changes on Article \'Babita Shrestha\' has been save', '2023-08-13 17:53:31', 1, 4, '36.252.172.59'),
(1555, 'Changes on Article \'Babita Shrestha\' has been save', '2023-08-13 17:54:08', 1, 4, '36.252.172.59'),
(1556, 'Login: Site Admin  logged in.', '2023-08-13 23:59:13', 1, 1, '27.34.64.169'),
(1557, 'Login: Site Admin  logged in.', '2023-08-15 11:28:51', 1, 1, '110.44.125.14'),
(1558, 'Article \'Nishan Babu Ghimire\' has been added succe', '2023-08-15 11:54:30', 1, 3, '110.44.125.14'),
(1559, 'Changes on Article \'Nishan Babu Ghimire\' has been ', '2023-08-15 12:43:15', 1, 4, '110.44.125.14'),
(1560, 'Changes on Article \'Nishan Babu Ghimire\' has been ', '2023-08-15 12:48:17', 1, 4, '110.44.125.14'),
(1561, 'Changes on Article \'Babita Shrestha\' has been save', '2023-08-15 12:50:01', 1, 4, '110.44.125.14'),
(1562, 'Article \'Vidhan Karki\' has been added successfully', '2023-08-15 12:54:03', 1, 3, '110.44.125.14'),
(1563, 'Changes on Article \'Nishan Babu Ghimire\' has been ', '2023-08-15 13:07:10', 1, 4, '110.44.125.15'),
(1564, 'Changes on Article \'Babita Shrestha\' has been save', '2023-08-15 15:00:35', 1, 4, '110.44.125.15'),
(1565, 'Login: Site Admin  logged in.', '2023-08-15 15:10:45', 1, 1, '110.44.125.15'),
(1566, 'Changes on Article \'Nishan Babu Ghimire\' has been ', '2023-08-15 15:10:56', 1, 4, '110.44.125.15'),
(1567, 'Login: Site Admin  logged in.', '2023-08-17 14:59:42', 1, 1, '27.34.109.167'),
(1568, 'Changes on Article \'Babita Shrestha\' has been save', '2023-08-17 15:00:04', 1, 4, '27.34.109.167'),
(1569, 'Login: Site Admin  logged in.', '2023-08-17 15:10:06', 1, 1, '27.34.109.167'),
(1570, 'Changes on Article \'Babita Shrestha\' has been save', '2023-08-17 15:10:48', 1, 4, '27.34.109.167'),
(1571, 'Changes on Article \'Babita Shrestha\' has been save', '2023-08-17 15:12:29', 1, 4, '27.34.109.167'),
(1572, 'Login: Site Admin  logged in.', '2023-08-17 16:03:35', 1, 1, '110.44.127.205'),
(1573, 'Changes on Article \'Babita Shrestha\' has been save', '2023-08-17 16:54:42', 1, 4, '110.44.127.205'),
(1574, 'Login: Site Admin  logged in.', '2023-08-17 16:56:42', 1, 1, '110.44.127.205'),
(1575, 'Login: Site Admin  logged in.', '2023-08-18 10:48:12', 1, 1, '110.44.127.205'),
(1576, 'Changes on Article \'Babita Shrestha\' has been save', '2023-08-18 12:06:07', 1, 4, '110.44.127.205'),
(1577, 'Login: Site Admin  logged in.', '2023-08-18 12:29:37', 1, 1, '110.44.127.205'),
(1578, 'Login: Site Admin  logged in.', '2023-08-20 08:23:19', 1, 1, '103.174.85.41'),
(1579, 'Article \'Nishan Babu Ghimire 1\' has been added suc', '2023-08-20 08:34:26', 1, 3, '103.174.85.41'),
(1580, 'Changes on Article \'Nishan Babu Ghimire2\' has been', '2023-08-20 08:36:47', 1, 4, '103.174.85.41'),
(1581, 'Changes on Article \'Nishan Babu Ghimire\' has been ', '2023-08-20 08:37:02', 1, 4, '103.174.85.41'),
(1582, 'Changes on Article \'Nishan Babu Ghimire\' has been ', '2023-08-20 08:37:50', 1, 4, '103.174.85.41'),
(1583, 'Article \'Krishna Dev Rupakheti\' has been added suc', '2023-08-20 08:46:44', 1, 3, '103.174.85.41'),
(1584, 'Article \'Daya Ram Ghimire\' has been added successf', '2023-08-20 08:58:22', 1, 3, '103.174.85.41'),
(1585, 'Changes on Article \'Daya Ram Ghimire\' has been sav', '2023-08-20 08:59:08', 1, 4, '103.174.85.41'),
(1586, 'Article \'Dilliram Regmi alias D.R Sujan\' has been ', '2023-08-20 09:11:36', 1, 3, '103.174.85.41'),
(1587, 'Article \'Saman Adhikari\' has been added successful', '2023-08-20 09:21:55', 1, 3, '103.174.85.41'),
(1588, 'Article \'Devendra Panday\' has been added successfu', '2023-08-20 09:35:00', 1, 3, '103.174.85.41'),
(1589, 'Changes on Article \'Our Team Members\' has been sav', '2023-08-20 09:51:03', 1, 4, '103.174.85.41'),
(1590, 'Changes on Article \'Our Team Members\' has been sav', '2023-08-20 09:51:34', 1, 4, '103.174.85.41'),
(1591, 'Article \'Janak Singh\' has been added successfully.', '2023-08-20 09:55:02', 1, 3, '103.174.85.41'),
(1592, 'Changes on Article \'Our Team Members\' has been sav', '2023-08-20 09:55:39', 1, 4, '103.174.85.41'),
(1593, 'Changes on Article \'Krishnadev Rupakheti\' has been', '2023-08-20 09:56:36', 1, 4, '103.174.85.41'),
(1594, 'Gallery [Dashain Subhakamana]Data has been added s', '2023-08-20 10:01:15', 1, 3, '103.174.85.41'),
(1595, 'Sub Gallery Image [Dashain Subhakamana]Data has be', '2023-08-20 10:45:43', 1, 3, '103.174.85.41'),
(1596, 'Sub Gallery Image [Dashain Subhakamana]Data has be', '2023-08-20 10:45:43', 1, 3, '103.174.85.41'),
(1597, 'Sub Gallery Image [Dashain Subhakamana]Data has be', '2023-08-20 10:45:43', 1, 3, '103.174.85.41'),
(1598, 'Gallery Image [Dashain Subhakamana] Edit Successfu', '2023-08-20 10:46:31', 1, 4, '103.174.85.41'),
(1599, 'Gallery Image [Dashain Subhakamana] Edit Successfu', '2023-08-20 10:47:05', 1, 4, '103.174.85.41'),
(1600, 'Gallery Image [Dashain Subhakamana] Edit Successfu', '2023-08-20 10:47:26', 1, 4, '103.174.85.41'),
(1601, 'Changes on Article \'About\' has been saved successf', '2023-08-20 10:49:55', 1, 4, '103.174.85.41'),
(1602, 'Changes on Article \'Our Member\' has been saved suc', '2023-08-20 10:53:07', 1, 4, '103.174.85.41'),
(1603, 'Changes on Article \'Our Team Members\' has been sav', '2023-08-20 10:53:25', 1, 4, '103.174.85.41'),
(1604, 'Changes on Article \'About\' has been saved successf', '2023-08-20 10:53:46', 1, 4, '103.174.85.41'),
(1605, 'Login: Site Admin  logged in.', '2023-08-20 11:00:22', 1, 1, '27.34.64.9'),
(1606, 'Article \'Bishwas Bajracharya\' has been added succe', '2023-08-20 11:05:27', 1, 3, '103.174.85.41'),
(1607, 'Changes on Article \'Our Team Members\' has been sav', '2023-08-20 11:06:39', 1, 4, '103.174.85.41'),
(1608, 'Changes on Article \'Bishwas Bajracharya\' has been ', '2023-08-20 11:08:27', 1, 4, '103.174.85.41'),
(1609, 'Changes on Article \'Bishwas Bajracharya\' has been ', '2023-08-20 11:08:41', 1, 4, '103.174.85.41'),
(1610, 'Login: Site Admin  logged in.', '2023-08-20 13:22:29', 1, 1, '49.126.204.109'),
(1611, 'Login: Site Admin  logged in.', '2023-08-20 14:39:21', 1, 1, '27.34.64.9'),
(1612, 'Changes on Article \'Our Team Members\' has been sav', '2023-08-20 14:43:52', 1, 4, '27.34.64.9'),
(1613, 'Changes on Article \'Our Team Members\' has been sav', '2023-08-20 14:45:40', 1, 4, '27.34.64.9'),
(1614, 'Login: Site Admin  logged in.', '2023-08-20 15:33:03', 1, 1, '27.34.64.9'),
(1615, 'Changes on Article \'Dayaram Ghimire\' has been save', '2023-08-20 15:33:20', 1, 4, '27.34.64.9'),
(1616, 'Changes on Article \'Krishna Dev Rupakheti\' has bee', '2023-08-20 15:33:53', 1, 4, '27.34.64.9'),
(1617, 'Changes on Article \'Our Team Members\' has been sav', '2023-08-20 15:34:45', 1, 4, '27.34.64.9'),
(1618, 'Changes on Article \'Our Team Members\' has been sav', '2023-08-20 15:46:43', 1, 4, '27.34.64.9'),
(1619, 'Changes on Article \'Our Team Members\' has been sav', '2023-08-20 15:48:43', 1, 4, '27.34.64.9'),
(1620, 'Login: Site Admin  logged in.', '2023-08-22 09:49:17', 1, 1, '103.174.85.41'),
(1621, 'Events [??????? ????? ???????? ?????????? ??? ????', '2023-08-22 09:52:03', 1, 3, '103.174.85.41'),
(1622, 'Events [??????? ????? ???????? ?????????? ??? ????', '2023-08-22 10:01:34', 1, 4, '103.174.85.41'),
(1623, 'Login: Site Admin  logged in.', '2023-08-22 11:38:43', 1, 1, '27.34.64.58'),
(1624, 'Events [Musician Baskota honored with cash by Musi', '2023-08-22 11:39:58', 1, 4, '27.34.64.58'),
(1625, 'Login: Site Admin  logged in.', '2023-08-22 11:51:01', 1, 1, '103.10.31.44'),
(1626, 'Sub Gallery Image  [Dashain Subhakamana]Data has b', '2023-08-22 11:53:55', 1, 6, '27.34.64.58'),
(1627, 'Sub Gallery Image  [Dashain Subhakamana]Data has b', '2023-08-22 11:53:59', 1, 6, '27.34.64.58'),
(1628, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:53:59', 1, 6, '27.34.64.58'),
(1629, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:54:02', 1, 6, '27.34.64.58'),
(1630, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:54:02', 1, 6, '27.34.64.58'),
(1631, 'Sub Gallery Image  [Dashain Subhakamana]Data has b', '2023-08-22 11:54:02', 1, 6, '27.34.64.58'),
(1632, 'Gallery Image  [Dashain Subhakamana]Data has been ', '2023-08-22 11:54:09', 1, 6, '27.34.64.58'),
(1633, 'Gallery [AGM Program]Data has been added successfu', '2023-08-22 11:55:18', 1, 3, '103.10.31.44'),
(1634, 'Sub Gallery Image [Agm]Data has been added success', '2023-08-22 11:57:03', 1, 3, '103.10.31.44'),
(1635, 'Sub Gallery Image [Agm]Data has been added success', '2023-08-22 11:57:03', 1, 3, '103.10.31.44'),
(1636, 'Sub Gallery Image [Agm]Data has been added success', '2023-08-22 11:57:03', 1, 3, '103.10.31.44'),
(1637, 'Sub Gallery Image [Agm]Data has been added success', '2023-08-22 11:57:03', 1, 3, '103.10.31.44'),
(1638, 'Sub Gallery Image [Agm]Data has been added success', '2023-08-22 11:57:03', 1, 3, '103.10.31.44'),
(1639, 'Sub Gallery Image [Agm]Data has been added success', '2023-08-22 11:57:03', 1, 3, '103.10.31.44'),
(1640, 'Sub Gallery Image [Agm]Data has been added success', '2023-08-22 11:57:03', 1, 3, '103.10.31.44'),
(1641, 'Sub Gallery Image [Agm]Data has been added success', '2023-08-22 11:57:03', 1, 3, '103.10.31.44'),
(1642, 'Sub Gallery Image [Agm]Data has been added success', '2023-08-22 11:57:03', 1, 3, '103.10.31.44'),
(1643, 'Sub Gallery Image [Agm]Data has been added success', '2023-08-22 11:57:03', 1, 3, '103.10.31.44'),
(1644, 'Sub Gallery Image  [Agm]Data has been deleted succ', '2023-08-22 11:58:23', 1, 6, '103.10.31.44'),
(1645, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:26', 1, 6, '103.10.31.44'),
(1646, 'Sub Gallery Image  [Agm]Data has been deleted succ', '2023-08-22 11:58:28', 1, 6, '103.10.31.44'),
(1647, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:36', 1, 6, '103.10.31.44'),
(1648, 'Sub Gallery Image  [Agm]Data has been deleted succ', '2023-08-22 11:58:37', 1, 6, '103.10.31.44'),
(1649, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:37', 1, 6, '103.10.31.44'),
(1650, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:39', 1, 6, '103.10.31.44'),
(1651, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:39', 1, 6, '103.10.31.44'),
(1652, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:39', 1, 6, '103.10.31.44'),
(1653, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:39', 1, 6, '103.10.31.44'),
(1654, 'Sub Gallery Image  [Agm]Data has been deleted succ', '2023-08-22 11:58:44', 1, 6, '103.10.31.44'),
(1655, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:44', 1, 6, '103.10.31.44'),
(1656, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:44', 1, 6, '103.10.31.44'),
(1657, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:44', 1, 6, '103.10.31.44'),
(1658, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:44', 1, 6, '103.10.31.44'),
(1659, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:45', 1, 6, '103.10.31.44'),
(1660, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:45', 1, 6, '103.10.31.44'),
(1661, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:45', 1, 6, '103.10.31.44'),
(1662, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:45', 1, 6, '103.10.31.44'),
(1663, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:45', 1, 6, '103.10.31.44'),
(1664, 'Sub Gallery Image  [Agm]Data has been deleted succ', '2023-08-22 11:58:45', 1, 6, '103.10.31.44'),
(1665, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:47', 1, 6, '103.10.31.44'),
(1666, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:47', 1, 6, '103.10.31.44'),
(1667, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:47', 1, 6, '103.10.31.44'),
(1668, 'Sub Gallery Image  [Agm]Data has been deleted succ', '2023-08-22 11:58:47', 1, 6, '103.10.31.44'),
(1669, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:47', 1, 6, '103.10.31.44'),
(1670, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:47', 1, 6, '103.10.31.44'),
(1671, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:47', 1, 6, '103.10.31.44'),
(1672, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:56', 1, 6, '103.10.31.44'),
(1673, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:56', 1, 6, '103.10.31.44'),
(1674, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:56', 1, 6, '103.10.31.44'),
(1675, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:56', 1, 6, '103.10.31.44'),
(1676, 'Sub Gallery Image  [Agm]Data has been deleted succ', '2023-08-22 11:58:56', 1, 6, '103.10.31.44'),
(1677, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:56', 1, 6, '103.10.31.44'),
(1678, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:56', 1, 6, '103.10.31.44'),
(1679, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:56', 1, 6, '103.10.31.44'),
(1680, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:56', 1, 6, '103.10.31.44'),
(1681, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:56', 1, 6, '103.10.31.44'),
(1682, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:56', 1, 6, '103.10.31.44'),
(1683, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:56', 1, 6, '103.10.31.44'),
(1684, 'Sub Gallery Image  [Agm]Data has been deleted succ', '2023-08-22 11:58:56', 1, 6, '103.10.31.44'),
(1685, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:56', 1, 6, '103.10.31.44'),
(1686, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:56', 1, 6, '103.10.31.44'),
(1687, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:56', 1, 6, '103.10.31.44'),
(1688, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:56', 1, 6, '103.10.31.44'),
(1689, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:59', 1, 6, '103.10.31.44'),
(1690, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:59', 1, 6, '103.10.31.44'),
(1691, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:59', 1, 6, '103.10.31.44'),
(1692, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:59', 1, 6, '103.10.31.44'),
(1693, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:59', 1, 6, '103.10.31.44'),
(1694, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:59', 1, 6, '103.10.31.44'),
(1695, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:59', 1, 6, '103.10.31.44'),
(1696, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:59', 1, 6, '103.10.31.44'),
(1697, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:58:59', 1, 6, '103.10.31.44'),
(1698, 'Sub Gallery Image  [Agm]Data has been deleted succ', '2023-08-22 11:58:59', 1, 6, '103.10.31.44'),
(1699, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:59:00', 1, 6, '103.10.31.44'),
(1700, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:59:00', 1, 6, '103.10.31.44'),
(1701, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:59:00', 1, 6, '103.10.31.44'),
(1702, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:59:00', 1, 6, '103.10.31.44'),
(1703, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:59:00', 1, 6, '103.10.31.44'),
(1704, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:59:00', 1, 6, '103.10.31.44'),
(1705, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:59:00', 1, 6, '103.10.31.44'),
(1706, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:59:00', 1, 6, '103.10.31.44'),
(1707, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:59:01', 1, 6, '103.10.31.44'),
(1708, 'Sub Gallery Image  []Data has been deleted success', '2023-08-22 11:59:01', 1, 6, '103.10.31.44'),
(1709, 'Sub Gallery Image  [Agm]Data has been deleted succ', '2023-08-22 11:59:01', 1, 6, '103.10.31.44'),
(1710, 'Events [Musician Baskota honored with cash by Musi', '2023-08-22 12:00:37', 1, 4, '27.34.64.58'),
(1711, 'Login: Site Admin  logged in.', '2023-08-22 12:03:32', 1, 1, '103.10.31.44'),
(1712, 'Events [test event 1]Data has been added successfu', '2023-08-22 12:05:25', 1, 3, '103.10.31.44'),
(1713, 'Events [test event 1] Edit Successfully', '2023-08-22 12:05:34', 1, 4, '103.10.31.44'),
(1714, 'Events  [test event 1]Data has been deleted succes', '2023-08-22 12:05:39', 1, 6, '103.10.31.44'),
(1715, 'Sub Gallery Image [a]Data has been added successfu', '2023-08-22 12:06:31', 1, 3, '103.10.31.44'),
(1716, 'Sub Gallery Image [b]Data has been added successfu', '2023-08-22 12:06:31', 1, 3, '103.10.31.44'),
(1717, 'Sub Gallery Image [c]Data has been added successfu', '2023-08-22 12:06:31', 1, 3, '103.10.31.44'),
(1718, 'Sub Gallery Image [d]Data has been added successfu', '2023-08-22 12:06:31', 1, 3, '103.10.31.44'),
(1719, 'Sub Gallery Image [e]Data has been added successfu', '2023-08-22 12:06:31', 1, 3, '103.10.31.44'),
(1720, 'Sub Gallery Image [f]Data has been added successfu', '2023-08-22 12:06:31', 1, 3, '103.10.31.44'),
(1721, 'Sub Gallery Image [g]Data has been added successfu', '2023-08-22 12:06:31', 1, 3, '103.10.31.44'),
(1722, 'Sub Gallery Image [h]Data has been added successfu', '2023-08-22 12:06:31', 1, 3, '103.10.31.44'),
(1723, 'Sub Gallery Image [i]Data has been added successfu', '2023-08-22 12:06:31', 1, 3, '103.10.31.44'),
(1724, 'Sub Gallery Image [j]Data has been added successfu', '2023-08-22 12:06:31', 1, 3, '103.10.31.44'),
(1725, 'Sub Gallery Image [k]Data has been added successfu', '2023-08-22 12:27:15', 1, 3, '103.10.31.44'),
(1726, 'Sub Gallery Image [L]Data has been added successfu', '2023-08-22 12:28:23', 1, 3, '103.10.31.44'),
(1727, 'Sub Gallery Image [m]Data has been added successfu', '2023-08-22 12:30:20', 1, 3, '103.10.31.44'),
(1728, 'Sub Gallery Image [n]Data has been added successfu', '2023-08-22 12:30:20', 1, 3, '103.10.31.44'),
(1729, 'Sub Gallery Image [o]Data has been added successfu', '2023-08-22 12:30:20', 1, 3, '103.10.31.44'),
(1730, 'Sub Gallery Image [p]Data has been added successfu', '2023-08-22 12:30:20', 1, 3, '103.10.31.44'),
(1731, 'Sub Gallery Image [q]Data has been added successfu', '2023-08-22 12:30:20', 1, 3, '103.10.31.44'),
(1732, 'Sub Gallery Image [r]Data has been added successfu', '2023-08-22 12:30:20', 1, 3, '103.10.31.44'),
(1733, 'Sub Gallery Image [s]Data has been added successfu', '2023-08-22 12:30:20', 1, 3, '103.10.31.44'),
(1734, 'Sub Gallery Image [t]Data has been added successfu', '2023-08-22 12:30:20', 1, 3, '103.10.31.44'),
(1735, 'Sub Gallery Image [u]Data has been added successfu', '2023-08-22 12:30:20', 1, 3, '103.10.31.44'),
(1736, 'Sub Gallery Image [v]Data has been added successfu', '2023-08-22 12:30:20', 1, 3, '103.10.31.44'),
(1737, 'Sub Gallery Image [w]Data has been added successfu', '2023-08-22 12:30:20', 1, 3, '103.10.31.44'),
(1738, 'Sub Gallery Image [x]Data has been added successfu', '2023-08-22 12:30:20', 1, 3, '103.10.31.44'),
(1739, 'Sub Gallery Image [y]Data has been added successfu', '2023-08-22 12:30:20', 1, 3, '103.10.31.44'),
(1740, 'Article \'Devandra Kunwar\' has been added successfu', '2023-08-22 13:26:34', 1, 3, '103.10.31.44'),
(1741, 'Changes on Article \'Our Team Members\' has been sav', '2023-08-22 13:35:36', 1, 4, '103.10.31.44'),
(1742, 'Changes on Article \'Debendra Kunwar\' has been save', '2023-08-22 13:36:15', 1, 4, '103.10.31.44'),
(1743, 'Changes on Article \'Our Team Members\' has been sav', '2023-08-22 13:37:06', 1, 4, '103.10.31.44'),
(1744, 'Login: Site Admin  logged in.', '2023-08-22 20:27:13', 1, 1, '27.34.64.58'),
(1745, 'Changes on Article \'About\' has been saved successf', '2023-08-22 20:27:29', 1, 4, '27.34.64.58'),
(1746, 'Changes on Article \'Our Team Members\' has been sav', '2023-08-22 20:27:43', 1, 4, '27.34.64.58'),
(1747, 'Changes on Article \'Our Member\' has been saved suc', '2023-08-22 20:27:54', 1, 4, '27.34.64.58'),
(1748, 'Login: Site Admin  logged in.', '2023-08-23 12:41:30', 1, 1, '103.10.31.44'),
(1749, 'Article \'aryatara@longtail.info\' has been added su', '2023-08-23 12:48:15', 1, 3, '103.10.31.44'),
(1750, 'Changes on Article \'Roshan Das\' has been saved suc', '2023-08-23 12:48:52', 1, 4, '103.10.31.44'),
(1751, 'Login: Site Admin  logged in.', '2023-08-23 13:44:24', 1, 1, '110.44.120.195'),
(1752, 'Changes on Article \'Roshan Das\' has been saved suc', '2023-08-23 13:50:05', 1, 4, '110.44.120.195'),
(1753, 'Changes on Article \'Roshan Das\' has been saved suc', '2023-08-23 13:52:59', 1, 4, '110.44.120.195'),
(1754, 'Changes on Article \'Dayaram Ghimire\' has been save', '2023-08-23 13:57:40', 1, 4, '110.44.120.195'),
(1755, 'Login: Site Admin  logged in.', '2023-08-27 12:00:05', 1, 1, '110.44.121.21'),
(1756, 'Article \'Prabin Thapa\' has been added successfully', '2023-08-27 12:12:33', 1, 3, '110.44.121.21'),
(1757, 'Changes on Article \'Prabin Thapa\' has been saved s', '2023-08-27 12:16:36', 1, 4, '110.44.121.21'),
(1758, 'Changes on Article \'Prabin Thapa\' has been saved s', '2023-08-27 12:27:31', 1, 4, '110.44.121.21'),
(1759, 'Changes on Article \'Prabin Thapa\' has been saved s', '2023-08-27 12:28:34', 1, 4, '110.44.121.21'),
(1760, 'Changes on Article \'Babita Shrestha\' has been save', '2023-08-27 12:39:21', 1, 4, '110.44.121.21'),
(1761, 'Changes on Article \'Prabin Thapa\' has been saved s', '2023-08-27 12:45:22', 1, 4, '110.44.121.21'),
(1762, 'Article \'f\' has been added successfully.', '2023-08-27 12:51:17', 1, 3, '110.44.121.21'),
(1763, 'Member  [f]Data has been deleted successfully.', '2023-08-27 12:53:09', 1, 6, '110.44.121.21'),
(1764, 'Article \'a\' has been added successfully.', '2023-08-27 12:53:23', 1, 3, '110.44.121.21'),
(1765, 'Changes on Article \'a\' has been saved successfully', '2023-08-27 13:16:22', 1, 4, '110.44.124.139'),
(1766, 'Member  [Prabin Thapa]Data has been deleted succes', '2023-08-27 13:16:39', 1, 6, '110.44.124.139'),
(1767, 'Changes on Article \'Prabin Thapa\' has been saved s', '2023-08-27 13:17:11', 1, 4, '110.44.124.139'),
(1768, 'Login: Site Admin  logged in.', '2023-08-29 14:27:48', 1, 1, '110.44.127.208'),
(1769, 'Login: Site Admin  logged in.', '2023-08-30 17:06:57', 1, 1, '110.44.127.208'),
(1770, 'Article \'NIshan Baniya\' has been added successfull', '2023-08-30 17:09:59', 1, 3, '110.44.127.208'),
(1771, 'Login: Site Admin  logged in.', '2023-09-04 13:52:46', 1, 1, '27.34.64.123'),
(1772, 'Changes on Article \'Prabin Thapa\' has been saved s', '2023-09-04 13:54:35', 1, 4, '27.34.64.123'),
(1773, 'Changes on Article \'Prabin Thapa\' has been saved s', '2023-09-04 14:01:15', 1, 4, '27.34.64.123'),
(1774, 'Changes on Article \'Prabin Thapa\' has been saved s', '2023-09-04 14:03:16', 1, 4, '27.34.64.123'),
(1775, 'Login: Site Admin  logged in.', '2023-09-04 15:15:19', 1, 1, '110.44.121.37'),
(1776, 'Login: Site Admin  logged in.', '2023-09-04 16:19:12', 1, 1, '110.44.121.37'),
(1777, 'Login: Site Admin  logged in.', '2023-09-05 12:08:38', 1, 1, '110.44.121.37'),
(1778, 'Login: Site Admin  logged in.', '2023-09-05 12:09:58', 1, 1, '110.44.121.37'),
(1779, 'Changes on Article \'NIshan Baniya\' has been saved ', '2023-09-05 12:42:44', 1, 4, '110.44.121.37'),
(1780, 'Changes on Article \'Nishan Baniyaa\' has been saved', '2023-09-05 13:37:39', 1, 4, '110.44.121.37'),
(1781, 'Changes on Article \'Nishan Baniya\' has been saved ', '2023-09-05 14:06:23', 1, 4, '110.44.121.37'),
(1782, 'Changes on Article \'Nishan Baniya\' has been saved ', '2023-09-05 15:56:55', 1, 4, '110.44.121.37'),
(1783, 'Login: Site Admin  logged in.', '2023-09-06 16:35:03', 1, 1, '27.34.64.16'),
(1784, 'Changes on Article \'Nishan Baniya\' has been saved ', '2023-09-06 17:00:20', 1, 4, '27.34.64.16'),
(1785, 'Login: Site Admin  logged in.', '2023-09-07 11:29:36', 1, 1, '110.44.115.133'),
(1786, 'Changes on Article \'Nishan Baniya\' has been saved ', '2023-09-07 11:33:38', 1, 4, '110.44.115.133'),
(1787, 'Article \'Aaditya Budhathoki\' has been added succes', '2023-09-07 11:39:14', 1, 3, '110.44.115.133'),
(1788, 'Login: Site Admin  logged in.', '2023-09-07 13:18:50', 1, 1, '110.44.115.133'),
(1789, 'Login: Site Admin  logged in.', '2023-09-07 17:32:39', 1, 1, '110.44.115.133'),
(1790, 'Changes on Article \'Aaditya Budhathoki\' has been s', '2023-09-07 17:55:45', 1, 4, '110.44.115.133'),
(1791, 'Login: Site Admin  logged in.', '2023-09-08 11:39:00', 1, 1, '110.44.115.133'),
(1792, 'Changes on Article \'Aaditya Budhathoki\' has been s', '2023-09-08 11:41:24', 1, 4, '110.44.115.133'),
(1793, 'Changes on Article \'Aaditya Budhathoki\' has been s', '2023-09-08 11:48:42', 1, 4, '110.44.115.133'),
(1794, 'Login: Site Admin  logged in.', '2023-09-12 18:05:35', 1, 1, '27.34.64.30'),
(1795, 'Changes on Article \'Nishan Baniya\' has been saved ', '2023-09-12 18:09:32', 1, 4, '27.34.64.30'),
(1796, 'Changes on Article \'Aaditya Budhathoki\' has been s', '2023-09-12 18:10:06', 1, 4, '27.34.64.30'),
(1797, 'Changes on Article \'Aaditya Budhathoki\' has been s', '2023-09-12 18:11:41', 1, 4, '27.34.64.30'),
(1798, 'Login: Site Admin  logged in.', '2023-09-14 08:18:56', 1, 1, '27.34.64.76'),
(1799, 'Changes on Article \'Nishan Baniya\' has been saved ', '2023-09-14 08:19:28', 1, 4, '27.34.64.76'),
(1800, 'Login: Site Admin  logged in.', '2023-09-15 17:36:25', 1, 1, '27.34.64.76'),
(1801, 'Article \'Santosh Pokharel (Aaditya)\' has been adde', '2023-09-15 17:38:02', 1, 3, '27.34.64.76'),
(1802, 'Login: Site Admin  logged in.', '2023-10-17 12:40:05', 1, 1, '103.123.60.76'),
(1803, 'Events [??????? ????????? ??????? ?????? ???????? ', '2023-10-17 13:11:48', 1, 3, '103.123.60.76'),
(1804, 'Events [??????? ????????? ??????? ?????? ???????? ', '2023-10-17 13:14:10', 1, 4, '103.123.60.76'),
(1805, 'Login: Site Admin  logged in.', '2023-10-17 13:19:23', 1, 1, '103.10.29.186'),
(1806, 'Gallery [??????? ????????? ??????? ?????? ????????', '2023-10-17 13:22:45', 1, 3, '103.123.60.76'),
(1807, 'Sub Gallery Image [??????? ????????? ??????? ?????', '2023-10-17 13:23:15', 1, 3, '103.123.60.76'),
(1808, 'Sub Gallery Image [??????? ????????? ??????? ?????', '2023-10-17 13:23:15', 1, 3, '103.123.60.76'),
(1809, 'Sub Gallery Image [??????? ????????? ??????? ?????', '2023-10-17 13:23:15', 1, 3, '103.123.60.76'),
(1810, 'Sub Gallery Image [??????? ????????? ??????? ?????', '2023-10-17 13:23:15', 1, 3, '103.123.60.76'),
(1811, 'Sub Gallery Image [??????? ????????? ??????? ?????', '2023-10-17 13:23:15', 1, 3, '103.123.60.76'),
(1812, 'Sub Gallery Image [??????? ????????? ??????? ?????', '2023-10-17 13:23:15', 1, 3, '103.123.60.76'),
(1813, 'Sub Gallery Image [??????? ????????? ??????? ?????', '2023-10-17 13:23:15', 1, 3, '103.123.60.76'),
(1814, 'Sub Gallery Image [??????? ????????? ??????? ?????', '2023-10-17 13:23:15', 1, 3, '103.123.60.76'),
(1815, 'Sub Gallery Image [??????? ????????? ??????? ?????', '2023-10-17 13:23:15', 1, 3, '103.123.60.76'),
(1816, 'Sub Gallery Image [??????? ????????? ??????? ?????', '2023-10-17 13:23:15', 1, 3, '103.123.60.76'),
(1817, 'Events [TEst]Data has been added successfully.', '2023-10-17 13:29:28', 1, 3, '103.10.29.186'),
(1818, 'Events  [TEst]Data has been deleted successfully.', '2023-10-17 13:32:42', 1, 6, '103.10.29.186'),
(1819, 'Login: Site Admin  logged in.', '2023-10-17 14:21:07', 1, 1, '103.123.60.76'),
(1820, 'Gallery Image [Request] Edit Successfully', '2023-10-17 14:21:58', 1, 4, '103.123.60.76'),
(1821, 'Events [Request: ??????? ????????? ??????? ?????? ', '2023-10-17 14:22:34', 1, 4, '103.123.60.76'),
(1822, 'Login: Site Admin  logged in.', '2023-12-20 12:32:58', 1, 1, '103.181.227.106'),
(1823, 'Changes on Article \'Devendra Panday\' has been save', '2023-12-20 12:33:30', 1, 4, '103.181.227.106'),
(1824, 'Changes on Article \'Devendra Panday\' has been save', '2023-12-20 12:40:44', 1, 4, '103.181.227.106'),
(1825, 'Changes on Article \'Devendra Panday\' has been save', '2023-12-20 12:43:16', 1, 4, '103.181.227.106'),
(1826, 'Changes on Article \'Devendra Panday\' has been save', '2023-12-20 12:46:13', 1, 4, '103.181.227.106'),
(1827, 'Changes on Article \'Devendra Panday\' has been save', '2023-12-20 12:48:26', 1, 4, '103.181.227.106'),
(1828, 'Changes on Article \'Devendra Panday\' has been save', '2023-12-20 12:53:54', 1, 4, '103.181.227.106'),
(1829, 'Changes on Article \'Devendra Panday\' has been save', '2023-12-20 12:57:25', 1, 4, '103.181.227.106'),
(1830, 'Changes on Article \'Devendra Panday\' has been save', '2023-12-20 13:03:55', 1, 4, '103.181.227.106'),
(1831, 'Login: Site Admin  logged in.', '2024-05-06 11:59:30', 1, 1, '103.181.226.169'),
(1832, 'Login: Site Admin  logged in.', '2024-05-07 12:30:20', 1, 1, '103.123.60.154'),
(1833, 'Changes on Article \'Daya Ram Ghimire\' has been sav', '2024-05-07 12:35:46', 1, 4, '103.123.60.154'),
(1834, 'Changes on Article \'Daya Ram Ghimire\' has been sav', '2024-05-07 12:36:57', 1, 4, '103.123.60.154'),
(1835, 'Changes on Article \'Daya Ram Ghimire\' has been sav', '2024-05-07 12:40:15', 1, 4, '103.123.60.154'),
(1836, 'Changes on Article \'Our Team Members\' has been sav', '2024-05-07 12:49:11', 1, 4, '103.123.60.154'),
(1837, 'Slideshow [2024-2026 MVDGN TEAM ]Data has been add', '2024-05-07 12:53:32', 1, 3, '103.123.60.154'),
(1838, 'Slideshow [MVDGN 2024]Data has been added successf', '2024-05-07 12:55:23', 1, 3, '103.123.60.154'),
(1839, 'Sub Gallery Image  [gallery1]Data has been deleted', '2024-05-07 12:57:23', 1, 6, '103.123.60.154'),
(1840, 'Sub Gallery Image  [gallery16]Data has been delete', '2024-05-07 12:57:27', 1, 6, '103.123.60.154'),
(1841, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:27', 1, 6, '103.123.60.154'),
(1842, 'Sub Gallery Image  [gallery15]Data has been delete', '2024-05-07 12:57:30', 1, 6, '103.123.60.154'),
(1843, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:30', 1, 6, '103.123.60.154'),
(1844, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:30', 1, 6, '103.123.60.154'),
(1845, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:34', 1, 6, '103.123.60.154'),
(1846, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:34', 1, 6, '103.123.60.154'),
(1847, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:34', 1, 6, '103.123.60.154'),
(1848, 'Sub Gallery Image  [gallery14]Data has been delete', '2024-05-07 12:57:34', 1, 6, '103.123.60.154'),
(1849, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:37', 1, 6, '103.123.60.154'),
(1850, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:37', 1, 6, '103.123.60.154'),
(1851, 'Sub Gallery Image  [gallery13]Data has been delete', '2024-05-07 12:57:37', 1, 6, '103.123.60.154'),
(1852, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:37', 1, 6, '103.123.60.154'),
(1853, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:37', 1, 6, '103.123.60.154'),
(1854, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:41', 1, 6, '103.123.60.154'),
(1855, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:41', 1, 6, '103.123.60.154'),
(1856, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:41', 1, 6, '103.123.60.154'),
(1857, 'Sub Gallery Image  [gallery12]Data has been delete', '2024-05-07 12:57:41', 1, 6, '103.123.60.154'),
(1858, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:41', 1, 6, '103.123.60.154'),
(1859, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:41', 1, 6, '103.123.60.154'),
(1860, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:44', 1, 6, '103.123.60.154'),
(1861, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:44', 1, 6, '103.123.60.154'),
(1862, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:44', 1, 6, '103.123.60.154'),
(1863, 'Sub Gallery Image  [gallery11]Data has been delete', '2024-05-07 12:57:44', 1, 6, '103.123.60.154'),
(1864, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:44', 1, 6, '103.123.60.154'),
(1865, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:44', 1, 6, '103.123.60.154'),
(1866, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:44', 1, 6, '103.123.60.154'),
(1867, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:47', 1, 6, '103.123.60.154'),
(1868, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:47', 1, 6, '103.123.60.154'),
(1869, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:47', 1, 6, '103.123.60.154'),
(1870, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:47', 1, 6, '103.123.60.154'),
(1871, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:47', 1, 6, '103.123.60.154'),
(1872, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:47', 1, 6, '103.123.60.154'),
(1873, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:47', 1, 6, '103.123.60.154'),
(1874, 'Sub Gallery Image  [gallery10]Data has been delete', '2024-05-07 12:57:47', 1, 6, '103.123.60.154'),
(1875, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:51', 1, 6, '103.123.60.154'),
(1876, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:51', 1, 6, '103.123.60.154'),
(1877, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:51', 1, 6, '103.123.60.154'),
(1878, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:51', 1, 6, '103.123.60.154'),
(1879, 'Sub Gallery Image  [gallery9]Data has been deleted', '2024-05-07 12:57:51', 1, 6, '103.123.60.154'),
(1880, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:51', 1, 6, '103.123.60.154'),
(1881, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:51', 1, 6, '103.123.60.154'),
(1882, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:51', 1, 6, '103.123.60.154'),
(1883, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:51', 1, 6, '103.123.60.154'),
(1884, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:54', 1, 6, '103.123.60.154'),
(1885, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:54', 1, 6, '103.123.60.154'),
(1886, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:54', 1, 6, '103.123.60.154'),
(1887, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:54', 1, 6, '103.123.60.154'),
(1888, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:54', 1, 6, '103.123.60.154'),
(1889, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:54', 1, 6, '103.123.60.154'),
(1890, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:54', 1, 6, '103.123.60.154'),
(1891, 'Sub Gallery Image  [gallery8]Data has been deleted', '2024-05-07 12:57:54', 1, 6, '103.123.60.154'),
(1892, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:54', 1, 6, '103.123.60.154'),
(1893, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:54', 1, 6, '103.123.60.154'),
(1894, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:59', 1, 6, '103.123.60.154'),
(1895, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:59', 1, 6, '103.123.60.154'),
(1896, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:59', 1, 6, '103.123.60.154'),
(1897, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:59', 1, 6, '103.123.60.154'),
(1898, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:59', 1, 6, '103.123.60.154'),
(1899, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:59', 1, 6, '103.123.60.154'),
(1900, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:59', 1, 6, '103.123.60.154'),
(1901, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:59', 1, 6, '103.123.60.154'),
(1902, 'Sub Gallery Image  [gallery7]Data has been deleted', '2024-05-07 12:57:59', 1, 6, '103.123.60.154'),
(1903, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:59', 1, 6, '103.123.60.154'),
(1904, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:57:59', 1, 6, '103.123.60.154'),
(1905, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:02', 1, 6, '103.123.60.154'),
(1906, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:02', 1, 6, '103.123.60.154'),
(1907, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:02', 1, 6, '103.123.60.154'),
(1908, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:02', 1, 6, '103.123.60.154'),
(1909, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:02', 1, 6, '103.123.60.154'),
(1910, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:02', 1, 6, '103.123.60.154'),
(1911, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:02', 1, 6, '103.123.60.154'),
(1912, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:02', 1, 6, '103.123.60.154'),
(1913, 'Sub Gallery Image  [gallery6]Data has been deleted', '2024-05-07 12:58:02', 1, 6, '103.123.60.154'),
(1914, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:02', 1, 6, '103.123.60.154'),
(1915, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:02', 1, 6, '103.123.60.154'),
(1916, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:02', 1, 6, '103.123.60.154'),
(1917, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:06', 1, 6, '103.123.60.154'),
(1918, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:06', 1, 6, '103.123.60.154'),
(1919, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:06', 1, 6, '103.123.60.154'),
(1920, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:06', 1, 6, '103.123.60.154'),
(1921, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:06', 1, 6, '103.123.60.154'),
(1922, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:06', 1, 6, '103.123.60.154'),
(1923, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:06', 1, 6, '103.123.60.154'),
(1924, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:06', 1, 6, '103.123.60.154'),
(1925, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:06', 1, 6, '103.123.60.154'),
(1926, 'Sub Gallery Image  [gallery5]Data has been deleted', '2024-05-07 12:58:06', 1, 6, '103.123.60.154'),
(1927, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:06', 1, 6, '103.123.60.154'),
(1928, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:06', 1, 6, '103.123.60.154'),
(1929, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:06', 1, 6, '103.123.60.154'),
(1930, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:10', 1, 6, '103.123.60.154'),
(1931, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:10', 1, 6, '103.123.60.154'),
(1932, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:10', 1, 6, '103.123.60.154'),
(1933, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:10', 1, 6, '103.123.60.154'),
(1934, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:10', 1, 6, '103.123.60.154'),
(1935, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:10', 1, 6, '103.123.60.154'),
(1936, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:10', 1, 6, '103.123.60.154'),
(1937, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:10', 1, 6, '103.123.60.154'),
(1938, 'Sub Gallery Image  [gallery4]Data has been deleted', '2024-05-07 12:58:10', 1, 6, '103.123.60.154'),
(1939, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:10', 1, 6, '103.123.60.154'),
(1940, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:10', 1, 6, '103.123.60.154'),
(1941, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:10', 1, 6, '103.123.60.154'),
(1942, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:10', 1, 6, '103.123.60.154'),
(1943, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:10', 1, 6, '103.123.60.154'),
(1944, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:13', 1, 6, '103.123.60.154'),
(1945, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:13', 1, 6, '103.123.60.154'),
(1946, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:13', 1, 6, '103.123.60.154'),
(1947, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:13', 1, 6, '103.123.60.154'),
(1948, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:13', 1, 6, '103.123.60.154'),
(1949, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:13', 1, 6, '103.123.60.154'),
(1950, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:13', 1, 6, '103.123.60.154'),
(1951, 'Sub Gallery Image  [gallery3]Data has been deleted', '2024-05-07 12:58:13', 1, 6, '103.123.60.154'),
(1952, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:13', 1, 6, '103.123.60.154'),
(1953, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:13', 1, 6, '103.123.60.154'),
(1954, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:13', 1, 6, '103.123.60.154'),
(1955, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:13', 1, 6, '103.123.60.154'),
(1956, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:13', 1, 6, '103.123.60.154'),
(1957, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:13', 1, 6, '103.123.60.154'),
(1958, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:13', 1, 6, '103.123.60.154'),
(1959, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:16', 1, 6, '103.123.60.154'),
(1960, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:16', 1, 6, '103.123.60.154'),
(1961, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:16', 1, 6, '103.123.60.154'),
(1962, 'Sub Gallery Image  [gallery2]Data has been deleted', '2024-05-07 12:58:16', 1, 6, '103.123.60.154'),
(1963, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:16', 1, 6, '103.123.60.154'),
(1964, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:16', 1, 6, '103.123.60.154'),
(1965, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:16', 1, 6, '103.123.60.154'),
(1966, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:16', 1, 6, '103.123.60.154'),
(1967, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:16', 1, 6, '103.123.60.154'),
(1968, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:16', 1, 6, '103.123.60.154'),
(1969, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:16', 1, 6, '103.123.60.154');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1970, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:16', 1, 6, '103.123.60.154'),
(1971, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:16', 1, 6, '103.123.60.154'),
(1972, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:16', 1, 6, '103.123.60.154'),
(1973, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:16', 1, 6, '103.123.60.154'),
(1974, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:16', 1, 6, '103.123.60.154'),
(1975, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:19', 1, 6, '103.123.60.154'),
(1976, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:19', 1, 6, '103.123.60.154'),
(1977, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:19', 1, 6, '103.123.60.154'),
(1978, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:19', 1, 6, '103.123.60.154'),
(1979, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:19', 1, 6, '103.123.60.154'),
(1980, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:19', 1, 6, '103.123.60.154'),
(1981, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:19', 1, 6, '103.123.60.154'),
(1982, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:19', 1, 6, '103.123.60.154'),
(1983, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:19', 1, 6, '103.123.60.154'),
(1984, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:19', 1, 6, '103.123.60.154'),
(1985, 'Sub Gallery Image  [gallery17]Data has been delete', '2024-05-07 12:58:19', 1, 6, '103.123.60.154'),
(1986, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:19', 1, 6, '103.123.60.154'),
(1987, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:19', 1, 6, '103.123.60.154'),
(1988, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:19', 1, 6, '103.123.60.154'),
(1989, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:19', 1, 6, '103.123.60.154'),
(1990, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:19', 1, 6, '103.123.60.154'),
(1991, 'Sub Gallery Image  []Data has been deleted success', '2024-05-07 12:58:19', 1, 6, '103.123.60.154'),
(1992, 'Sub Gallery Image [ANJAN PUDASAINI]Data has been a', '2024-05-07 13:04:03', 1, 3, '103.123.60.154'),
(1993, 'Sub Gallery Image [DAYA RAM GHIMIRE]Data has been ', '2024-05-07 13:04:03', 1, 3, '103.123.60.154'),
(1994, 'Sub Gallery Image [JANAK SINGH]Data has been added', '2024-05-07 13:04:03', 1, 3, '103.123.60.154'),
(1995, 'Sub Gallery Image [BABITA SHRESTHA MALEKU]Data has', '2024-05-07 13:04:03', 1, 3, '103.123.60.154'),
(1996, 'Sub Gallery Image [DR SUJAN]Data has been added su', '2024-05-07 13:04:03', 1, 3, '103.123.60.154'),
(1997, 'Sub Gallery Image [SANGIT SAGAR BURJA]Data has bee', '2024-05-07 13:04:03', 1, 3, '103.123.60.154'),
(1998, 'Sub Gallery Image [SURENDRA BASEL]Data has been ad', '2024-05-07 13:04:03', 1, 3, '103.123.60.154'),
(1999, 'Sub Gallery Image [CHATRA BDR SHRESTHA KAJISH]Data', '2024-05-07 13:04:03', 1, 3, '103.123.60.154'),
(2000, 'Sub Gallery Image [RAJ KUMAR DARJI]Data has been a', '2024-05-07 13:04:03', 1, 3, '103.123.60.154'),
(2001, 'Sub Gallery Image [DEVENDRA KUNWAR]Data has been a', '2024-05-07 13:04:03', 1, 3, '103.123.60.154'),
(2002, 'Sub Gallery Image [KHAMESH SHRESTHA]Data has been ', '2024-05-07 13:04:03', 1, 3, '103.123.60.154'),
(2003, 'Sub Gallery Image [JAY DATTA BHATTA \'JAYRAJ\']Data ', '2024-05-07 13:04:03', 1, 3, '103.123.60.154'),
(2004, 'Sub Gallery Image [RAJU SHRESTHA]Data has been add', '2024-05-07 13:04:03', 1, 3, '103.123.60.154'),
(2005, 'Sub Gallery Image [SHISHIR BUDHATHOKI ]Data has be', '2024-05-07 13:04:03', 1, 3, '103.123.60.154'),
(2006, 'Sub Gallery Image [PRABIN THAPA]Data has been adde', '2024-05-07 13:04:03', 1, 3, '103.123.60.154'),
(2007, 'Gallery Image [DAYA RAM GHIMIRE ] Edit Successfull', '2024-05-07 13:06:40', 1, 4, '103.123.60.154'),
(2008, 'Events [?????? ????? ??????? ???????? ?????? ?????', '2024-05-07 13:11:08', 1, 3, '103.123.60.154'),
(2009, 'Events [?????? ????? ??????? ???????? ?????? ?????', '2024-05-07 13:12:46', 1, 4, '103.123.60.154'),
(2010, 'Events [?????? ????? ??????? ???????? ?????? ?????', '2024-05-07 13:16:29', 1, 4, '103.123.60.154'),
(2011, 'Events [?????? ????? ??????? ???????? ?????? ?????', '2024-05-07 13:18:21', 1, 4, '103.123.60.154'),
(2012, 'Changes on Config \'Music Video Directors Guild of ', '2024-05-07 13:24:03', 1, 4, '103.123.60.154'),
(2013, 'Gallery [??????? ????? ???????? ??????? ???????? ?', '2024-05-07 13:28:03', 1, 3, '103.123.60.154'),
(2014, 'Sub Gallery Image [01]Data has been added successf', '2024-05-07 13:29:57', 1, 3, '103.123.60.154'),
(2015, 'Sub Gallery Image [02]Data has been added successf', '2024-05-07 13:29:57', 1, 3, '103.123.60.154'),
(2016, 'Login: Site Admin  logged in.', '2024-05-13 20:05:08', 1, 1, '103.190.40.93'),
(2017, 'Changes on Article \'Our Team Members\' has been sav', '2024-05-13 20:16:29', 1, 4, '103.190.40.93'),
(2018, 'Article \'Chatra Bdr Shrestha (Kajish)\' has been ad', '2024-05-13 20:20:08', 1, 3, '103.190.40.93'),
(2019, 'Article \'Anjan Sharma\' has been added successfully', '2024-05-13 20:25:40', 1, 3, '103.190.40.93'),
(2020, 'Changes on Article \'Our Team Members\' has been sav', '2024-05-13 20:37:43', 1, 4, '103.190.40.93'),
(2021, 'Login: Site Admin  logged in.', '2024-05-13 21:26:42', 1, 1, '103.190.40.93'),
(2022, 'Article \'Khamesh Shrestha\' has been added successf', '2024-05-13 21:29:28', 1, 3, '103.190.40.93'),
(2023, 'Article \'Jay Raj Bhatta \' has been added successfu', '2024-05-13 21:29:49', 1, 3, '103.190.40.93'),
(2024, 'Article \'Raju Shrestha\' has been added successfull', '2024-05-13 21:30:18', 1, 3, '103.190.40.93'),
(2025, 'Article \'Surendra Basel \' has been added successfu', '2024-05-13 21:30:31', 1, 3, '103.190.40.93'),
(2026, 'Article \'Raj Kumar Darji\' has been added successfu', '2024-05-13 21:33:37', 1, 3, '103.190.40.93'),
(2027, 'Article \'Rudra Bahadur Budhathoki (shisir)\' has be', '2024-05-13 21:34:42', 1, 3, '103.190.40.93'),
(2028, 'Article \'Sangit Sagar Burja\' has been added succes', '2024-05-13 21:35:24', 1, 3, '103.190.40.93'),
(2029, 'Changes on Article \'Our Team Members\' has been sav', '2024-05-13 21:35:39', 1, 4, '103.190.40.93'),
(2030, 'Login: Site Admin  logged in.', '2024-05-17 11:42:25', 1, 1, '27.34.65.199'),
(2031, 'Login: Site Admin  logged in.', '2024-09-27 12:12:58', 1, 1, '103.10.28.130'),
(2032, 'Changes on Config \'Music Video Directors Guild of ', '2024-09-27 12:15:57', 1, 4, '103.10.28.130'),
(2033, 'Changes on Config \'Music Video Directors Guild of ', '2024-09-27 12:16:18', 1, 4, '103.10.28.130'),
(2034, 'Changes on Config \'YMBA (Young Men\'s Buddhist Asso', '2024-09-27 12:22:28', 1, 4, '103.10.28.130'),
(2035, 'User [Site Admin  ] Edit Successfully', '2024-09-27 12:25:44', 1, 4, '103.10.28.130'),
(2036, 'Login: Site Admin  logged in.', '2024-09-27 12:25:50', 1, 1, '103.10.28.130'),
(2037, 'Menu  [HOME]Data has been deleted successfully.', '2024-09-27 12:25:59', 1, 6, '103.10.28.130'),
(2038, 'Menu [About YMBA] CreatedData has been added succe', '2024-09-27 12:26:45', 1, 3, '103.10.28.130'),
(2039, 'Changes on Article \'About YMBA\' has been saved suc', '2024-09-27 12:35:55', 1, 4, '103.10.28.130'),
(2040, 'Menu [About YMBA] Edit Successfully', '2024-09-27 12:36:07', 1, 4, '103.10.28.130'),
(2041, 'Menu [ABOUT US] Edit Successfully', '2024-09-27 12:36:37', 1, 4, '103.10.28.130'),
(2042, 'Changes on Article \'About YMBA\' has been saved suc', '2024-09-27 12:36:50', 1, 4, '103.10.28.130'),
(2043, 'Changes on Article \'About YMBA\' has been saved suc', '2024-09-27 12:37:07', 1, 4, '103.10.28.130'),
(2044, 'Changes on Config \'YMBA (Young Men\'s Buddhist Asso', '2024-09-27 12:54:57', 1, 4, '103.10.28.130'),
(2045, 'Changes on Config \'YMBA (Young Men\'s Buddhist Asso', '2024-09-27 12:56:25', 1, 4, '103.10.28.130'),
(2046, 'Changes on Article \'Late Pabitra Bahadur Bajrachar', '2024-09-27 13:09:39', 1, 4, '103.10.28.130'),
(2047, 'Changes on Article \'Bodhi Bajra Bajracharya\' has b', '2024-09-27 13:13:11', 1, 4, '103.10.28.130'),
(2048, 'Member  [Nishan Babu Ghimire2]Data has been delete', '2024-09-27 13:13:38', 1, 6, '103.10.28.130'),
(2049, 'Changes on Article \'Late Pabitra Bahadur Bajrachar', '2024-09-27 13:14:01', 1, 4, '103.10.28.130'),
(2050, 'Changes on Article \'Bhikku Gyan Purnik Mahasthavir', '2024-09-27 13:15:39', 1, 4, '103.10.28.130'),
(2051, 'Changes on Article \'Hem Bahadur Shakya\' has been s', '2024-09-27 13:26:09', 1, 4, '103.10.28.130'),
(2052, 'Login: Site Admin  logged in.', '2024-09-27 14:48:41', 1, 1, '103.10.28.130'),
(2053, 'Changes on Article \'Late Min Bahadur Shakya\' has b', '2024-09-27 14:49:22', 1, 4, '103.10.28.130'),
(2054, 'Changes on Article \'Aananda Raj Shakya\' has been s', '2024-09-27 14:51:16', 1, 4, '103.10.28.130'),
(2055, 'Changes on Article \'Dharma Bahadur Shakya\' has bee', '2024-09-27 14:53:21', 1, 4, '103.10.28.130'),
(2056, 'Changes on Article \'Aananda Raj Shakya\' has been s', '2024-09-27 14:58:41', 1, 4, '103.10.28.130'),
(2057, 'Changes on Article \'Dharma Bahadur Shakya\' has bee', '2024-09-27 14:58:51', 1, 4, '103.10.28.130'),
(2058, 'Changes on Article \'Late Prem Bahadur Bajracharya\'', '2024-09-27 15:00:07', 1, 4, '103.10.28.130'),
(2059, 'Changes on Article \'Late Prem Bahadur Bajracharya\'', '2024-09-27 15:00:21', 1, 4, '103.10.28.130'),
(2060, 'Changes on Article \'Suchitra Man Shakya\' has been ', '2024-09-27 15:02:05', 1, 4, '103.10.28.130'),
(2061, 'Changes on Article \'Chandra Man Shakya\' has been s', '2024-09-27 15:04:48', 1, 4, '103.10.28.130'),
(2062, 'Changes on Article \'Late Pabitra Bahadur Bajrachar', '2024-09-27 15:05:20', 1, 4, '103.10.28.130'),
(2063, 'Changes on Article \'Bodhi Bajra Bajracharya\' has b', '2024-09-27 15:05:32', 1, 4, '103.10.28.130'),
(2064, 'Changes on Article \'Bhikku Gyan Purnik Mahasthavir', '2024-09-27 15:05:44', 1, 4, '103.10.28.130'),
(2065, 'Changes on Article \'Hem Bahadur Shakya\' has been s', '2024-09-27 15:05:55', 1, 4, '103.10.28.130'),
(2066, 'Changes on Article \'Late Min Bahadur Shakya\' has b', '2024-09-27 15:06:04', 1, 4, '103.10.28.130'),
(2067, 'Changes on Article \'Aananda Raj Shakya\' has been s', '2024-09-27 15:06:14', 1, 4, '103.10.28.130'),
(2068, 'Changes on Article \'Dharma Bahadur Shakya\' has bee', '2024-09-27 15:07:22', 1, 4, '103.10.28.130'),
(2069, 'Changes on Article \'Late Prem Bahadur Bajracharya\'', '2024-09-27 15:08:03', 1, 4, '103.10.28.130'),
(2070, 'Changes on Article \'Suchitra Man Shakya\' has been ', '2024-09-27 15:08:17', 1, 4, '103.10.28.130'),
(2071, 'Changes on Article \'Chandra Man Shakya\' has been s', '2024-09-27 15:08:26', 1, 4, '103.10.28.130'),
(2072, 'Changes on Article \'Ashok Man Shakya\' has been sav', '2024-09-27 15:09:25', 1, 4, '103.10.28.130'),
(2073, 'Changes on Article \'Rajesh Shakya\' has been saved ', '2024-09-27 15:12:09', 1, 4, '103.10.28.130'),
(2074, 'Changes on Article \'Sanu Raja Shakya\' has been sav', '2024-09-27 15:13:12', 1, 4, '103.10.28.130'),
(2075, 'Changes on Article \'Hera Ratna Shakya\' has been sa', '2024-09-27 15:20:31', 1, 4, '103.10.28.130'),
(2076, 'Changes on Article \'Surendra Shakya\' has been save', '2024-09-27 15:27:37', 1, 4, '103.10.28.130'),
(2077, 'Member  [Chatra Bdr Shrestha (Kajish)]Data has bee', '2024-09-27 15:27:48', 1, 6, '103.10.28.130'),
(2078, 'Member  [Sangit Sagar Burja]Data has been deleted ', '2024-09-27 15:27:51', 1, 6, '103.10.28.130'),
(2079, 'Member  []Data has been deleted successfully.', '2024-09-27 15:27:51', 1, 6, '103.10.28.130'),
(2080, 'Member  []Data has been deleted successfully.', '2024-09-27 15:27:53', 1, 6, '103.10.28.130'),
(2081, 'Member  []Data has been deleted successfully.', '2024-09-27 15:27:53', 1, 6, '103.10.28.130'),
(2082, 'Member  [Rudra Bahadur Budhathoki (shisir)]Data ha', '2024-09-27 15:27:53', 1, 6, '103.10.28.130'),
(2083, 'Member  []Data has been deleted successfully.', '2024-09-27 15:27:58', 1, 6, '103.10.28.130'),
(2084, 'Member  []Data has been deleted successfully.', '2024-09-27 15:27:58', 1, 6, '103.10.28.130'),
(2085, 'Member  [Raj Kumar Darji]Data has been deleted suc', '2024-09-27 15:27:58', 1, 6, '103.10.28.130'),
(2086, 'Member  []Data has been deleted successfully.', '2024-09-27 15:27:58', 1, 6, '103.10.28.130'),
(2087, 'Member  []Data has been deleted successfully.', '2024-09-27 15:28:01', 1, 6, '103.10.28.130'),
(2088, 'Member  []Data has been deleted successfully.', '2024-09-27 15:28:01', 1, 6, '103.10.28.130'),
(2089, 'Member  [Surendra Basel ]Data has been deleted suc', '2024-09-27 15:28:01', 1, 6, '103.10.28.130'),
(2090, 'Member  []Data has been deleted successfully.', '2024-09-27 15:28:01', 1, 6, '103.10.28.130'),
(2091, 'Member  []Data has been deleted successfully.', '2024-09-27 15:28:01', 1, 6, '103.10.28.130'),
(2092, 'Member  [Jay Raj Bhatta ]Data has been deleted suc', '2024-09-27 15:28:12', 1, 6, '103.10.28.130'),
(2093, 'Member  []Data has been deleted successfully.', '2024-09-27 15:28:16', 1, 6, '103.10.28.130'),
(2094, 'Member  [Raju Shrestha]Data has been deleted succe', '2024-09-27 15:28:16', 1, 6, '103.10.28.130'),
(2095, 'Member  []Data has been deleted successfully.', '2024-09-27 15:28:18', 1, 6, '103.10.28.130'),
(2096, 'Member  []Data has been deleted successfully.', '2024-09-27 15:28:18', 1, 6, '103.10.28.130'),
(2097, 'Member  [Khamesh Shrestha]Data has been deleted su', '2024-09-27 15:28:18', 1, 6, '103.10.28.130'),
(2098, 'Member  []Data has been deleted successfully.', '2024-09-27 15:28:21', 1, 6, '103.10.28.130'),
(2099, 'Member  []Data has been deleted successfully.', '2024-09-27 15:28:21', 1, 6, '103.10.28.130'),
(2100, 'Member  []Data has been deleted successfully.', '2024-09-27 15:28:21', 1, 6, '103.10.28.130'),
(2101, 'Member  [Anjan Sharma]Data has been deleted succes', '2024-09-27 15:28:21', 1, 6, '103.10.28.130'),
(2102, 'Changes on Article \'Shova Shakya\' has been saved s', '2024-09-27 15:29:25', 1, 4, '103.10.28.130'),
(2103, 'Changes on Article \'YMBA Founders\' has been saved ', '2024-09-27 15:32:42', 1, 4, '103.10.28.130'),
(2104, 'Menu [YMBA Founders] CreatedData has been added su', '2024-09-27 15:32:55', 1, 3, '103.10.28.130'),
(2105, 'Changes on Article \'YMBA Founders\' has been saved ', '2024-09-27 15:33:20', 1, 4, '103.10.28.130'),
(2106, 'Article \'YMBA Board\' has been added successfully.', '2024-09-27 15:35:36', 1, 3, '103.10.28.130'),
(2107, 'Menu [YMBA Board] CreatedData has been added succe', '2024-09-27 15:35:47', 1, 3, '103.10.28.130'),
(2108, 'Menu [EVENTS] Edit Successfully', '2024-09-27 15:56:36', 1, 4, '103.10.28.130'),
(2109, 'Changes on Article \'Our Team Members\' has been sav', '2024-09-27 16:04:52', 1, 4, '103.10.28.130'),
(2110, 'Changes on Article \'Our Team Members\' has been sav', '2024-09-27 16:05:26', 1, 4, '103.10.28.130'),
(2111, 'Changes on Article \'Club 25\' has been saved succes', '2024-09-27 16:12:14', 1, 4, '103.10.28.130'),
(2112, 'Menu [Club 25] CreatedData has been added successf', '2024-09-27 16:12:38', 1, 3, '103.10.28.130'),
(2113, 'Changes on Article \'Club 25\' has been saved succes', '2024-09-27 16:19:28', 1, 4, '103.10.28.130'),
(2114, 'Changes on Article \'Club 25\' has been saved succes', '2024-09-27 16:35:51', 1, 4, '103.10.28.130'),
(2115, 'Changes on Article \'Club 25\' has been saved succes', '2024-09-27 16:48:47', 1, 4, '103.10.28.130'),
(2116, 'Changes on Article \'Club 25\' has been saved succes', '2024-09-27 16:50:27', 1, 4, '103.10.28.130'),
(2117, 'Changes on Article \'Club 25\' has been saved succes', '2024-09-27 17:00:51', 1, 4, '103.10.28.130'),
(2118, 'Changes on Article \'Club 25\' has been saved succes', '2024-09-27 17:02:21', 1, 4, '103.10.28.130'),
(2119, 'Menu [Sub-Committee] Edit Successfully', '2024-09-27 17:03:53', 1, 4, '103.10.28.130'),
(2120, 'Menu [SUB-COMMITTEE] Edit Successfully', '2024-09-27 17:04:10', 1, 4, '103.10.28.130'),
(2121, 'Article \'SUB - COMMITTEE\' has been added successfu', '2024-09-27 17:10:17', 1, 3, '103.10.28.130'),
(2122, 'Menu [SUB-COMMITTEE] Edit Successfully', '2024-09-27 17:10:32', 1, 4, '103.10.28.130'),
(2123, 'Changes on Article \'SUB - COMMITTEE\' has been save', '2024-09-27 17:11:50', 1, 4, '103.10.28.130'),
(2124, 'Changes on Article \'SUB - COMMITTEE\' has been save', '2024-09-27 17:14:52', 1, 4, '103.10.28.130'),
(2125, 'Article \'DHARMA\' has been added successfully.', '2024-09-27 17:19:46', 1, 3, '103.10.28.130'),
(2126, 'Changes on Article \'DHARMA\' has been saved success', '2024-09-27 17:21:07', 1, 4, '103.10.28.130'),
(2127, 'Changes on Article \'SUB - COMMITTEE\' has been save', '2024-09-27 17:21:27', 1, 4, '103.10.28.130'),
(2128, 'Changes on Article \'DHARMA\' has been saved success', '2024-09-27 17:25:15', 1, 4, '103.10.28.130'),
(2129, 'Changes on Article \'SUB - COMMITTEE\' has been save', '2024-09-27 17:25:55', 1, 4, '103.10.28.130'),
(2130, 'Article \'MEDITATION\' has been added successfully.', '2024-09-27 17:31:56', 1, 3, '103.10.28.130'),
(2131, 'Changes on Article \'SUB - COMMITTEE\' has been save', '2024-09-27 17:33:30', 1, 4, '103.10.28.130'),
(2132, 'Login: Site Admin  logged in.', '2024-09-27 17:55:28', 1, 1, '103.10.28.130'),
(2133, 'Menu [Club 25 Members] Edit Successfully', '2024-09-27 17:55:38', 1, 4, '103.10.28.130'),
(2134, 'Login: Site Admin  logged in.', '2024-09-30 12:26:16', 1, 1, '103.10.28.194'),
(2135, 'Article \'Executive Members\' has been added success', '2024-09-30 12:33:57', 1, 3, '103.10.28.194'),
(2136, 'Menu [28th Executive Members] CreatedData has been', '2024-09-30 12:34:33', 1, 3, '103.10.28.194'),
(2137, 'Events [BHIKSHYATAN - YASODHARA BHIKCHHUNI BIHAR] ', '2024-09-30 12:52:42', 1, 4, '103.10.28.194'),
(2138, 'Changes on Config \'YMBA (Young Men\'s Buddhist Asso', '2024-09-30 12:58:13', 1, 4, '103.10.28.194'),
(2139, 'Changes on Config \'YMBA (Young Men\'s Buddhist Asso', '2024-09-30 13:00:21', 1, 4, '103.10.28.194'),
(2140, 'Changes on Config \'YMBA (Young Men\'s Buddhist Asso', '2024-09-30 13:03:59', 1, 4, '103.10.28.194'),
(2141, 'Slideshow [Welcoming New Executive Board Members] ', '2024-09-30 13:24:00', 1, 4, '103.10.28.194'),
(2142, 'Slideshow [Dhamma Talk] Edit Successfully', '2024-09-30 13:25:23', 1, 4, '103.10.28.194'),
(2143, 'Login: Site Admin  logged in.', '2024-09-30 14:46:33', 1, 1, '103.10.28.194'),
(2144, 'SocialNetworking [Facebook] Edit Successfully', '2024-09-30 14:46:43', 1, 4, '103.10.28.194'),
(2145, 'Slideshow [Vihar Visit] Edit Successfully', '2024-09-30 14:48:20', 1, 4, '103.10.28.194'),
(2146, 'Article \'Sanskritik\' has been added successfully.', '2024-09-30 14:57:55', 1, 3, '103.10.28.194'),
(2147, 'Changes on Article \'Sanskritik\' has been saved suc', '2024-09-30 14:59:59', 1, 4, '103.10.28.194'),
(2148, 'Changes on Article \'SUB - COMMITTEE\' has been save', '2024-09-30 15:01:33', 1, 4, '103.10.28.194'),
(2149, 'Article \'YMBA CLUB 25\' has been added successfully', '2024-09-30 15:22:01', 1, 3, '103.10.28.194'),
(2150, 'Changes on Article \'SUB - COMMITTEE\' has been save', '2024-09-30 15:22:38', 1, 4, '103.10.28.194'),
(2151, 'Changes on Article \'SUB - COMMITTEE\' has been save', '2024-09-30 15:23:06', 1, 4, '103.10.28.194'),
(2152, 'Slideshow [Distribution] Edit Successfully', '2024-09-30 15:25:09', 1, 4, '103.10.28.194'),
(2153, 'Gallery Image [New Executive Board Members of YBM ', '2024-09-30 15:29:18', 1, 4, '103.10.28.194'),
(2154, 'Sub Gallery Image  [First AGM]Data has been delete', '2024-09-30 15:29:30', 1, 6, '103.10.28.194'),
(2155, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:32', 1, 6, '103.10.28.194'),
(2156, 'Sub Gallery Image  [First AGM]Data has been delete', '2024-09-30 15:29:32', 1, 6, '103.10.28.194'),
(2157, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:35', 1, 6, '103.10.28.194'),
(2158, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:35', 1, 6, '103.10.28.194'),
(2159, 'Sub Gallery Image  [First AGM]Data has been delete', '2024-09-30 15:29:35', 1, 6, '103.10.28.194'),
(2160, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:37', 1, 6, '103.10.28.194'),
(2161, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:37', 1, 6, '103.10.28.194'),
(2162, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:37', 1, 6, '103.10.28.194'),
(2163, 'Sub Gallery Image  [First AGM]Data has been delete', '2024-09-30 15:29:37', 1, 6, '103.10.28.194'),
(2164, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:40', 1, 6, '103.10.28.194'),
(2165, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:40', 1, 6, '103.10.28.194'),
(2166, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:40', 1, 6, '103.10.28.194'),
(2167, 'Sub Gallery Image  [First AGM]Data has been delete', '2024-09-30 15:29:40', 1, 6, '103.10.28.194'),
(2168, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:40', 1, 6, '103.10.28.194'),
(2169, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:42', 1, 6, '103.10.28.194'),
(2170, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:42', 1, 6, '103.10.28.194'),
(2171, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:42', 1, 6, '103.10.28.194'),
(2172, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:42', 1, 6, '103.10.28.194'),
(2173, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:42', 1, 6, '103.10.28.194'),
(2174, 'Sub Gallery Image  [First AGM]Data has been delete', '2024-09-30 15:29:42', 1, 6, '103.10.28.194'),
(2175, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:45', 1, 6, '103.10.28.194'),
(2176, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:45', 1, 6, '103.10.28.194'),
(2177, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:45', 1, 6, '103.10.28.194'),
(2178, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:45', 1, 6, '103.10.28.194'),
(2179, 'Sub Gallery Image  [First AGM]Data has been delete', '2024-09-30 15:29:45', 1, 6, '103.10.28.194'),
(2180, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:45', 1, 6, '103.10.28.194'),
(2181, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:45', 1, 6, '103.10.28.194'),
(2182, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:47', 1, 6, '103.10.28.194'),
(2183, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:47', 1, 6, '103.10.28.194'),
(2184, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:47', 1, 6, '103.10.28.194'),
(2185, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:47', 1, 6, '103.10.28.194'),
(2186, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:47', 1, 6, '103.10.28.194'),
(2187, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:47', 1, 6, '103.10.28.194'),
(2188, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:47', 1, 6, '103.10.28.194'),
(2189, 'Sub Gallery Image  [First AGM]Data has been delete', '2024-09-30 15:29:48', 1, 6, '103.10.28.194'),
(2190, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:50', 1, 6, '103.10.28.194'),
(2191, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:50', 1, 6, '103.10.28.194'),
(2192, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:50', 1, 6, '103.10.28.194'),
(2193, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:50', 1, 6, '103.10.28.194'),
(2194, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:50', 1, 6, '103.10.28.194'),
(2195, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:50', 1, 6, '103.10.28.194'),
(2196, 'Sub Gallery Image  [First AGM]Data has been delete', '2024-09-30 15:29:50', 1, 6, '103.10.28.194'),
(2197, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:50', 1, 6, '103.10.28.194'),
(2198, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:50', 1, 6, '103.10.28.194'),
(2199, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:52', 1, 6, '103.10.28.194'),
(2200, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:52', 1, 6, '103.10.28.194'),
(2201, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:52', 1, 6, '103.10.28.194'),
(2202, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:52', 1, 6, '103.10.28.194'),
(2203, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:52', 1, 6, '103.10.28.194'),
(2204, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:52', 1, 6, '103.10.28.194'),
(2205, 'Sub Gallery Image  [First AGM]Data has been delete', '2024-09-30 15:29:52', 1, 6, '103.10.28.194'),
(2206, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:52', 1, 6, '103.10.28.194'),
(2207, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:52', 1, 6, '103.10.28.194'),
(2208, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:52', 1, 6, '103.10.28.194'),
(2209, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:54', 1, 6, '103.10.28.194'),
(2210, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:54', 1, 6, '103.10.28.194'),
(2211, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:54', 1, 6, '103.10.28.194'),
(2212, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:54', 1, 6, '103.10.28.194'),
(2213, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:54', 1, 6, '103.10.28.194'),
(2214, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:54', 1, 6, '103.10.28.194'),
(2215, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:54', 1, 6, '103.10.28.194'),
(2216, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:54', 1, 6, '103.10.28.194'),
(2217, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:54', 1, 6, '103.10.28.194'),
(2218, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:54', 1, 6, '103.10.28.194'),
(2219, 'Sub Gallery Image  [First AGM]Data has been delete', '2024-09-30 15:29:54', 1, 6, '103.10.28.194'),
(2220, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:58', 1, 6, '103.10.28.194'),
(2221, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:58', 1, 6, '103.10.28.194'),
(2222, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:58', 1, 6, '103.10.28.194'),
(2223, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:58', 1, 6, '103.10.28.194'),
(2224, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:58', 1, 6, '103.10.28.194'),
(2225, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:58', 1, 6, '103.10.28.194'),
(2226, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:58', 1, 6, '103.10.28.194'),
(2227, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:58', 1, 6, '103.10.28.194'),
(2228, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:58', 1, 6, '103.10.28.194'),
(2229, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:58', 1, 6, '103.10.28.194'),
(2230, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:29:58', 1, 6, '103.10.28.194'),
(2231, 'Sub Gallery Image  [First AGM]Data has been delete', '2024-09-30 15:29:58', 1, 6, '103.10.28.194'),
(2232, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:01', 1, 6, '103.10.28.194'),
(2233, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:01', 1, 6, '103.10.28.194'),
(2234, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:01', 1, 6, '103.10.28.194'),
(2235, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:01', 1, 6, '103.10.28.194'),
(2236, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:01', 1, 6, '103.10.28.194'),
(2237, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:01', 1, 6, '103.10.28.194'),
(2238, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:01', 1, 6, '103.10.28.194'),
(2239, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:01', 1, 6, '103.10.28.194'),
(2240, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:01', 1, 6, '103.10.28.194'),
(2241, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:01', 1, 6, '103.10.28.194'),
(2242, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:01', 1, 6, '103.10.28.194'),
(2243, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:01', 1, 6, '103.10.28.194'),
(2244, 'Sub Gallery Image  [First AGM]Data has been delete', '2024-09-30 15:30:01', 1, 6, '103.10.28.194'),
(2245, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:04', 1, 6, '103.10.28.194'),
(2246, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:04', 1, 6, '103.10.28.194'),
(2247, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:04', 1, 6, '103.10.28.194'),
(2248, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:04', 1, 6, '103.10.28.194'),
(2249, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:04', 1, 6, '103.10.28.194'),
(2250, 'Sub Gallery Image  [First AGM]Data has been delete', '2024-09-30 15:30:04', 1, 6, '103.10.28.194'),
(2251, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:04', 1, 6, '103.10.28.194'),
(2252, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:04', 1, 6, '103.10.28.194'),
(2253, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:04', 1, 6, '103.10.28.194'),
(2254, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:04', 1, 6, '103.10.28.194'),
(2255, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:04', 1, 6, '103.10.28.194'),
(2256, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:04', 1, 6, '103.10.28.194'),
(2257, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:04', 1, 6, '103.10.28.194'),
(2258, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:04', 1, 6, '103.10.28.194'),
(2259, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:06', 1, 6, '103.10.28.194'),
(2260, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:06', 1, 6, '103.10.28.194'),
(2261, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:06', 1, 6, '103.10.28.194'),
(2262, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:06', 1, 6, '103.10.28.194'),
(2263, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:06', 1, 6, '103.10.28.194'),
(2264, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:06', 1, 6, '103.10.28.194'),
(2265, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:06', 1, 6, '103.10.28.194'),
(2266, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:06', 1, 6, '103.10.28.194'),
(2267, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:06', 1, 6, '103.10.28.194'),
(2268, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:06', 1, 6, '103.10.28.194'),
(2269, 'Sub Gallery Image  [First AGM]Data has been delete', '2024-09-30 15:30:06', 1, 6, '103.10.28.194'),
(2270, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:06', 1, 6, '103.10.28.194'),
(2271, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:06', 1, 6, '103.10.28.194'),
(2272, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:06', 1, 6, '103.10.28.194'),
(2273, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:06', 1, 6, '103.10.28.194'),
(2274, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:08', 1, 6, '103.10.28.194'),
(2275, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:08', 1, 6, '103.10.28.194'),
(2276, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:08', 1, 6, '103.10.28.194'),
(2277, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:08', 1, 6, '103.10.28.194'),
(2278, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:08', 1, 6, '103.10.28.194'),
(2279, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:08', 1, 6, '103.10.28.194'),
(2280, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:08', 1, 6, '103.10.28.194'),
(2281, 'Sub Gallery Image  [First AGM]Data has been delete', '2024-09-30 15:30:08', 1, 6, '103.10.28.194'),
(2282, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:08', 1, 6, '103.10.28.194'),
(2283, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:08', 1, 6, '103.10.28.194'),
(2284, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:08', 1, 6, '103.10.28.194'),
(2285, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:08', 1, 6, '103.10.28.194'),
(2286, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:08', 1, 6, '103.10.28.194'),
(2287, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:08', 1, 6, '103.10.28.194'),
(2288, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:08', 1, 6, '103.10.28.194'),
(2289, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:30:08', 1, 6, '103.10.28.194'),
(2290, 'Sub Gallery Image [New Executive Board Members of ', '2024-09-30 15:32:15', 1, 3, '103.10.28.194'),
(2291, 'Sub Gallery Image [New Executive Board Members of ', '2024-09-30 15:32:15', 1, 3, '103.10.28.194'),
(2292, 'Sub Gallery Image [New Executive Board Members of ', '2024-09-30 15:32:15', 1, 3, '103.10.28.194'),
(2293, 'Sub Gallery Image [New Executive Board Members of ', '2024-09-30 15:32:15', 1, 3, '103.10.28.194'),
(2294, 'Gallery Image [Dhamma Talk Program] Edit Successfu', '2024-09-30 15:50:27', 1, 4, '103.10.28.194'),
(2295, 'Sub Gallery Image  [Programs]Data has been deleted', '2024-09-30 15:50:45', 1, 6, '103.10.28.194'),
(2296, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 15:50:47', 1, 6, '103.10.28.194'),
(2297, 'Sub Gallery Image  [Programs]Data has been deleted', '2024-09-30 15:50:47', 1, 6, '103.10.28.194'),
(2298, 'Sub Gallery Image [Dhamma Talk Program]Data has be', '2024-09-30 15:51:03', 1, 3, '103.10.28.194'),
(2299, 'Sub Gallery Image [Dhamma Talk Program]Data has be', '2024-09-30 15:51:03', 1, 3, '103.10.28.194'),
(2300, 'Sub Gallery Image [Dhamma Talk Program]Data has be', '2024-09-30 15:51:03', 1, 3, '103.10.28.194'),
(2301, 'Sub Gallery Image [Dhamma Talk Program]Data has be', '2024-09-30 15:51:03', 1, 3, '103.10.28.194'),
(2302, 'Sub Gallery Image [Dhamma Talk Program]Data has be', '2024-09-30 15:51:03', 1, 3, '103.10.28.194'),
(2303, 'Sub Gallery Image [Dhamma Talk Program]Data has be', '2024-09-30 15:51:03', 1, 3, '103.10.28.194'),
(2304, 'Sub Gallery Image [Dhamma Talk Program]Data has be', '2024-09-30 15:51:03', 1, 3, '103.10.28.194'),
(2305, 'Sub Gallery Image [Dhamma Talk Program]Data has be', '2024-09-30 15:51:03', 1, 3, '103.10.28.194'),
(2306, 'Gallery Image [Vishwa Shanti Vihar, Minbhawan Visi', '2024-09-30 16:03:56', 1, 4, '103.10.28.194'),
(2307, 'Sub Gallery Image  [02]Data has been deleted succe', '2024-09-30 16:04:08', 1, 6, '103.10.28.194'),
(2308, 'Sub Gallery Image  []Data has been deleted success', '2024-09-30 16:04:11', 1, 6, '103.10.28.194'),
(2309, 'Sub Gallery Image  [01]Data has been deleted succe', '2024-09-30 16:04:11', 1, 6, '103.10.28.194'),
(2310, 'Sub Gallery Image [Vishwa Shanti Vihar, Minbhawan ', '2024-09-30 16:04:23', 1, 3, '103.10.28.194'),
(2311, 'Sub Gallery Image [Vishwa Shanti Vihar, Minbhawan ', '2024-09-30 16:04:23', 1, 3, '103.10.28.194'),
(2312, 'Sub Gallery Image [Vishwa Shanti Vihar, Minbhawan ', '2024-09-30 16:04:23', 1, 3, '103.10.28.194'),
(2313, 'Sub Gallery Image [Vishwa Shanti Vihar, Minbhawan ', '2024-09-30 16:04:23', 1, 3, '103.10.28.194'),
(2314, 'Gallery Image  []Data has been deleted successfull', '2024-09-30 16:04:36', 1, 6, '103.10.28.194'),
(2315, 'Gallery Image  [AGM Program]Data has been deleted ', '2024-09-30 16:04:37', 1, 6, '103.10.28.194'),
(2316, 'Gallery Image  []Data has been deleted successfull', '2024-09-30 16:04:40', 1, 6, '103.10.28.194'),
(2317, 'Gallery Image  []Data has been deleted successfull', '2024-09-30 16:04:40', 1, 6, '103.10.28.194'),
(2318, 'Gallery Image  [Request]Data has been deleted succ', '2024-09-30 16:04:40', 1, 6, '103.10.28.194'),
(2319, 'Gallery [Homage To Tripple Gems]Data has been adde', '2024-09-30 16:23:28', 1, 3, '103.10.28.194'),
(2320, 'Sub Gallery Image [Homage To Tripple Gems]Data has', '2024-09-30 16:23:49', 1, 3, '103.10.28.194'),
(2321, 'Sub Gallery Image [Homage To Tripple Gems]Data has', '2024-09-30 16:23:49', 1, 3, '103.10.28.194'),
(2322, 'Sub Gallery Image [Homage To Tripple Gems]Data has', '2024-09-30 16:23:49', 1, 3, '103.10.28.194'),
(2323, 'Sub Gallery Image [Homage To Tripple Gems]Data has', '2024-09-30 16:23:49', 1, 3, '103.10.28.194'),
(2324, 'Sub Gallery Image [Homage To Tripple Gems]Data has', '2024-09-30 16:23:49', 1, 3, '103.10.28.194'),
(2325, 'Sub Gallery Image [Homage To Tripple Gems]Data has', '2024-09-30 16:23:49', 1, 3, '103.10.28.194'),
(2326, 'Sub Gallery Image [Homage To Tripple Gems]Data has', '2024-09-30 16:23:49', 1, 3, '103.10.28.194'),
(2327, 'Sub Gallery Image [Homage To Tripple Gems]Data has', '2024-09-30 16:23:49', 1, 3, '103.10.28.194'),
(2328, 'Article \'Club 25 Executive Board\' has been added s', '2024-09-30 16:39:43', 1, 3, '103.10.28.194'),
(2329, 'Changes on Article \'Club 25 Executive Board\' has b', '2024-09-30 16:39:53', 1, 4, '103.10.28.194'),
(2330, 'Menu [Club 25 Executive Board] Edit Successfully', '2024-09-30 16:40:27', 1, 4, '103.10.28.194'),
(2331, 'Menu  [EVENTS]Data has been deleted successfully.', '2024-09-30 16:40:35', 1, 6, '103.10.28.194'),
(2332, 'Login: Site Admin  logged in.', '2024-10-08 10:13:58', 1, 1, '103.10.28.147'),
(2333, 'Events [Saturday Dhamma Talk Program] Edit Success', '2024-10-08 10:34:40', 1, 4, '103.10.28.147'),
(2334, 'Events [Saturday Dhamma Talk Program] Edit Success', '2024-10-08 10:40:40', 1, 4, '103.10.28.147'),
(2335, 'Events [Dhamma Talk Program] Edit Successfully', '2024-10-08 10:42:28', 1, 4, '103.10.28.147'),
(2336, 'Events [Dhamma Talk Program] Edit Successfully', '2024-10-08 10:43:43', 1, 4, '103.10.28.147'),
(2337, 'Events [Dhamma Talk Program] Edit Successfully', '2024-10-08 10:45:11', 1, 4, '103.10.28.147'),
(2338, 'Events [Dhamma Talk Program] Edit Successfully', '2024-10-08 10:45:26', 1, 4, '103.10.28.147'),
(2339, 'Changes on Config \'YMBA (Young Men\'s Buddhist Asso', '2024-10-08 11:01:51', 1, 4, '103.10.28.147'),
(2340, 'Sub Gallery Image [YMBA]Data has been added succes', '2024-10-08 11:36:31', 1, 3, '103.10.28.147'),
(2341, 'Sub Gallery Image  [YMBA]Data has been deleted suc', '2024-10-08 11:37:56', 1, 6, '103.10.28.147'),
(2342, 'Sub Gallery Image [YMBA]Data has been added succes', '2024-10-08 11:38:06', 1, 3, '103.10.28.147'),
(2343, 'Sub Gallery Image  [YMBA]Data has been deleted suc', '2024-10-08 11:44:25', 1, 6, '103.10.28.147'),
(2344, 'Sub Gallery Image [YMBA]Data has been added succes', '2024-10-08 11:44:33', 1, 3, '103.10.28.147'),
(2345, 'Sub Gallery Image [YMBA]Data has been added succes', '2024-10-08 12:33:53', 1, 3, '103.10.28.147'),
(2346, 'Sub Gallery Image [YMBA]Data has been added succes', '2024-10-08 12:39:14', 1, 3, '103.10.28.147'),
(2347, 'Sub Gallery Image  [ANJAN PUDASAINI]Data has been ', '2024-10-08 12:39:24', 1, 6, '103.10.28.147'),
(2348, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:26', 1, 6, '103.10.28.147'),
(2349, 'Sub Gallery Image  [DAYA RAM GHIMIRE]Data has been', '2024-10-08 12:39:26', 1, 6, '103.10.28.147'),
(2350, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:29', 1, 6, '103.10.28.147'),
(2351, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:29', 1, 6, '103.10.28.147'),
(2352, 'Sub Gallery Image  [JANAK SINGH]Data has been dele', '2024-10-08 12:39:29', 1, 6, '103.10.28.147'),
(2353, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:32', 1, 6, '103.10.28.147'),
(2354, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:32', 1, 6, '103.10.28.147'),
(2355, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:32', 1, 6, '103.10.28.147'),
(2356, 'Sub Gallery Image  [BABITA SHRESTHA MALEKU]Data ha', '2024-10-08 12:39:32', 1, 6, '103.10.28.147'),
(2357, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:34', 1, 6, '103.10.28.147'),
(2358, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:34', 1, 6, '103.10.28.147'),
(2359, 'Sub Gallery Image  [DR SUJAN]Data has been deleted', '2024-10-08 12:39:34', 1, 6, '103.10.28.147'),
(2360, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:34', 1, 6, '103.10.28.147'),
(2361, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:34', 1, 6, '103.10.28.147'),
(2362, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:37', 1, 6, '103.10.28.147'),
(2363, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:37', 1, 6, '103.10.28.147'),
(2364, 'Sub Gallery Image  [SANGIT SAGAR BURJA]Data has be', '2024-10-08 12:39:37', 1, 6, '103.10.28.147'),
(2365, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:37', 1, 6, '103.10.28.147'),
(2366, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:37', 1, 6, '103.10.28.147'),
(2367, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:37', 1, 6, '103.10.28.147'),
(2368, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:39', 1, 6, '103.10.28.147'),
(2369, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:39', 1, 6, '103.10.28.147'),
(2370, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:39', 1, 6, '103.10.28.147'),
(2371, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:39', 1, 6, '103.10.28.147'),
(2372, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:39', 1, 6, '103.10.28.147'),
(2373, 'Sub Gallery Image  [SURENDRA BASEL]Data has been d', '2024-10-08 12:39:39', 1, 6, '103.10.28.147'),
(2374, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:39', 1, 6, '103.10.28.147'),
(2375, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:41', 1, 6, '103.10.28.147'),
(2376, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:41', 1, 6, '103.10.28.147'),
(2377, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:41', 1, 6, '103.10.28.147'),
(2378, 'Sub Gallery Image  [CHATRA BDR SHRESTHA KAJISH]Dat', '2024-10-08 12:39:41', 1, 6, '103.10.28.147'),
(2379, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:41', 1, 6, '103.10.28.147'),
(2380, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:41', 1, 6, '103.10.28.147'),
(2381, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:41', 1, 6, '103.10.28.147'),
(2382, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:41', 1, 6, '103.10.28.147'),
(2383, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:44', 1, 6, '103.10.28.147'),
(2384, 'Sub Gallery Image  [RAJ KUMAR DARJI]Data has been ', '2024-10-08 12:39:44', 1, 6, '103.10.28.147'),
(2385, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:44', 1, 6, '103.10.28.147'),
(2386, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:44', 1, 6, '103.10.28.147'),
(2387, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:44', 1, 6, '103.10.28.147'),
(2388, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:44', 1, 6, '103.10.28.147'),
(2389, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:44', 1, 6, '103.10.28.147'),
(2390, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:44', 1, 6, '103.10.28.147'),
(2391, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:44', 1, 6, '103.10.28.147'),
(2392, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:47', 1, 6, '103.10.28.147'),
(2393, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:47', 1, 6, '103.10.28.147'),
(2394, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:47', 1, 6, '103.10.28.147'),
(2395, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:47', 1, 6, '103.10.28.147'),
(2396, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:47', 1, 6, '103.10.28.147'),
(2397, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:47', 1, 6, '103.10.28.147'),
(2398, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:47', 1, 6, '103.10.28.147'),
(2399, 'Sub Gallery Image  [DEVENDRA KUNWAR]Data has been ', '2024-10-08 12:39:47', 1, 6, '103.10.28.147'),
(2400, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:47', 1, 6, '103.10.28.147'),
(2401, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:47', 1, 6, '103.10.28.147'),
(2402, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:49', 1, 6, '103.10.28.147'),
(2403, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:49', 1, 6, '103.10.28.147'),
(2404, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:49', 1, 6, '103.10.28.147'),
(2405, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:49', 1, 6, '103.10.28.147'),
(2406, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:49', 1, 6, '103.10.28.147'),
(2407, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:49', 1, 6, '103.10.28.147'),
(2408, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:49', 1, 6, '103.10.28.147'),
(2409, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:49', 1, 6, '103.10.28.147'),
(2410, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:49', 1, 6, '103.10.28.147'),
(2411, 'Sub Gallery Image  [KHAMESH SHRESTHA]Data has been', '2024-10-08 12:39:49', 1, 6, '103.10.28.147'),
(2412, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:49', 1, 6, '103.10.28.147'),
(2413, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:52', 1, 6, '103.10.28.147'),
(2414, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:52', 1, 6, '103.10.28.147'),
(2415, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:52', 1, 6, '103.10.28.147'),
(2416, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:52', 1, 6, '103.10.28.147'),
(2417, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:52', 1, 6, '103.10.28.147'),
(2418, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:52', 1, 6, '103.10.28.147'),
(2419, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:52', 1, 6, '103.10.28.147'),
(2420, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:52', 1, 6, '103.10.28.147'),
(2421, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:52', 1, 6, '103.10.28.147'),
(2422, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:52', 1, 6, '103.10.28.147'),
(2423, 'Sub Gallery Image  [JAY DATTA BHATTA \'JAYRAJ\']Data', '2024-10-08 12:39:52', 1, 6, '103.10.28.147'),
(2424, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:52', 1, 6, '103.10.28.147'),
(2425, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:54', 1, 6, '103.10.28.147'),
(2426, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:54', 1, 6, '103.10.28.147'),
(2427, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:54', 1, 6, '103.10.28.147'),
(2428, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:54', 1, 6, '103.10.28.147'),
(2429, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:54', 1, 6, '103.10.28.147'),
(2430, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:54', 1, 6, '103.10.28.147'),
(2431, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:54', 1, 6, '103.10.28.147'),
(2432, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:54', 1, 6, '103.10.28.147'),
(2433, 'Sub Gallery Image  [RAJU SHRESTHA]Data has been de', '2024-10-08 12:39:54', 1, 6, '103.10.28.147'),
(2434, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:54', 1, 6, '103.10.28.147'),
(2435, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:54', 1, 6, '103.10.28.147'),
(2436, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:54', 1, 6, '103.10.28.147'),
(2437, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:54', 1, 6, '103.10.28.147'),
(2438, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:57', 1, 6, '103.10.28.147'),
(2439, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:57', 1, 6, '103.10.28.147'),
(2440, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:57', 1, 6, '103.10.28.147'),
(2441, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:57', 1, 6, '103.10.28.147'),
(2442, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:57', 1, 6, '103.10.28.147');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(2443, 'Sub Gallery Image  [SHISHIR BUDHATHOKI ]Data has b', '2024-10-08 12:39:57', 1, 6, '103.10.28.147'),
(2444, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:57', 1, 6, '103.10.28.147'),
(2445, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:57', 1, 6, '103.10.28.147'),
(2446, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:57', 1, 6, '103.10.28.147'),
(2447, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:57', 1, 6, '103.10.28.147'),
(2448, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:57', 1, 6, '103.10.28.147'),
(2449, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:57', 1, 6, '103.10.28.147'),
(2450, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:57', 1, 6, '103.10.28.147'),
(2451, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:39:57', 1, 6, '103.10.28.147'),
(2452, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:40:00', 1, 6, '103.10.28.147'),
(2453, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:40:00', 1, 6, '103.10.28.147'),
(2454, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:40:00', 1, 6, '103.10.28.147'),
(2455, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:40:00', 1, 6, '103.10.28.147'),
(2456, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:40:00', 1, 6, '103.10.28.147'),
(2457, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:40:00', 1, 6, '103.10.28.147'),
(2458, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:40:00', 1, 6, '103.10.28.147'),
(2459, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:40:00', 1, 6, '103.10.28.147'),
(2460, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:40:00', 1, 6, '103.10.28.147'),
(2461, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:40:00', 1, 6, '103.10.28.147'),
(2462, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:40:00', 1, 6, '103.10.28.147'),
(2463, 'Sub Gallery Image  [PRABIN THAPA]Data has been del', '2024-10-08 12:40:00', 1, 6, '103.10.28.147'),
(2464, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:40:00', 1, 6, '103.10.28.147'),
(2465, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:40:00', 1, 6, '103.10.28.147'),
(2466, 'Sub Gallery Image  []Data has been deleted success', '2024-10-08 12:40:00', 1, 6, '103.10.28.147'),
(2467, 'Sub Gallery Image [YMBA]Data has been added succes', '2024-10-08 12:41:49', 1, 3, '103.10.28.147'),
(2468, 'Sub Gallery Image [YMBA]Data has been added succes', '2024-10-08 12:42:41', 1, 3, '103.10.28.147'),
(2469, 'Sub Gallery Image [YMBA]Data has been added succes', '2024-10-08 12:44:28', 1, 3, '103.10.28.147'),
(2470, 'Sub Gallery Image [YMBA]Data has been added succes', '2024-10-08 12:48:08', 1, 3, '103.10.28.147'),
(2471, 'Sub Gallery Image [YMBA]Data has been added succes', '2024-10-08 12:49:25', 1, 3, '103.10.28.147'),
(2472, 'Sub Gallery Image [YMBA]Data has been added succes', '2024-10-08 12:51:03', 1, 3, '103.10.28.147'),
(2473, 'Sub Gallery Image [YMBA]Data has been added succes', '2024-10-08 12:53:36', 1, 3, '103.10.28.147'),
(2474, 'Changes on Article \'About YMBA\' has been saved suc', '2024-10-08 13:17:49', 1, 4, '103.10.28.147'),
(2475, 'Changes on Article \'About YMBA\' has been saved suc', '2024-10-08 13:19:21', 1, 4, '103.10.28.147'),
(2476, 'Changes on Article \'YMBA Founders\' has been saved ', '2024-10-08 13:28:28', 1, 4, '103.10.28.147'),
(2477, 'Changes on Article \'YMBA Board\' has been saved suc', '2024-10-08 13:38:10', 1, 4, '103.10.28.147'),
(2478, 'Login: Site Admin  logged in.', '2024-10-08 14:44:27', 1, 1, '103.10.28.147'),
(2479, 'Changes on Article \'Club 25\' has been saved succes', '2024-10-08 14:44:39', 1, 4, '103.10.28.147'),
(2480, 'Changes on Article \'Executive Members\' has been sa', '2024-10-08 14:45:07', 1, 4, '103.10.28.147'),
(2481, 'Changes on Article \'Club 25 Executive Board\' has b', '2024-10-08 15:09:00', 1, 4, '103.10.28.147'),
(2482, 'Changes on Article \'Club 25 Executive Board\' has b', '2024-10-08 15:09:09', 1, 4, '103.10.28.147');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs_action`
--

CREATE TABLE `tbl_logs_action` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `bgcolor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` mediumtext NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `linksrc` tinytext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(1) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(1) NOT NULL DEFAULT 0,
  `banner` longtext NOT NULL,
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`id`, `category_id`, `slug`, `title`, `sub_title`, `content`, `linktype`, `linksrc`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `added_date`, `sortorder`, `homepage`, `banner`, `image`, `date`, `category`) VALUES
(61, 0, 'late-min-bahadur-shakya', 'Late Min Bahadur Shakya', '(2036 – 2042)', '', 0, '', 1, 'Late Min Bahadur Shakya', '                                        Late Min Bahadur Shakya', '                                        Late Min Bahadur Shakya', 0, '2023-07-14 16:39:48', 5, 0, 'a:1:{i:0;s:12:\"xbx2n-mb.jpg\";}', '', '', ''),
(66, 0, 'late-pabitra-bahadur-bajracharya', 'Late Pabitra Bahadur Bajracharya', '(2027 – 2028)', '', 0, '', 1, 'Late Pabitra Bahadur Bajracharya', '                                                                      Late Pabitra Bahadur Bajracharya\r\n                                                                                ', '                                                                                Late Pabitra Bahadur Bajracharya\r\n', 0, '2023-08-15 12:54:03', 1, 0, 'a:1:{i:0;s:12:\"h8Zun-pb.jpg\";}', '', '', ''),
(67, 0, 'bhikku-gyan-purnik-mahasthavir', 'Bhikku Gyan Purnik Mahasthavir', '(2029 – 2033)', '', 0, '', 1, 'Bhikku Gyan Purnik Mahasthavir', '                                        Bhikku Gyan Purnik Mahasthavir\r\n', '                                        Bhikku Gyan Purnik Mahasthavir\r\n', 0, '2023-08-20 08:34:26', 3, 0, 'a:1:{i:0;s:11:\"V25GS-b.jpg\";}', '', '', ''),
(68, 0, 'late-prem-bahadur-bajracharya', 'Late Prem Bahadur Bajracharya', '(2048 – 2050)', '', 0, '', 1, 'Late Prem Bahadur Bajracharya', '                                                                                Late Prem Bahadur Bajracharya\r\n', '                                                                                Late Prem Bahadur Bajracharya\r\n', 0, '2023-08-20 08:46:44', 8, 0, 'a:1:{i:0;s:11:\"TiF1W-1.jpg\";}', '', '', ''),
(69, 0, 'dharma-bahadur-shakya', 'Dharma Bahadur Shakya', '(2044 – 2046)', '', 0, '', 1, 'Dharma Bahadur Shakya', '                                                                                Dharma Bahadur Shakya\r\n', '                                                                                Dharma Bahadur Shakya\r\n', 0, '2023-08-20 08:58:22', 7, 0, 'a:1:{i:0;s:12:\"zjVaH-dh.jpg\";}', '', '', ''),
(70, 0, 'aananda-raj-shakya', 'Aananda Raj Shakya', '(2042 – 2044)', '', 0, '', 1, 'Aananda Raj Shakya', '                                                                                Aananda Raj Shakya', '                                                                                Aananda Raj Shakya', 0, '2023-08-20 09:11:36', 6, 0, 'a:1:{i:0;s:12:\"kPGqU-ar.jpg\";}', '', '', ''),
(71, 0, 'hem-bahadur-shakya', 'Hem Bahadur Shakya', '(2033 – 2036 & 2046 – 2048)', '', 0, '', 1, 'Hem Bahadur Shakya', '                                                               Hem Bahadur Shakya                                                         ', '                                                                                                                        Hem Bahadur Shakya', 0, '2023-08-20 09:21:55', 4, 0, 'a:1:{i:0;s:12:\"BFe4y-hb.jpg\";}', '', '', ''),
(72, 0, 'bodhi-bajra-bajracharya', 'Bodhi Bajra Bajracharya', '(2028-2029)', '', 0, '', 1, 'Bodhi Bajra Bajracharya', '                                        Bodhi Bajra Bajracharya', '                                        Bodhi Bajra Bajracharya', 0, '2023-08-20 09:35:00', 2, 0, 'a:1:{i:0;s:12:\"j9dI4-bb.jpg\";}', '', '', ''),
(73, 0, 'suchitra-man-shakya', 'Suchitra Man Shakya', '(2050-2054)', '', 0, '', 1, 'Suchitra Man Shakya', '                                        Suchitra Man Shakya\r\n', '                                        Suchitra Man Shakya\r\n', 0, '2023-08-20 09:55:02', 9, 0, 'a:1:{i:0;s:11:\"YdY22-2.jpg\";}', '', '', ''),
(74, 0, 'ashok-man-shakya', 'Ashok Man Shakya', '(2058-2060)', '', 0, '', 1, 'Ashok Man Shakya', 'Ashok Man Shakya\r\n', 'Ashok Man Shakya\r\n', 0, '2023-08-20 11:05:27', 11, 0, 'a:1:{i:0;s:11:\"0gSyP-4.jpg\";}', '', '', ''),
(75, 0, 'chandra-man-shakya', 'Chandra Man Shakya', '(2054-2058)', '', 0, '', 1, 'Chandra Man Shakya', '                                        Chandra Man Shakya\r\n', '                                        Chandra Man Shakya\r\n', 0, '2023-08-22 13:26:34', 10, 0, 'a:1:{i:0;s:11:\"ibKKY-3.jpg\";}', '', '', ''),
(76, 0, 'rajesh-shakya', 'Rajesh Shakya', '(2060-2062)', '', 0, '', 1, 'Rajesh Shakya', 'Rajesh Shakya\r\n', 'Rajesh Shakya\r\n', 0, '2023-08-23 12:48:15', 12, 0, 'a:1:{i:0;s:11:\"qygBC-5.jpg\";}', '', '', ''),
(81, 0, 'surendra-shakya', 'Surendra Shakya', '(2068-2070)', '', 0, '', 1, 'Surendra Shakya', 'Surendra Shakya\r\n', 'Surendra Shakya\r\n', 0, '2023-09-07 11:39:14', 15, 0, 'a:1:{i:0;s:11:\"9VLgM-2.jpg\";}', '', '', ''),
(82, 0, 'shova-shakya', 'Shova Shakya', '(2070-2072)', '', 0, '', 1, 'Shova Shakya', 'Shova Shakya', 'Shova Shakya', 0, '2023-09-15 17:38:02', 16, 0, 'a:1:{i:0;s:11:\"w51bz-3.jpg\";}', '', '', ''),
(79, 0, 'sanu-raja-shakya', 'Sanu Raja Shakya', '(2062-2066)', '', 0, '', 1, 'Sanu Raja Shakya', 'Sanu Raja Shakya\r\n', 'Sanu Raja Shakya\r\n', 0, '2023-08-27 12:53:23', 13, 0, 'a:1:{i:0;s:11:\"eONkw-6.jpg\";}', '', '', ''),
(80, 0, 'hera-ratna-shakya', 'Hera Ratna Shakya', '(2066-2068)', '', 0, '', 1, 'Hera Ratna Shakya', 'Hera Ratna Shakya', 'Hera Ratna Shakya', 0, '2023-08-30 17:09:59', 14, 0, 'a:1:{i:0;s:11:\"PknTu-1.jpg\";}', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `linksrc` varchar(150) NOT NULL,
  `parentOf` int(11) NOT NULL DEFAULT 0,
  `linktype` varchar(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `type` int(1) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `name`, `linksrc`, `parentOf`, `linktype`, `status`, `sortorder`, `added_date`, `type`, `icon`) VALUES
(55, 'PHOTO GALLERY', 'gallery', 0, '0', 1, 6, '2019-09-08 10:48:53', 1, ''),
(56, 'SUB-COMMITTEE', 'page/sub-committee', 0, '0', 1, 3, '2019-09-08 10:49:04', 1, ''),
(57, 'CONTACT', 'contact', 0, '0', 1, 7, '2019-09-08 10:49:25', 1, ''),
(58, 'Club 25 Executive Board', 'page/club-25-executive-board', 0, '0', 1, 5, '2019-09-08 10:54:48', 1, ''),
(63, 'ABOUT US', '#', 0, '0', 1, 1, '2020-07-01 16:47:18', 1, ''),
(64, 'MEMBERS', 'members', 0, '0', 1, 2, '2023-07-14 17:31:30', 1, ''),
(65, 'About YMBA', 'page/about-ymba', 63, '0', 1, 1, '2024-09-27 12:26:45', 1, ''),
(66, 'YMBA Founders', 'page/ymba-founders', 63, '0', 1, 2, '2024-09-27 15:32:55', 1, ''),
(67, 'YMBA Board', 'page/ymba-board', 63, '0', 1, 3, '2024-09-27 15:35:47', 1, ''),
(68, 'Club 25 Members', 'page/club-25', 63, '0', 1, 4, '2024-09-27 16:12:38', 1, ''),
(69, '28th Executive Members', 'page/executive-members', 63, '0', 1, 5, '2024-09-30 12:34:33', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modules`
--

CREATE TABLE `tbl_modules` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL DEFAULT 'dashboard',
  `mode` varchar(20) NOT NULL,
  `icon_link` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `properties` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_modules`
--

INSERT INTO `tbl_modules` (`id`, `parent_id`, `name`, `link`, `mode`, `icon_link`, `status`, `sortorder`, `added_date`, `properties`) VALUES
(1, 0, 'User Mgmt', 'user/list', 'user', 'icon-users', 1, 1, '0000-00-00', ''),
(2, 0, 'Menu Mgmt', 'menu/list', 'menu', 'icon-list', 1, 2, '0000-00-00', 'a:1:{s:5:\"level\";s:1:\"3\";}'),
(3, 0, 'Articles Mgmt', 'articles/list', 'articles', 'icon-adn', 1, 3, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:3:\"400\";s:9:\"imgheight\";s:3:\"350\";}'),
(4, 0, 'Slideshow Mgmt', 'slideshow/list', 'slideshow', 'icon-film', 1, 5, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:4:\"1263\";s:9:\"imgheight\";s:3:\"580\";}'),
(5, 0, 'Gallery Mgmt', 'gallery/list', 'gallery', 'icon-picture-o', 1, 7, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:4:\"1400\";s:9:\"imgheight\";s:3:\"500\";s:9:\"simgwidth\";s:3:\"800\";s:10:\"simgheight\";s:3:\"600\";}'),
(6, 0, 'News & Blog', 'blog/list', 'blog', 'icon-list-alt', 0, 17, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:3:\"360\";s:9:\"imgheight\";s:3:\"281\";}'),
(7, 0, 'Events Mgmt', 'events/list', 'events', 'icon-bullhorn', 1, 8, '0000-00-00', ''),
(8, 0, 'Advertisement Mgmt', 'advertisement/list', 'advertisement', 'icon-indent', 0, 4, '0000-00-00', 'a:8:{s:9:\"limgwidth\";s:3:\"100\";s:10:\"limgheight\";s:3:\"200\";s:9:\"timgwidth\";s:3:\"300\";s:10:\"timgheight\";s:3:\"400\";s:9:\"rimgwidth\";s:3:\"500\";s:10:\"rimgheight\";s:3:\"600\";s:9:\"bimgwidth\";s:3:\"700\";s:10:\"bimgheight\";s:3:\"800\";}'),
(9, 0, 'Video Mgmt', 'video/list', 'video', 'icon-hdd-o', 1, 9, '0000-00-00', ''),
(10, 0, 'Poll Mgmt', 'poll/list', 'poll', 'icon-exchange', 0, 19, '0000-00-00', ''),
(11, 0, 'Social Link Mgmt', 'social/list', 'social', 'icon-google-plus', 1, 10, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:2:\"14\";s:9:\"imgheight\";s:2:\"13\";}'),
(12, 0, 'Setting Mgmt', 'setting/list', 'settings', 'icon-gear', 1, 18, '0000-00-00', ''),
(13, 12, 'Preference Mgmt', 'preference/list', 'preference', 'icon-gear', 1, 1, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:2:\"50\";s:9:\"imgheight\";s:2:\"50\";s:9:\"simgwidth\";s:3:\"125\";s:10:\"simgheight\";s:2:\"80\";}'),
(14, 12, 'Office Info/Location', 'location/list', 'location', 'icon-gear', 1, 2, '0000-00-00', ''),
(15, 12, 'Modules Mgmt', 'module/list', 'module', 'icon-gear', 0, 3, '0000-00-00', ''),
(17, 0, 'Testimonial', 'testimonial/list', 'testimonial', 'icon-list-alt', 0, 10, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:3:\"100\";s:9:\"imgheight\";s:3:\"100\";}'),
(18, 0, 'Subscribers Mgmt', 'subscribers/list', 'subscribers', 'icon-comments', 0, 12, '2015-05-17', ''),
(19, 0, 'Offers Mgmt', 'offers/list', 'offers', 'icon-tags', 0, 16, '2015-05-20', 'a:2:{s:8:\"imgwidth\";s:3:\"200\";s:9:\"imgheight\";s:3:\"200\";}'),
(20, 0, 'Services Mgmt', 'services/list', 'services', 'icon-exchange', 0, 14, '2015-08-09', 'a:2:{s:8:\"imgwidth\";s:3:\"501\";s:9:\"imgheight\";s:3:\"340\";}'),
(21, 0, 'Movies Mgmt', 'movies/list', 'movies', 'icon-list', 0, 13, '2015-10-30', ''),
(22, 0, 'Theaters', 'theaters/list', 'theaters', 'icon-film', 0, 15, '2015-11-01', ''),
(26, 0, 'Booking Info', 'bookinginfo/list', 'bookinginfo', 'icon-indent', 0, 10, '2017-03-29', ''),
(27, 0, 'Product Mgmt', 'product/list', 'product', 'icon-shopping-cart', 0, 1, '2019-07-15', 'a:2:{s:8:\"imgwidth\";s:3:\"400\";s:9:\"imgheight\";s:3:\"350\";}'),
(28, 0, 'Property Mgmt', 'propertym/list', 'propertym', 'icon-list', 0, 6, '2019-09-11', ''),
(29, 28, 'Property ', 'property/list', 'property', 'icon-list', 1, 2, '2019-09-10', 'a:2:{s:8:\"imgwidth\";s:3:\"360\";s:9:\"imgheight\";s:3:\"281\";}'),
(30, 28, 'District/Location', 'district/list', 'district', 'icon-list', 1, 3, '2019-09-10', ''),
(31, 28, 'Category', 'category/list', 'category', 'icon-list', 1, 1, '2019-09-11', 'a:2:{s:8:\"imgwidth\";s:3:\"360\";s:9:\"imgheight\";s:3:\"281\";}'),
(32, 1, 'Admin User List', 'user/list', 'user', 'icon-users', 0, 22, '2019-11-27', ''),
(33, 1, 'External User List', 'externaluser/list', 'externaluser', 'icon-users', 0, 23, '2019-11-27', ''),
(34, 0, 'Newsletter Mgmt', 'pdf/list', 'pdf', 'icon-file-o', 0, 35, '2020-01-02', ''),
(35, 0, 'Training Mgmt', 'training/list', 'training', 'icon-tasks', 0, 12, '2020-06-09', ''),
(36, 0, 'Logo Mgmt', 'logo/list', 'logo', 'icon-credit-card', 0, 11, '2020-06-09', ''),
(37, 3, 'Category Mgmt', 'articlecategory/list', 'articlecategory', 'icon-file', 0, 1, '2020-06-10', ''),
(38, 3, 'Articles Mgmt', 'articles/list', 'articles', 'icon-adn', 0, 2, '2020-06-10', 'a:2:{s:8:\"imgwidth\";s:3:\"400\";s:9:\"imgheight\";s:3:\"350\";}'),
(39, 36, 'Logo Category Mgmt', 'logocategory/list', 'logocategory', 'icon-file', 1, 1, '2020-06-17', ''),
(40, 36, 'Logo Mgmt', 'logo/list', 'logo', 'icon-credit-card', 1, 2, '2020-06-17', ''),
(41, 0, 'Member mgmt', 'member/list', 'member', 'icon-file', 1, 6, '2023-07-13', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pdf`
--

CREATE TABLE `tbl_pdf` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `date` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sortorder` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_pdf`
--

INSERT INTO `tbl_pdf` (`id`, `title`, `pdf`, `date`, `status`, `sortorder`) VALUES
(2, 'Newsletter JUL - SEP 2019', 'sXDMz-jksvu-page-1.pdf', '07/17/2019', 1, 1),
(7, 'Newsletter OCT - DEC 2019', 'GJZcO-newsletter-oct-dec.pdf', '12/25/2019', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission`
--

CREATE TABLE `tbl_permission` (
  `id` int(11) NOT NULL,
  `type` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `group_id` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `module_id` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_polloptions`
--

CREATE TABLE `tbl_polloptions` (
  `id` int(11) NOT NULL,
  `pollid` int(11) NOT NULL COMMENT 'foreign id for tbl_polls.id',
  `pollOption` varchar(100) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_polls`
--

CREATE TABLE `tbl_polls` (
  `id` int(11) NOT NULL,
  `question` varchar(250) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_property`
--

CREATE TABLE `tbl_property` (
  `id` int(11) NOT NULL,
  `ext_user_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `sold_out` tinyint(4) DEFAULT NULL,
  `expire_on` varchar(50) DEFAULT NULL,
  `call_us` varchar(50) DEFAULT NULL,
  `call_us_mobile` varchar(50) NOT NULL,
  `list_price` varchar(200) DEFAULT NULL,
  `selling_price` varchar(200) DEFAULT NULL,
  `sold_price` varchar(50) DEFAULT NULL,
  `land_area` varchar(200) DEFAULT NULL,
  `build_up_area` varchar(200) DEFAULT NULL,
  `bedroom` varchar(20) DEFAULT NULL,
  `bathroom` varchar(20) DEFAULT NULL,
  `kitchen` varchar(20) DEFAULT NULL,
  `property_type` varchar(200) DEFAULT NULL,
  `property_status` varchar(200) DEFAULT NULL,
  `province` int(11) NOT NULL,
  `district` varchar(200) DEFAULT NULL,
  `municipality_or_vdc` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `location` varchar(200) NOT NULL DEFAULT '0',
  `user_property_location` varchar(255) DEFAULT NULL,
  `no_of_storey` varchar(20) DEFAULT NULL,
  `parking_spot` varchar(200) DEFAULT NULL,
  `facing_direction` varchar(200) DEFAULT NULL,
  `furnished` varchar(50) NOT NULL,
  `road_access` varchar(50) DEFAULT NULL,
  `road_type` varchar(100) DEFAULT NULL,
  `road_width` varchar(100) DEFAULT NULL,
  `garden` varchar(200) DEFAULT NULL,
  `swimming` varchar(200) DEFAULT NULL,
  `security` tinyint(4) NOT NULL,
  `gym_hall` tinyint(4) NOT NULL,
  `elevator_or_lift` tinyint(4) NOT NULL,
  `power_backup` varchar(50) NOT NULL,
  `community_monthly_fee` varchar(200) DEFAULT NULL,
  `community_water_supply` varchar(100) NOT NULL,
  `structure_style` varchar(200) DEFAULT NULL,
  `other_structure_style` varchar(100) NOT NULL,
  `plot_no` varchar(100) DEFAULT NULL,
  `main_road` varchar(50) NOT NULL,
  `distance_from_mainroad` varchar(100) NOT NULL,
  `nearest_landmark` varchar(100) NOT NULL,
  `distance_from_landmark` varchar(200) DEFAULT NULL,
  `living_room` varchar(50) DEFAULT NULL,
  `basement` varchar(50) NOT NULL,
  `attached_bathroom` varchar(50) NOT NULL,
  `servant_room` varchar(50) NOT NULL,
  `study_room` varchar(50) NOT NULL,
  `dining_room` varchar(50) NOT NULL,
  `family_lounge` varchar(50) NOT NULL,
  `laundry_room` varchar(50) NOT NULL,
  `no_of_store` varchar(50) DEFAULT NULL,
  `puja_room` varchar(20) DEFAULT NULL,
  `maid_room` tinyint(4) DEFAULT NULL,
  `no_of_floor` varchar(50) DEFAULT NULL,
  `maid_toilet` tinyint(4) DEFAULT NULL,
  `drinking_water_supply` varchar(20) DEFAULT NULL,
  `electricity` varchar(20) NOT NULL,
  `sewage` varchar(20) NOT NULL,
  `cable_line` varchar(20) NOT NULL,
  `telecommunication` varchar(20) NOT NULL,
  `guard_house` varchar(20) NOT NULL,
  `under_ground_water_tank` varchar(20) NOT NULL,
  `solar_water_heater` varchar(20) NOT NULL,
  `land` varchar(50) DEFAULT NULL,
  `community_housing` varchar(50) DEFAULT NULL,
  `bigha` int(20) NOT NULL,
  `katha` int(20) NOT NULL,
  `dhur` int(20) NOT NULL,
  `haath` int(20) NOT NULL,
  `ropani` int(20) NOT NULL,
  `aana` int(20) NOT NULL,
  `paisa` int(20) NOT NULL,
  `dam` int(20) NOT NULL,
  `google_map` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_property`
--

INSERT INTO `tbl_property` (`id`, `ext_user_id`, `title`, `image`, `content`, `slug`, `sortorder`, `status`, `category`, `excerpt`, `featured`, `payment_type`, `sold_out`, `expire_on`, `call_us`, `call_us_mobile`, `list_price`, `selling_price`, `sold_price`, `land_area`, `build_up_area`, `bedroom`, `bathroom`, `kitchen`, `property_type`, `property_status`, `province`, `district`, `municipality_or_vdc`, `city`, `location`, `user_property_location`, `no_of_storey`, `parking_spot`, `facing_direction`, `furnished`, `road_access`, `road_type`, `road_width`, `garden`, `swimming`, `security`, `gym_hall`, `elevator_or_lift`, `power_backup`, `community_monthly_fee`, `community_water_supply`, `structure_style`, `other_structure_style`, `plot_no`, `main_road`, `distance_from_mainroad`, `nearest_landmark`, `distance_from_landmark`, `living_room`, `basement`, `attached_bathroom`, `servant_room`, `study_room`, `dining_room`, `family_lounge`, `laundry_room`, `no_of_store`, `puja_room`, `maid_room`, `no_of_floor`, `maid_toilet`, `drinking_water_supply`, `electricity`, `sewage`, `cable_line`, `telecommunication`, `guard_house`, `under_ground_water_tank`, `solar_water_heater`, `land`, `community_housing`, `bigha`, `katha`, `dhur`, `haath`, `ropani`, `aana`, `paisa`, `dam`, `google_map`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(3, 0, 'BC - Balkhu, Type 21 A', 'a:1:{i:0;s:14:\"8HJHo-21-a.jpg\";}', '<p style=\"text-align: justify;\">\r\n	We present you contemporary houses built perfectly at perfect location inside Kathmandu. Buy houses inside Kathmandu with attractive features for you and your family.</p>\r\n<p style=\"text-align: justify;\">\r\n	The Brihat Cluster Housing is conveniently located in the heart of city, at Balkhu, which is just 200m from ring road chowk, 600m from Vayodha Hospital, 1.3 km from Tribhuvan University, 2.2 km from Kalanki Chowk and 1.6 km from Bhatbhateni Supermarket.</p>\r\n<p style=\"text-align: justify;\">\r\n	The plot area ranges from 0-4-0-2 aana. The built-up area is 1830 sq. ft. . The type A has 4 bedrooms and 4 bathrooms . The house has a large interior spaces and recreational facilities.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n', 'bc-balkhu-type-21-a', 13, 1, '10', 'The plot area ranges from 0-4-0-2 aana. The built-up area is 1830 sq. ft. .                                                            ', 1, 'Payment', 0, '2020-08-25', '01-4033303', '9802020065', '29,519,000.00', '29,519,000.00', '', '131.18 sqm', '1830 sqr ft', '4', '2', '1', 'Sale', 'Ready afte a year', 3, '6', '', 'Kathmandu', '48', '', '2.5', '1', 'South', '', 'Gravelled', NULL, '20 ft.', 'Garden in front', '', 0, 0, 0, '', 'None', '', 'RCC', '', '21 A', 'Yes', '', 'Vayodha Hospital', '600 metres', '1', '', '2', '', '', '1', '', '1', '1', '1', 0, '', 0, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Hilly', 'No', 0, 0, 0, 0, 0, 4, 0, 2, '', 'BC - Balkhu, Type 21 A', 'The Brihat Cluster Housing is conveniently located in the heart of city, at Balkhu, which is just 200m from ring road chowk, 600m from Vayodha Hospital, 1.3 km from Tribhuvan University, 2.2 km from Kalanki Chowk and 1.6 km from Bhatbhateni Supermarket.                                                           ', 'BC - Balkhu, Type 21 A                                                                                                                                                                                                                                                                                      '),
(5, 0, 'BCL - Ramkot, Type 53 F', 'a:1:{i:0;s:20:\"AszFh-untitled-4.jpg\";}', '<p style=\"text-align: justify;\">\r\n	An exceptional and stunning residence developed by the Brihat Group&rsquo;s Brihat community Living (BCL) to a standard of breathtaking luxury.</p>\r\n<p style=\"text-align: justify;\">\r\n	This is located at Ramkot, Sitapaila, Kathmandu and just 2.4 km from Ringroad Sitapaila chowk. This is a first eco-friendly urbanization product in Nepal.</p>\r\n<p style=\"text-align: justify;\">\r\n	The property which is set over south face 2.5 floors offers generously proportioned accommodation, 1920 sq ft builtup area while land area of 0-4-3-2. It is equipped with essential thing you could desire and more.</p>\r\n<p style=\"text-align: justify;\">\r\n	BCL offers outstanding entertaining space with a state-of-the-art gymnasium, swimming pool, sauna, Jacuzzi and round the clock security guard, Electronic security system as well as Temple at entrance.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n', 'bcl-ramkot-type-53-f', 4, 1, '10', 'An exceptional eco-friendly residence located in Ramkot, Sitapaila. In excess of 1500 sq ft to 2976 sq ft, it is equipped with essential thing you could desire and more.\r\n', 1, '', 0, '2020-08-25', '01-4033303/04', '9802020065/58/63', '27,311,000.00', '27,311,000.00', '', '155.03 sqm', '1920 sq ft', '4', '2', '1', 'Sale', 'Ready afte a year', 3, '6', '', 'Kathmandu', '49', '', '2.5', '1', 'West', 'N/A', 'Gravelled', NULL, '22ft', 'Garden in front', '1', 1, 1, 0, 'on common areas only', 'As per community management', '', 'RCC', '', '53 F', 'Yes', '', 'Sitapaila Chowk', '2.4 metres', '1', '', '1', '', '', '1', '1', '1', '1', '1', 1, '', 1, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Hilly', 'Yes', 0, 0, 0, 0, 0, 4, 3, 2, '', 'BCL - Ramkot, Type 53 F', 'stunning residence developed by the Brihat Group’s Brihat community Living (BCL) to a standard of breathtaking luxury. Buy houses inside Kathmandu with attractive features for you and your family.', 'An exceptional eco-friendly residence located in Ramkot, Sitapaila. In excess of 1500 sq ft to 2976 sq ft, it is equipped with essential thing you could desire and more'),
(6, 0, 'BCL - Ramkot, Type 45 F', 'a:1:{i:0;s:14:\"NAt74-45-f.jpg\";}', '<p style=\"text-align: justify;\">\r\n	31An exceptional and stunning residence developed by the Brihat Group&rsquo;s Brihat community Living (BCL) to a standard of breathtaking luxury.</p>\r\n<p style=\"text-align: justify;\">\r\n	This is located at Ramkot, Sitapaila, Kathmandu and just 2.4 km from Ringroad Sitapaila chowk. This is a first eco-friendly urbanization product in Nepal.</p>\r\n<p style=\"text-align: justify;\">\r\n	The property which is set over south face 2.5 floors offers generously proportioned accommodation, 1920 sq ft builtup area while land area of 0-6-3-2. It is equipped with essential thing you could desire and more.</p>\r\n<p style=\"text-align: justify;\">\r\n	BCL offers outstanding entertaining space with a state-of-the-art gymnasium, swimming pool, sauna, Jacuzzi and round the clock security guard, Electronic security system as well as Temple at entrance.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n', 'bcl-ramkot-type-45-f', 12, 1, '10', 'An exceptional eco-friendly residence located in Ramkot, Sitapaila. With built up area of 1920 sq ft, it is equipped with essential thing you could desire and more.\r\n\r\n', 1, 'Payment', 0, '2020-08-25', '+977-1-4033303', '9802020065', '34,461,000.00', '34,461,000.00', '', '218.63 sqm', '1920 sq.ft', '4', '1', '1', 'Sale', 'Ready afte a year', 3, '6', 'Nagarjun', 'Kathmandu', '49', '', '2.5', '1', 'East', '', 'Gravelled', NULL, '22 ft.', 'Garden in front', '1', 1, 1, 0, 'on common areas only', 'As per community management', '', 'RCC', '', '45 F', 'Yes', '', 'Sitapaila Chowk', '2.4 kilometres', '2', '', '2', '', '', '1', '', '1', '1', '1', 0, '', 0, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Hilly', 'Yes', 0, 0, 0, 0, 0, 6, 3, 2, '', 'BCL - Ramkot, Type 45 F', 'stunning residence developed by the Brihat Group’s Brihat community Living (BCL) to a standard of breathtaking luxury. Buy houses inside Kathmandu with attractive features for you and your family.', 'An exceptional eco-friendly residence located in Ramkot, Sitapaila. With built up area of 1920 sq ft, it is equipped with essential thing you could desire and more.\r\n\r\n'),
(7, 0, 'BCL - Ramkot, Type 44 E', 'a:1:{i:0;s:14:\"JBsvM-44-e.jpg\";}', '<p>\r\n	An exceptional and stunning residence developed by the Brihat Group&rsquo;s Brihat community Living (BCL) to a standard of breathtaking luxury.</p>\r\n<p>\r\n	This is located at Ramkot, Sitapaila, Kathmandu and just 2.4 km from Ringroad Sitapaila chowk. This is a first eco-friendly urbanization product in Nepal.</p>\r\n<p>\r\n	BCL offers outstanding entertaining space with a state-of-the-art gymnasium, swimming pool, sauna, Jacuzzi and round the clock security guard, Electronic security system as well as Temple at entrance.</p>\r\n<p>\r\n	*Prices are subject to change</p>\r\n', 'bcl-ramkot-type-44-e', 11, 1, '10', 'An exceptional eco-friendly residence located in Ramkot, Sitapaila. With built up area of 1880 sq ft, it is equipped with essential thing you could desire and more.\r\n\r\n', 0, '', 1, '', '+977-1-4033303', '9802020065/58/63', 'Sold', 'Sold', '', '141.12 sqm', '1880 sq. ft', '3', '2', '1', 'Sale', '', 3, '6', '', '', '49', '', '2.5', '1', 'South', '', 'Gravelled', NULL, '20 ft.', 'Yes', '1', 1, 1, 0, '', 'As per community management', '', 'RCC', '', '44 E', 'Yes', '', 'Sitapaila Chowk', '2.4 kilometres', '1', '', '1', '', '', '1', '1', '1', '1', '1', 0, '', 0, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Hilly', 'Yes', 0, 0, 0, 0, 0, 4, 1, 3, '', 'BCL - Ramkot, Type 44 E', 'An exceptional eco-friendly residence located in Ramkot, Sitapaila. With built up area of 1880 sq ft, it is equipped with essential thing you could desire and more.\r\n\r\n', 'BCL - Ramkot, Type 44 E'),
(8, 0, 'BCL - Ramkot, Type 71 As', 'a:1:{i:0;s:15:\"RDpvb-71-as.jpg\";}', '<hr id=\"system_readmore\" style=\"border-style: dashed; border-color: orange;\" />\r\n<p style=\"text-align: justify;\">\r\n	An exceptional and stunning residence developed by the Brihat Group&rsquo;s Brihat community Living (BCL) to a standard of breathtaking luxury.</p>\r\n<p style=\"text-align: justify;\">\r\n	This is located at Ramkot, Sitapaila, Kathmandu and just 2.4 km from Ringroad Sitapaila chowk. This is a first eco-friendly urbanization product in Nepal.</p>\r\n<p style=\"text-align: justify;\">\r\n	The property which is set over south face 3.5 floors offers generously proportioned accommodation, 2400 sq ft built up area while land area of 0-4-3-2. It is equipped with essential thing you could desire and more.</p>\r\n<p style=\"text-align: justify;\">\r\n	BCL offers outstanding entertaining space with a state-of-the-art gymnasium, swimming pool, sauna, Jacuzzi and round the clock security guard, Electronic security system as well as Temple at entrance.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n', 'bcl-ramkot-type-71-as', 2, 1, '10', 'An exceptional eco-friendly residence located in Ramkot, Sitapaila. With built up area of 2400 sq ft, it is equipped with essential thing you could desire and more.', 1, 'Payment', 0, '2020-08-25', '+977-1-4033303', '9802020065/58/63', '29,995,000.00', '29,995,000.00', '', '', '2400 sq. ft.', '4', '2', '1', 'Sale', 'Ready in 2-3 Months', 3, '6', 'Nagarjun', 'Sitapaila, Kathmandu', '49', '', '3.5', '1', 'South', 'N/A', 'Black topped', NULL, '', 'Yes', '1', 1, 1, 0, 'on common areas only', 'As per community management', '', 'Others', '', '71 As', 'Yes', '', 'Sitapaila Chowk', '2.4 km', '2', '', '2', '', '', '1', '1', '1', '1', '1', 0, '', 0, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Hilly', 'Yes', 0, 0, 0, 0, 0, 4, 3, 2, '', 'BCL - Ramkot, Type 71 As', 'stunning residence developed by the Brihat Group’s Brihat community Living (BCL) to a standard of breathtaking luxury. Buy houses inside Kathmandu with attractive features for you and your family.', 'An exceptional Eco-friendly residence located in Ramkot, Sitapaila. With built up area of 2400 sq ft, it is equipped with essential thing you could desire and more.'),
(9, 0, 'BCL - Bhaisepati, Type 16C', 'a:1:{i:0;s:14:\"uN43c-16-c.jpg\";}', '<div>\r\n	Brihat Developers and Builders Pvt. Ltd presents the perfect aesthetically pleasing views and luxurious homes at Bhasepati. Location, itself is pre-defined residential area with several housing projects in the surrounding area. It is just 3.5 km from Ringroad and 20 minute driving distance. It is located near the junction of Bhasepati to khokhana diversion road, free from air and noise pollutions.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Four bedrooms/bathrooms, living, dinning, kitchen, puja room, car parking, front lawn and back yard, great outdoor spaces and plenty of room to spread your wings.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Land area ranges to 5 Anna. Built up area is 1900 sq. ft.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Salient feature</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Well designed and properly maintained landscaping</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Wide road paved with concrete interlocking blocks</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Underground water supply system</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Sewerage network&nbsp; &nbsp; &nbsp; &nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Separate outlet for waste products and rain water</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Separate electricity line from Nepal electricity authority</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Electricity back up such as solar/generator facilities for common areas</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Click here to check out our other property models in Bhaisepati</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;*prices are subject to change at the end of kartik</div>\r\n', 'bcl-bhaisepati-type-16c', 43, 1, '10', 'Modern and luxurious homes in Brihat Community Living , Bhaisepati. Land area is 5 Anna. Built up area is 1900 sq. ft.', 1, 'Payment', 0, '2020-08-25', '+977-1-4033303/04', '9802020065', '23,834,000.00', '23,834,000.00', '', '129.19 sqm', '1775 sq. ft', '4', '2', '1', 'Sale', 'Ready afte a year', 3, '6', '', 'Kathmandu', '50', '', '2.5', '1', 'North', '', 'Black topped', NULL, '20 ft.', 'Yes', '1', 0, 0, 0, '', '4.75per sq ft', '', 'RCC', '', '16 C', 'Yes', '', 'Khokana Dobato', '200 m', '1', '', '2', '', '', '1', '1', '1', '1', '1', 1, '', 1, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Hilly', 'No', 0, 0, 0, 0, 0, 4, 0, 1, '', 'BCL - Bhaisepati, Type 16C', 'perfect aesthetically pleasing views and luxurious homes at Bhasepati. Location, itself is pre-defined residential area with several housing projects in the surrounding area. It is just 3.5 km from Ringroad and 20 minute driving distance. It is located near the junction of Bhasepati to khokhana diversion road, free from air and noise pollutions.', 'perfect aesthetically pleasing views and luxurious homes at Bhasepati. Location, itself is pre-defined residential area with several housing projects in the surrounding area. It is just 3.5 km from Ringroad and 20 minute driving distance. It is located near the junction of Bhasepati to khokhana diversion road, free from air and noise pollutions.'),
(10, 0, 'BC - Balkhu, Type 24B', 'a:4:{i:0;s:22:\"P8X9P-ground-floor.jpg\";i:1;s:21:\"reIep-first-floor.jpg\";i:2;s:22:\"levdQ-second-floor.jpg\";i:3;s:20:\"rHYDC-untitled-2.jpg\";}', '<p>\r\n	4.5 km from New-road.</p>\r\n<p>\r\n	2.2 km from Kalanki chowk 200m from Ring Road Chowk</p>\r\n<p>\r\n	1.3 km from Tribhuvan University</p>\r\n<p>\r\n	600m from Vayodha Hospital, Balkhu</p>\r\n<p>\r\n	2.5 km from Bhatbhateni Supermarket</p>\r\n<p>\r\n	*Prices are subject to change</p>\r\n', 'bc-balkhu-type-24b', 18, 1, '10', 'Contemporary homes, designed to cater modern living, Brihat cluster- Balkhu offers excellent value house built to quality living.The Brihat cluster housing conveniently located in heart of city, at Balkhu.\r\n\r\n', 1, 'Payment', 0, '2020-08-25', '+977-1-4033303/04', '9802020065/58/63', '21,799,000.00', '21,799,000.00', '', '91.43 sqm', '1525 sq ft', '3', '2', '1', 'Sale', 'Ready afte a year', 3, '6', '', 'Kathmandu', '48', '', '2.5', '1', 'North', '', 'Gravelled', NULL, '20 ft.', 'Yes', '', 0, 0, 0, '', 'N/A', '', 'RCC', '', '24 B', 'Yes', '', 'Vayodha Hospital', '600m from Vayodha Hospital', '1', '', '2', '', '', '1', '', '1', '', '1', 0, '', 0, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Hilly', 'No', 0, 0, 0, 0, 0, 2, 3, 2, '', 'BC - Balkhu, Type 24B', 'The Brihat Cluster Housing is conveniently located in the heart of city, at Balkhu, which is just 200m from ring road chowk, 600m from Vayodha Hospital, 1.3 km from Tribhuvan University, 2.2 km from Kalanki Chowk and 1.6 km from Bhatbhateni Supermarket.', 'Contemporary homes, designed to cater modern living, Brihat cluster- Balkhu offers excellent value house built to quality living.The Brihat cluster housing conveniently located in heart of city, at Balkhu.\r\n\r\n'),
(11, 0, 'BC - Bhainsepati, Type 15 C', 'a:1:{i:0;s:20:\"L4p4Y-untitled-1.jpg\";}', '<p style=\"text-align: justify;\">\r\n	The perfect aesthetically pleasing views and luxurious homes at Bhaisepati. Location, itself is pre-defined residential area with several housing projects in the surrounding area. This is just 3.5 km from Ringroad and 20 minute driving distance. This is located near the junction of Bhaisepati to khokhana diversion road, free from air and noise pollutions.</p>\r\n<p style=\"text-align: justify;\">\r\n	Four bedrooms/bathrooms, living, dinning, kitchen, puja room, car parking, front lawn and back yard, great outdoor spaces and plenty of room to spread your wings.</p>\r\n<p style=\"text-align: justify;\">\r\n	Land area ranges from 3 Anna to 8.3 Anna. Built up area ranges from 1430 sq. ft to 1925 sq. ft.</p>\r\n<p style=\"text-align: justify;\">\r\n	Salient feature</p>\r\n<p style=\"text-align: justify;\">\r\n	Well designed and properly maintained landscaping</p>\r\n<p style=\"text-align: justify;\">\r\n	Wide road paved with concrete interlocking blocks</p>\r\n<p style=\"text-align: justify;\">\r\n	Underground water supply system</p>\r\n<p style=\"text-align: justify;\">\r\n	Sewerage network</p>\r\n<p style=\"text-align: justify;\">\r\n	Separate outlet for waste products and rain water</p>\r\n<p style=\"text-align: justify;\">\r\n	Separate electricity line from Nepal electricity authority</p>\r\n<p style=\"text-align: justify;\">\r\n	Electricity back up such as solar/generator facilities for common areas</p>\r\n<p style=\"text-align: justify;\">\r\n	Click here to see our premium villa in bhaisepati</p>\r\n', 'bc-bhainsepati-type-15-c', 1, 0, '10', 'Modern and luxurious homes in Brihat Community Living , Bhaisepati. The land area for this type is 5 Anna with a built up area of 1900 sq.ft.\r\n', 0, '', 0, '', '+977-1-4033303', '9802020063', '3,27,43,000', '3,27,43,000', '', '2353 sq.ft', '2220 sq ft', '3', '4', '1', 'Sale', 'Ready in 2-3 Months', 3, '6', '', 'Lalitpur', '50', '', '4', '1', 'East', '', '', NULL, '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 1, '2', 1, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 0, 0, 0, 0, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3534.544597152261!2d85.30104201467542!3d27.63861763511671!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb1797621c877b%3A0x3f7b98bf7e66212d!2sBrihat%20Community%20Living%2C%20Bhaisepati!5e0!3m2!1sen!2snp!4v1575874773451!5m2!1sen!2snp', 'BCL - Bhaisepati, Type 15 C', 'BCL - Bhaisepati, Type 15 C', 'BCL - Bhaisepati, Type 15 C'),
(12, 0, ' BCL - Ramkot, premium plot', 'a:1:{i:0;s:20:\"ghhjS-untitled-2.jpg\";}', '<h3>\r\n	<strong>Location</strong></h3>\r\n<p>\r\n	- 10 minutes driving distance from Ring Road Sitapaila Chowk (Short distance compared to other existing housings)</p>\r\n<p>\r\n	- Different road access from Ring Road</p>\r\n<p>\r\n	- Location pre-defined as residential area with several housing projects in the vicinity</p>\r\n<p>\r\n	- Total South oriented land</p>\r\n<p>\r\n	- Aesthetically pleasing hilly backdrop</p>\r\n<p>\r\n	&nbsp;</p>\r\n<h3>\r\n	<strong>Community Management</strong></h3>\r\n<p>\r\n	- A temple at the entrance</p>\r\n<p>\r\n	- A guardhouse with round the clock security provided by professional security forces</p>\r\n<p>\r\n	- Swimming pool</p>\r\n<p>\r\n	- Well-equipped Gym Hall</p>\r\n<p>\r\n	- Sauna and Jacuzzi</p>\r\n<p>\r\n	- Intercom facility</p>\r\n<p>\r\n	- Provision for Internet cum TV Cable Line</p>\r\n<p>\r\n	- Maintaining &amp; Cleaning common Space</p>\r\n<p>\r\n	- Proper Garbage Disposal System</p>\r\n<p>\r\n	&nbsp;</p>\r\n<h3>\r\n	<strong>Infrastructure Facilities</strong></h3>\r\n<p>\r\n	- A separate transformer for the community from Nepal Electricity Authority</p>\r\n<p>\r\n	- Electricity Back-up such as solar/generator facilities for common areas</p>\r\n<p>\r\n	- Well designed and properly maintained landscaping</p>\r\n<p>\r\n	- Wide road paved with concrete interlocking blocks</p>\r\n<p>\r\n	- Deep boring well for water supply with treatment plant for potable drinking water of WHO standards</p>\r\n<p>\r\n	- Sewerage lines</p>\r\n<p>\r\n	- Separate outlet for waste products and rainwater drains</p>\r\n<p>\r\n	- Fire hydrants</p>\r\n<p>\r\n	- Each Plot has 3 bedrooms, 3 bathrooms plus attic, covered pergola, parking space, lawn in the front yard</p>\r\n<p>\r\n	- The housing blends exclusively with the greenery and the marvelous landscapes of the surrounding area.</p>\r\n<p>\r\n	- Land area ranges 0-5-1-1 to 0-7-3-3</p>\r\n<p>\r\n	- Built up area 1815 - 1900 sq. ft.</p>\r\n', 'bcl-ramkot-premium-plot', 14, 0, '14', 'An exceptional eco-friendly residence located in Ramkot, Sitapaila. In excess of 1824 sq ft, it provides a mesmerizing view of the city along with other amenities like gymnasium and swimming pool.', 1, '', 0, '', '+977-1-4033303', '9802020065', 'not defined', 'not defined', '', '1824 sq ft', '1900 sq ft', '3', '4', '', 'Sale', 'Ready to Move', 3, '6', '', '', '49', '', '2', '2', 'South', '', '', NULL, '', 'Yes', '1', 0, 0, 0, '', '', '', '', '', '', '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 0, 0, 0, 0, '', ' BCL - Ramkot, premium plot', ' BCL - Ramkot, premium plot', ' BCL - Ramkot, premium plot'),
(13, 0, 'BC - Balkhu, Type 13 A', 'a:1:{i:0;s:21:\"soSUf-balkhu-13-a.png\";}', '<p style=\"text-align: justify;\">\r\n	We present you contemporary house to be&nbsp; built at perfect location inside Kathmandu. Buy houses inside Kathmandu with attractive features for you and your family.</p>\r\n<p style=\"text-align: justify;\">\r\n	The Brihat Cluster Housing is conveniently located in the heart of city, at Balkhu, which is just 200m from ring road chowk, 600m from Vayodha Hospital, 1.3 km from Tribhuvan University, 2.2 km from Kalanki Chowk and 1.6 km from Bhatbhateni Supermarket.</p>\r\n<p style=\"text-align: justify;\">\r\n	With beneficial landmarks like hospitals, grocery stores and supermarkets, these houses are designed with locality in consideration to cater modern living. Brihat Cluster, Balkhu offers excellent value house built for quality living.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n', 'bc-balkhu-type-13-a', 3, 1, '10', '', 1, 'Payment', 0, '2020-08-25', '+977-1-4033303', '9802020065', '29,242,000.00', '29,242,000.00', '', '127.20 sqm', '1870 sq.ft', '4', '2', '1', 'Sale', 'Ready afte a year', 3, '6', 'Municipality', 'Kathmandu', '48', '', '2.5', '1', 'North-West', 'N/A', 'Gravelled', NULL, '20 ft', 'Yes', '', 0, 0, 0, '', '', '', 'RCC', '', '13 A', 'Yes', '', 'Vayodha Hospital', '600 meters from Vayodha Hospital', '1', '', '2', '', '', '1', '', '1', '1', '1', 0, '', 0, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Hilly', 'No', 0, 0, 0, 0, 0, 4, 0, 0, '', 'BC - Balkhu, Type 13 A', 'stunning residence developed by the Brihat Group’s Brihat cluster (BC) to a standard of breathtaking luxury. Buy houses inside Kathmandu with attractive features for you and your family.', 'An exceptional eco-friendly residence located in Ramkot, Sitapaila. With built up area of 2400 sq ft, it is equipped with essential thing you could desire and more.'),
(14, 0, 'BCL - Ramkot, Type 7B', 'a:1:{i:0;s:20:\"WF11S-untitled-5.jpg\";}', '<p style=\"text-align: justify;\">\r\n	&ldquo;YOUR HOME BEGINS WITH A HOME THAT INSPIRES YOU&rdquo;</p>\r\n<p style=\"text-align: justify;\">\r\n	An exceptional and stunning residence developed by the Brihat Group&rsquo;s Brihat community Living (BCL) to a standard of breathtaking luxury.</p>\r\n<p style=\"text-align: justify;\">\r\n	This is located at Ramkot, Sitapaila, Kathmandu and just 2.4 km from Ringroad Sitapaila chowk. This is a first eco-friendly urbanization product in Nepal.</p>\r\n<p style=\"text-align: justify;\">\r\n	The property which is set over north-south face 2.5 floors offers generously proportioned accommodation, in excess of 1500 sq ft to 2976 sq ft, is equipped with essential thing you could desire and more.</p>\r\n<p style=\"text-align: justify;\">\r\n	BCL offers outstanding entertaining space with a state- of &ndash;the- art gymnasium, swimming pool, sauna, Jacuzzi and round the clock security guard, Electronic security system as well as Temple at entrance.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n', 'bcl-ramkot-type-7b', 5, 1, '10', 'luxurious 4 bed room house in kathmandu', 0, 'Payment', 1, '', '+977-1-4033303', '9802020065', 'Sold', 'Sold', '', '0-7-0-1.4', '2030', '4', '4', '', 'Sale', 'Ready to Move', 3, '6', '', '', '49', '', '3', '1', 'North', '', '', NULL, '', 'Big Lawn at lower Ground', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 0, 0, 0, 0, '', 'BCL - Ramkot, Type 7B', 'BCL - Ramkot, Type 7B', 'BCL - Ramkot, Type 7B'),
(16, 0, 'BCL - Ramkot, Type 47D', 'a:1:{i:0;s:20:\"NkAgt-untitled-1.jpg\";}', '<p style=\"text-align: justify;\">\r\n	An exceptional and stunning residence developed by the Brihat Group at&nbsp; Brihat community Living (BCL) to a standard of breathtaking luxury.</p>\r\n<p style=\"text-align: justify;\">\r\n	This is located at Ramkot, Sitapaila, Kathmandu and just 2.4 km from Ringroad Sitapaila Chowk. This is a first eco-friendly urbanization product in Nepal.</p>\r\n<p style=\"text-align: justify;\">\r\n	The property which is set over north face 3.5 floors offers generously proportioned accommodation, in excess of 2560 sq. ft., is equipped with essential thing you could desire and more.</p>\r\n<p style=\"text-align: justify;\">\r\n	BCL offers outstanding entertaining space with a gymnasium, swimming pool, sauna, Jacuzzi and round the clock security guard, Electronic security system as well as Temple at entrance.</p>\r\n', 'bcl-ramkot-type-47d', 6, 1, '10', 'A stunning residence developed to a standard of breathtaking luxury.Having land area of 7 anna 3 paisa, it\'s built up area adds up to 2560 sq. ft.', 1, 'Payment', 0, '2020-08-25', '+977-1-4033303/04', '9802020065', '40,825,000.00', '40,825,000.00', '', '246.45 sqm', '2560 sq. ft.', '4', '1', '1', 'Sale', 'Ready in 2-3 Months', 3, '6', 'Nagarjun', 'Kathmandu', '49', '', '3.5', '1', 'North', 'N/A', 'Black topped', NULL, '22 ft', '1', '1', 1, 1, 0, 'Common areas', 'As per community management', 'yes', 'RCC', '', '47 D', 'Yes', '', 'Sitapaila Chowk', '2.4 metres', '1', '', '3', '', '1', '1', '1', '1', '1', '1', 0, '', 0, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Hilly', 'Yes', 0, 0, 0, 0, 0, 7, 3, 0, '', 'BCL - Ramkot, Type 47D', 'A stunning residence developed to a standard of breathtaking luxury.Having land area of 7 anna 3 paisa, it\'s built up area adds up to 2560 sq. ft.', 'stunning residence developed by the Brihat Group’s Brihat community Living (BCL) to a standard of breathtaking luxury. Buy houses inside Kathmandu with attractive features for you and your family.'),
(17, 0, 'BCL - Ramkot, Type 49D', 'a:1:{i:0;s:26:\"pC9Jc-nkagt-untitled-1.jpg\";}', '<p style=\"text-align: justify;\">\r\n	An exceptional and stunning residence developed by the Brihat Group&rsquo;s Brihat community Living (BCL) to a standard of breathtaking luxury.</p>\r\n<p style=\"text-align: justify;\">\r\n	This is located at Ramkot, Sitapaila, Kathmandu and just 2.4 km from Ringroad Sitapaila chowk. This is a first eco-friendly urbanization product in Nepal.</p>\r\n<p style=\"text-align: justify;\">\r\n	The property which is set over north face 3.5 floors offers generously proportioned accommodation, in excess of 2500 sq. ft., is equipped with essential thing you could desire and more.</p>\r\n<p style=\"text-align: justify;\">\r\n	BCL offers outstanding entertaining space with a state-of-the-art gymnasium, swimming pool, sauna, Jacuzzi and round the clock security guard, Electronic security system as well as Temple at entrance.</p>\r\n', 'bcl-ramkot-type-49d', 7, 1, '10', 'A stunning residence developed to a standard of breathtaking luxury.Having land area of 0-6-1-1, it\'s built up area adds up to 2860 sq. ft.', 1, 'Payment', 0, '2020-08-25', '+977-1-4033303/04', '9802020065', '37,477,000.00', '37,477,000.00', '', '200.74 sqm', '2860 sq. ft.', '4', '1', '1', 'Sale', 'Ready in 2-3 Months', 3, '6', 'Nagarjun', 'Kathmandu', '49', '', '3.5', '1', 'North', 'N/A', 'Black topped', NULL, '20 ft.', 'Yes', '1', 1, 1, 0, 'on common areas only', 'As per community management', '', 'RCC', '', '49 D', 'Yes', '', 'Sitapaila Chowk', '2.4 Kilometres', '2', '', '3', '', '', '1', '', '1', '1', '1', 0, '', 0, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Hilly', 'Yes', 0, 0, 0, 0, 0, 6, 1, 1, '', 'BCL - Ramkot, Type 49D', 'stunning residence developed by the Brihat Group’s Brihat community Living (BCL) to a standard of breathtaking luxury. Buy houses inside Kathmandu with attractive features for you and your family.', 'A stunning residence developed to a standard of breathtaking luxury.Having land area of 0-6-1-1, it\'s built up area adds up to 2860 sq. ft.'),
(18, 0, ' BCL - Ramkot, Type 12 C', 'a:1:{i:0;s:20:\"ODrlC-untitled-2.jpg\";}', '<p style=\"text-align: justify;\">\r\n	An exceptional and stunning residence developed by the Brihat Group&rsquo;s Brihat community Living (BCL) to a standard of breathtaking luxury.</p>\r\n<p style=\"text-align: justify;\">\r\n	This is located at Ramkot, Sitapaila, Kathmandu and just 2.4 km from Ringroad Sitapaila chowk. This is a first eco-friendly urbanization product in Nepal.</p>\r\n<p style=\"text-align: justify;\">\r\n	BCL offers outstanding entertaining space with a state-of-the-art gymnasium, swimming pool, sauna, Jacuzzi and round the clock security guard, Electronic security system as well as Temple at entrance.</p>\r\n', 'bcl-ramkot-type-12-c', 8, 1, '10', '', 1, 'Payment', 0, '2020-08-25', '+977-1-4033303/04', '9802020065/58/63', '26,740,000.00', '26,740,000.00', '', '159 sqm', '1730 sq. ft.', '3', '1', '1', 'Sale', 'Ready afte a year', 3, '6', 'Nagarjun', 'Kathmandu', '49', '', '3', '1', 'South', '', 'Black topped', NULL, '22 ft.', 'Yes', '1', 1, 1, 0, 'on common areas only', 'As per community management', 'Yes', '', '', '12 C', 'Yes', '', 'Sitapaila Chowk', '2.4 kilometres', '1', '', '2', '', '', '1', '1', '1', '1', '1', 0, '', 0, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Hilly', 'Yes', 0, 0, 0, 0, 0, 5, 0, 0, '', ' BCL - Ramkot, Type 12 C', 'stunning residence developed by the Brihat Group’s Brihat community Living (BCL) to a standard of breathtaking luxury. Buy houses inside Kathmandu with attractive features for you and your family.', ' BCL - Ramkot, Type 12 C'),
(19, 0, 'BCL - Ramkot, Type 28 A', 'a:1:{i:0;s:17:\"dmiQU-type-as.jpg\";}', 'Pending', 'bcl-ramkot-type-28-a', 9, 0, '10', '', 0, 'Payment', 1, '', '+977-1-4033303', '9802020065/58/63', 'Sold', 'Sold', '', '0-4-1-0', '1820 sq. ft.', '', '', '', '', 'Ready to Move', 3, '6', '', '', '49', '', '3', '1', 'South', '', '', NULL, '', '', '1', 0, 0, 0, '', '', '', 'RCC', '', '', '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 0, 0, 0, 0, '', 'BCL - Ramkot, Type 28 A', 'BCL - Ramkot, Type 28 A', 'BCL - Ramkot, Type 28 A'),
(20, 0, 'BCL - Ramkot, Type 29 As', 'a:1:{i:0;s:20:\"uTxn8-untitled-4.jpg\";}', '<p style=\"text-align: justify;\">\r\n	An exceptional and stunning residence developed by the Brihat Group&rsquo;s Brihat community Living (BCL) to a standard of breathtaking luxury. Buy houses inside Kathmandu with attractive features for you and your family.</p>\r\n<p style=\"text-align: justify;\">\r\n	The Brihat Community Living is conveniently located in the heart of city, at Kalanki, Ramkot, Sitapaila, Kathmandu, just 2.4 km from Ringroad Sitapaila chowk, 2.0 km from Salesberry and 1.5 km from Suvekshya Hospital. This is the first eco-friendly urbanization product in Nepal.</p>\r\n<p style=\"text-align: justify;\">\r\n	The plot area is 0-4-3-0 aana. The built-up area is 2480 sq. ft . The type 29 As has 4 bedrooms and 4 bathrooms. The house has large interior spaces and recreational facilities. With beneficial landmarks like hospitals, grocery stores and supermarkets, these houses are designed with locality in consideration to cater modern living. Brihat Community Living, Ramkot offers excellent value houses built for quality living.</p>\r\n<p style=\"text-align: justify;\">\r\n	*Prices are subject to change and validity will remain till the end of Chaitra, 2075</p>\r\n', 'bcl-ramkot-type-29-as', 10, 0, '10', '', 0, 'Payment', 1, '', '+977-1-4033303', '9802020065/58/63', '28,405,000', '28,405,000', '', '0-4-3-0', '2480 sq. ft.', '4', '4', '1', 'Sale', 'Ready to Move', 3, '6', '', '', '49', '', '3', '1', 'South', '', '', NULL, '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 0, 0, 0, 0, '', 'BCL - Ramkot, Type 29 As', 'BCL - Ramkot, Type 29 As', 'BCL - Ramkot, Type 29 As'),
(21, 0, 'BC - Balkhu, Type 18B', 'a:1:{i:0;s:20:\"fSdLZ-untitled-5.jpg\";}', '<p style=\"text-align: justify;\">\r\n	Contemporary homes, designed to cater modern living, Brihat cluster- Balkhu offers excellent value house built to quality living.</p>\r\n<p style=\"text-align: justify;\">\r\n	The Brihat cluster housing conveniently located in heart of city, at Balkhu. Which is just 200 m from ring road chowk, 600m from Vayodha Hospital, Balkhu and 1.3 km from Tribhuvan University, 2.2 km from Kalanki chowk and 4.5 km form New road.</p>\r\n<p style=\"text-align: justify;\">\r\n	The plot area is 0-4-0-0 ana. The built area is 1650sq ft.</p>\r\n<p style=\"text-align: justify;\">\r\n	The type B boasts 4 bedrooms and 3 bathrooms. These houses are landed homes with large interior spaces and recreational facilities.</p>\r\n', 'bc-balkhu-type-18b', 15, 1, '10', 'Modern Cluster Housing Inside Ringroad, free from pollution in the heart of the city has an area of 1650 sq ft. It boasts large interior spaces and recreational facilities.', 1, 'Payment', 0, '2020-08-25', '+977-1-4033303/04', '9802020065', '28,024,000.00', '28,024,000.00', '', '127.2 sqm', '1650 sq ft', '4', '1', '1', 'Sale', 'Ready afte a year', 3, '6', '', 'Kathmandu', '48', '', '2.5', '1', 'North', '', 'Gravelled', NULL, '20 ft.', 'Yes', '', 0, 0, 0, '', '', '', 'RCC', '', '18 B', 'Yes', '', 'Vayodha Hospital', '600 metres from Vayodha Hospital', '1', '', '2', '', '', '1', '1', '1', '1', '1', 0, '', 0, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Hilly', 'No', 0, 0, 0, 0, 0, 4, 0, 0, '', 'BC - Balkhu, Type 18B', 'The Brihat Cluster Housing is conveniently located in the heart of city, at Balkhu, which is just 200m from ring road chowk, 600m from Vayodha Hospital, 1.3 km from Tribhuvan University, 2.2 km from Kalanki Chowk and 1.6 km from Bhatbhateni Supermarket.', 'BC - Balkhu, Type 18B'),
(22, 0, 'BC - Balkhu, Type 20A', 'a:1:{i:0;s:20:\"sibnW-8hjho-21-a.jpg\";}', '<p>\r\n	4.5 km from New-road.</p>\r\n<p>\r\n	2.2 km from Kalanki chowk</p>\r\n<p>\r\n	200m from Ring Road Chowk</p>\r\n<p>\r\n	1.3 km from Tribhuvan University</p>\r\n<p>\r\n	600m from Vayodha Hospital, Balkhu</p>\r\n<p>\r\n	2.5 km from Bhatbhateni Supermarket</p>\r\n<p>\r\n	*Prices are subject to change</p>\r\n', 'bc-balkhu-type-20a', 16, 1, '10', 'Contemporary homes, designed to cater modern living, Brihat cluster, Balkhu offers excellent value house built to quality living.The Brihat Cluster housing is conveniently located in the heart of the city, at Balkhu.', 1, 'Payment', 0, '2020-08-25', '+977-1-4033303/04', '9802020065', '37,480,000.00', '37,480,000.00', '', '184.84 sqm', '1830 sq. ft.', '4', '2', '1', 'Sale', 'Ready afte a year', 3, '6', '', 'Kathmandu', '48', '', '2.5', '1', 'South', 'N/A', 'Gravelled', NULL, '20 ft.', 'Yes', '', 0, 0, 0, '', 'None', '', 'RCC', '', '20 A', 'Yes', '', 'Vayodha Hospital', '600m from Vayodha Hospital', '1', '', '2', '', '', '1', '', '1', '1', '1', 0, '', 0, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Hilly', 'No', 0, 0, 0, 0, 0, 5, 3, 1, '', 'BC - Balkhu, Type 20A', 'The Brihat Cluster Housing is conveniently located in the heart of city, at Balkhu, which is just 200m from ring road chowk, 600m from Vayodha Hospital, 1.3 km from Tribhuvan University, 2.2 km from Kalanki Chowk and 1.6 km from Bhatbhateni Supermarket.', 'BC - Balkhu, Type 20A'),
(23, 0, 'BC - Balkhu, Type 23B', 'a:4:{i:0;s:22:\"gWzAj-ground-floor.jpg\";i:1;s:21:\"KtH5b-first-floor.jpg\";i:2;s:22:\"llXQK-second-floor.jpg\";i:3;s:20:\"r8zcy-untitled-2.jpg\";}', '<p style=\"text-align: justify;\">\r\n	Contemporary homes, designed to cater modern living, Brihat cluster- Balkhu offers excellent value house built to quality living.</p>\r\n<p style=\"text-align: justify;\">\r\n	The Brihat cluster housing conveniently located in heart of city, at Balkhu. Which is just 200 m from ring road chowk, 600m from Vayodha Hospital, Balkhu and 1.3 km from Tribhuvan University, 2.2 km from Kalanki chowk and 4.5 km from NewRoad .</p>\r\n<p style=\"text-align: justify;\">\r\n	The land area is 0-2-3-1.16 aana. The built area is 1550sq ft.</p>\r\n<p style=\"text-align: justify;\">\r\n	Type B boasts 4 bedrooms and 3 bathrooms. These houses are landed homes with large interior spaces and recreational facilities.</p>\r\n<p style=\"text-align: justify;\">\r\n	*Prices are subject to change</p>\r\n', 'bc-balkhu-type-23b', 17, 1, '10', 'Modern Cluster Housing Inside Ring road, free from pollution in the heart of the city has an area of 1550 sq ft. It boasts large interior spaces and recreational facilities.', 1, 'Payment', 0, '2020-08-25', '+977-1-4033303/04', '9802020065', '21,853,000.00', '21,853,000.00', '', '83.47 sqm', '1550 sq ft', '3', '2', '1', 'Sale', 'Ready afte a year', 3, '6', '', 'Kathmandu', '48', '', '2.5', '1', 'North', 'N/A', 'Gravelled', NULL, '20 ft.', 'Yes', '', 0, 0, 0, '', 'None', '', '', '', '23 B', 'Yes', '', 'Vayodha Hospital', '600 metres', '1', '', '2', '', '', '1', '', '1', '', '1', 0, '', 0, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Hilly', 'No', 0, 0, 0, 0, 0, 2, 3, -2, '', 'BC - Balkhu, Type 23B', 'The Brihat Cluster Housing is conveniently located in the heart of city, at Balkhu, which is just 200m from ring road chowk, 600m from Vayodha Hospital, 1.3 km from Tribhuvan University, 2.2 km from Kalanki Chowk and 1.6 km from Bhatbhateni Supermarket.', 'BC - Balkhu, Type 23B'),
(24, 0, 'BCL - Bhaisepati, Type 1B', 'a:1:{i:0;s:20:\"N1z03-untitled-3.jpg\";}', 'Sold', 'bcl-bhaisepati-type-1b', 19, 1, '14', '', 0, '', 1, '', '+977-1-4033303', '9802020065/58/63', 'Sold', 'Sold', '', '1754.70 sq. ft', '1480 sq. ft', '', '', '', 'Sale', 'Ready to Move', 3, '6', '', '', '50', '', '', '', 'west', '', '', NULL, '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 0, 0, 0, 0, '', 'BCL - Bhaisepati, Type 1B', 'BCL - Bhaisepati, Type 1B', 'BCL - Bhaisepati, Type 1B'),
(25, 0, 'BCL - Bhaisepati, Type 2B1', 'a:1:{i:0;s:20:\"aJPn5-untitled-3.jpg\";}', '', 'bcl-bhaisepati-type-2b1', 20, 1, '14', '', 0, '', 1, '', '+977-1-4033303', '9802020065/58/63', 'Sold', 'Sold', '', '1708.34 sq. ft', '1585 sq. ft', '', '', '', 'Sale', 'Ready to Move', 3, '6', '', '', '50', '', '', '', 'West', '', '', NULL, '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 0, 0, 0, 0, '', 'BCL - Bhaisepati, Type 2B1', 'BCL - Bhaisepati, Type 2B1', 'BCL - Bhaisepati, Type 2B1'),
(26, 0, 'BCL - Bhaisepati, Type 8B1', 'a:1:{i:0;s:20:\"qO8nq-untitled-3.jpg\";}', '', 'bcl-bhaisepati-type-8b1', 21, 1, '', '', 0, 'Payment', 1, '', '+977-1-4033303', '9802020065/58/63', 'Sold', 'Sold', '', '1882.37 sq. ft', '1615 sq. ft', '', '', '', 'Sale', 'Ready to Move', 3, '6', '', '', '50', '', '', '', 'West', '', '', NULL, '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 0, 0, 0, 0, '', 'BCL - Bhaisepati, Type 8B1', 'BCL - Bhaisepati, Type 8B1', 'BCL - Bhaisepati, Type 8B1'),
(27, 0, 'BCL - Bhaisepati, Type 9B1 ', 'a:1:{i:0;s:20:\"U6CCb-untitled-3.jpg\";}', '', 'bcl-bhaisepati-type-9b1', 22, 1, '14', '', 0, '', 1, '', '+977-1-4033303', '', 'Sold', 'Sold', NULL, '1218.09 sq. ft', '1595 sq. ft', '0', '0', '0', 'Sale', 'Ready to Move', 3, '5', '', '', '50', NULL, '0', '0', '0', '', '', NULL, NULL, '0', '0', 0, 0, 0, '', '0', '', NULL, '', NULL, '', '', '', 'metres', '0', '', '', '', '', '', '', '', '0', '0', 0, '', 0, '0', '', '', '', '', '', '', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 'BCL - Bhaisepati, Type 9B1 ', 'BCL - Bhaisepati, Type 9B1 ', 'BCL - Bhaisepati, Type 9B1 '),
(28, 0, 'BCL - Bhaisepati, Type 10 B2', 'a:1:{i:0;s:20:\"wumZw-untitled-4.jpg\";}', '', 'bcl-bhaisepati-type-10-b2', 23, 1, '14', '', 0, '', 1, '', '+977-1-4033303', '', 'Sold', 'Sold', NULL, '1229 sq. ft', '1600 sq. ft', '1', '1', '1', 'Sale', 'Ready to Move', 3, '5', '', '', '50', NULL, '1', '1', '1', '', '', NULL, NULL, '', '', 0, 0, 0, '', '', '', '', '', NULL, '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '0', 0, '', 0, '0', '', '', '', '', '', '', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 'BCL - Bhaisepati, Type 10 B2', 'BCL - Bhaisepati, Type 10 B2', 'BCL - Bhaisepati, Type 10 B2'),
(29, 0, 'BCL - Bhaisepati, Type 11B2', 'a:1:{i:0;s:20:\"lHBUv-untitled-4.jpg\";}', '', 'bcl-bhaisepati-type-11b2', 24, 1, '14', '', 0, '', 1, '', '+977-1-4033303', '', 'Sold', 'Sold', NULL, '1228.65 sq. ft', '1600 sq. ft', '0', '0', '0', 'Sale', 'Ready to Move', 3, '5', '', '', '50', NULL, '0', '0', '0', '', '', NULL, NULL, '0', '0', 0, 0, 0, '', '0', '', NULL, '', NULL, '', '', '', 'metres', '0', '', '', '', '', '', '', '', '0', '0', 0, '', 0, '0', '', '', '', '', '', '', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 'BCL - Bhaisepati, Type 11B2', 'BCL - Bhaisepati, Type 11B2', 'BCL - Bhaisepati, Type 11B2'),
(30, 0, 'BCL - Bhaisepati, Type 12B2', 'a:1:{i:0;s:20:\"AoY4T-untitled-4.jpg\";}', '', 'bcl-bhaisepati-type-12b2', 25, 1, '14', '', 0, '', 1, '', '+977-1-4033303', '', 'Sold', 'Sold', NULL, '1228.65 sq. ft', '1585 sq. ft', '0', '0', '0', 'Sale', 'Ready to Move', 3, '5', '', '', '50', NULL, '0', '0', '0', '', '', NULL, NULL, '0', '0', 0, 0, 0, '', '0', '', NULL, '', NULL, '', '', '', 'metres', '0', '', '', '', '', '', '', '', '0', '0', 0, '', 0, '0', '', '', '', '', '', '', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 'BCL - Bhaisepati, Type 12B2', 'BCL - Bhaisepati, Type 12B2', 'BCL - Bhaisepati, Type 12B2'),
(31, 0, ' BCL - Bhaisepati, Type 13B2', 'a:1:{i:0;s:20:\"FOGub-untitled-4.jpg\";}', '', 'bcl-bhaisepati-type-13b2', 26, 1, '10', '', 0, '', 1, '', '+977-1-4033303', '9802020065/58/63', 'Sold', 'Sold', '', '1228.65 sq. ft', '1585 sq. ft', '', '', '', 'Sale', 'Ready to Move', 3, '6', '', '', '50', '', '', '', 'North', '', '', NULL, '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 0, 0, 0, 0, '', ' BCL - Bhaisepati, Type 13B2', ' BCL - Bhaisepati, Type 13B2', ' BCL - Bhaisepati, Type 13B2'),
(32, 0, 'BCL - Bhaisepati, Type 14B2', 'a:1:{i:0;s:20:\"PFo1c-untitled-4.jpg\";}', '', 'bcl-bhaisepati-type-14b2', 27, 1, '10', '', 0, '', 1, '', '+977-1-4033303', '9802020065/58/63', 'Sold', 'Sold', '', '1228.65 sq. ft', '1585 sq. ft', '', '', '', 'Sale', 'Ready to Move', 3, '6', '', '', '50', '', '', '', 'North', '', '', NULL, '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 0, 0, 0, 0, '', 'BCL - Bhaisepati, Type 14B2', 'BCL - Bhaisepati, Type 14B2', 'BCL - Bhaisepati, Type 14B2'),
(33, 0, 'BCL - Bhaisepati, Type 19B1', 'a:1:{i:0;s:20:\"HpvxM-untitled-3.jpg\";}', '', 'bcl-bhaisepati-type-19b1', 28, 1, '10', '', 0, 'Payment', 1, '', '+977-1-4033303', '9802020065', 'Sold', 'Sold', '', '1360 sq. ft', '1480 sq. ft', '', '', '', 'Sale', 'Ready to Move', 3, '6', '', '', '50', '', '', '', 'East', '', '', NULL, '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 0, 0, 0, 0, '', 'BCL - Bhaisepati, Type 19B1', 'BCL - Bhaisepati, Type 19B1', 'BCL - Bhaisepati, Type 19B1'),
(34, 0, 'BCL - Bhaisepati, Type 22A1', 'a:1:{i:0;s:20:\"aa3bG-untitled-5.jpg\";}', '', 'bcl-bhaisepati-type-22a1', 29, 1, '14', '', 0, '', 1, '', '+977-1-4033303', '', 'Sold', 'Sold', NULL, '1396', '1930', '0', '0', '0', 'Sale', 'Ready to Move', 3, '5', '', '', '50', NULL, '0', '0', '0', '', '', NULL, NULL, '0', '1', 0, 0, 0, '', '0', '', NULL, '', NULL, '', '', '', 'metres', '0', '', '', '', '', '', '', '', '0', '0', 0, '', 0, '0', '', '', '', '', '', '', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 'BCL - Bhaisepati, Type 22A1', 'BCL - Bhaisepati, Type 22A1', 'BCL - Bhaisepati, Type 22A1'),
(35, 0, 'BCL - Bhaisepati, Type 23A1', 'a:1:{i:0;s:20:\"YgAZw-untitled-5.jpg\";}', '', 'bcl-bhaisepati-type-23a1', 30, 1, '10', '', 0, 'Payment', 1, '2020-07-03', '+977-1-4033303', '9802020063', 'Sold', 'Sold', '', '1467.79 sq.ft', '1925 sq. ft', '', '', '', 'Sale', 'Ready to Move', 3, '6', '', 'Bhaisepati', '50', '', '', '', 'East', '', 'Black topped', NULL, '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 0, 0, 0, 0, '', 'BCL - Bhaisepati, Type 23A1', 'BCL - Bhaisepati, Type 23A1', 'BCL - Bhaisepati, Type 23A1'),
(36, 0, 'BCL - Bhaisepati, Type 24A1', 'a:1:{i:0;s:20:\"CiY7y-untitled-5.jpg\";}', '', 'bcl-bhaisepati-type-24a1', 31, 1, '10', '', 0, 'Payment', 1, '2020-07-03', '+977-1-4033303', '9802020063', 'Sold', 'Sold', '', '1540.24 sq. ft', '1925 sq. ft', '', '', '', 'Sale', 'Ready to Move', 3, '6', '', 'Bhaisepati', '50', '', '', '', 'East', '', 'Black topped', NULL, '', '', '', 1, 0, 0, '', '', '', '', '', '', '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'Yes', 0, 0, 0, 0, 0, 0, 0, 0, '', 'BCL - Bhaisepati, Type 24A1', 'BCL - Bhaisepati, Type 24A1', 'BCL - Bhaisepati, Type 24A1'),
(37, 0, 'BCL - Bhaisepati, Type 25A1', 'a:1:{i:0;s:20:\"9GAsE-untitled-5.jpg\";}', '', 'bcl-bhaisepati-type-25a1', 32, 1, '10', '', 0, 'Payment', 1, '', '+977-1-4033303', '9802020063', 'Sold', 'Sold', '', '1979.65 sq. ft', '1925 sq. ft', '', '', '', 'Sale', 'Ready to Move', 3, '6', '', 'Bhaisepati', '50', '', '', '', 'East', '', 'Black topped', NULL, '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 0, 0, 0, 0, '', 'BCL - Bhaisepati, Type 25A1', 'BCL - Bhaisepati, Type 25A1', 'BCL - Bhaisepati, Type 25A1'),
(38, 0, 'BCL - Bhaisepati, Type 5A2', 'a:1:{i:0;s:20:\"FS7BC-untitled-6.jpg\";}', '', 'bcl-bhaisepati-type-5a2', 33, 1, '10', '', 0, 'Payment', 1, '2020-07-03', '+977-1-4033303', '9802020063', 'Sold', 'Sold', '', '1349.38 sq. ft', '1885 sq. ft', '', '', '', 'Sale', 'Ready to Move', 3, '6', '', 'Bhaisepati', '50', '', '', '', 'East', '', 'Black topped', NULL, '', '', '', 1, 0, 0, '', '', '', '', '', '', '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Yes', '', 'Yes', '', '', 'Yes', 'No', 'Hilly', 'Yes', 0, 0, 0, 0, 0, 0, 0, 0, '', 'BCL - Bhaisepati, Type 5A2', 'BCL - Bhaisepati, Type 5A2', 'BCL - Bhaisepati, Type 5A2'),
(39, 0, 'BCL - Bhaisepati, Type 6A2', 'a:1:{i:0;s:20:\"JRpEj-untitled-6.jpg\";}', '', 'bcl-bhaisepati-type-6a2', 34, 1, '10', '', 0, 'Payment', 1, '2020-07-03', '+977-1-4033303', '0000', 'Sold', 'Sold', '', '1349.38 sq. ft', '1870 sq.ft', '', '', '', 'Sale', 'Ready to Move', 3, '6', '', 'Bhaisepati', '50', '', '', '', 'East', '', 'Black topped', NULL, '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 0, 0, 0, 0, '', 'BCL - Bhaisepati, Type 6A2', 'BCL - Bhaisepati, Type 6A2', 'BCL - Bhaisepati, Type 6A2');
INSERT INTO `tbl_property` (`id`, `ext_user_id`, `title`, `image`, `content`, `slug`, `sortorder`, `status`, `category`, `excerpt`, `featured`, `payment_type`, `sold_out`, `expire_on`, `call_us`, `call_us_mobile`, `list_price`, `selling_price`, `sold_price`, `land_area`, `build_up_area`, `bedroom`, `bathroom`, `kitchen`, `property_type`, `property_status`, `province`, `district`, `municipality_or_vdc`, `city`, `location`, `user_property_location`, `no_of_storey`, `parking_spot`, `facing_direction`, `furnished`, `road_access`, `road_type`, `road_width`, `garden`, `swimming`, `security`, `gym_hall`, `elevator_or_lift`, `power_backup`, `community_monthly_fee`, `community_water_supply`, `structure_style`, `other_structure_style`, `plot_no`, `main_road`, `distance_from_mainroad`, `nearest_landmark`, `distance_from_landmark`, `living_room`, `basement`, `attached_bathroom`, `servant_room`, `study_room`, `dining_room`, `family_lounge`, `laundry_room`, `no_of_store`, `puja_room`, `maid_room`, `no_of_floor`, `maid_toilet`, `drinking_water_supply`, `electricity`, `sewage`, `cable_line`, `telecommunication`, `guard_house`, `under_ground_water_tank`, `solar_water_heater`, `land`, `community_housing`, `bigha`, `katha`, `dhur`, `haath`, `ropani`, `aana`, `paisa`, `dam`, `google_map`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(40, 0, 'BCL - Bhaisepati, Type 3A3', 'a:1:{i:0;s:20:\"G8l1Q-untitled-7.jpg\";}', '', 'bcl-bhaisepati-type-3a3', 35, 1, '10', '', 0, 'Payment', 1, '', '+977-1-4033303', '9802020063', 'Sold', 'Sold', '', '1349.38 sq. ft', '1885 sq. ft', '', '', '', 'Sale', 'Ready to Move', 3, '6', '', 'Bhaisepati', '50', '', '', '', 'East', '', 'Black topped', NULL, '', '', '', 1, 0, 0, '', '', '', '', '', '', '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'Yes', 0, 0, 0, 0, 0, 0, 0, 0, '', 'BCL - Bhaisepati, Type 3A3', 'BCL - Bhaisepati, Type 3A3', 'BCL - Bhaisepati, Type 3A3'),
(41, 0, 'BCL - Bhaisepati, Type 7A2', 'a:1:{i:0;s:20:\"UyM9T-untitled-6.jpg\";}', '', 'bcl-bhaisepati-type-7a2', 36, 1, '14', '', 0, '', 1, '', '+977-1-4033303', '9802020063', 'Sold', 'Sold', '', '1943.27 sq. ft', '1875 sq. ft', '', '', '', 'Sale', 'Ready to Move', 3, '6', '', 'Bhaisepati', '50', '', '', '1', 'West', '', '', NULL, '', '', '', 1, 0, 0, '', '', '', 'RCC', '', '', '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'Yes', 0, 0, 0, 0, 0, 0, 0, 0, '', 'BCL - Bhaisepati, Type 7A2', 'BCL - Bhaisepati, Type 7A2', 'BCL - Bhaisepati, Type 7A2'),
(42, 0, 'BCL - Bhaisepati, Type 17C', 'a:1:{i:0;s:20:\"AoNaO-untitled-8.jpg\";}', '', 'bcl-bhaisepati-type-17c', 37, 1, '14', '', 0, 'Payment', 1, '', '+977-1-4033303', '9802020063', 'Sold', 'Sold', '', '1486.64 sq. ft', '1600 sq. ft', '', '', '', 'Sale', 'Ready to Move', 3, '6', '', '', '50', '', '', '', 'North', '', '', NULL, '', '', '1', 0, 0, 0, '', '', '', '', '', '', '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 0, 0, 0, 0, '', 'BCL - Bhaisepati, Type 17C', 'BCL - Bhaisepati, Type 17C', 'BCL - Bhaisepati, Type 17C'),
(43, 0, 'BCL - Bhaisepati, Type 20C', 'a:1:{i:0;s:20:\"vCtbD-untitled-8.jpg\";}', '', 'bcl-bhaisepati-type-20c', 38, 1, '14', '', 0, 'Payment', 1, '', '+977-1-4033303', '0000', 'Sold', 'Sold', '', '1069.53 sq. ft', '1480 sq. ft', '', '', '', 'Sale', 'Ready to Move', 3, '6', '', '', '50', '', '', '', 'East', '', '', NULL, '', '', '1', 0, 0, 0, '', '', '', 'RCC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 0, '', 0, '', '', '', '', '', '', 'Yes', 'No', 'Hilly', 'No', 0, 0, 0, 0, 0, 0, 0, 0, '', 'BCL - Bhaisepati, Type 20C', 'BCL - Bhaisepati, Type 20C', 'BCL - Bhaisepati, Type 20C'),
(44, 0, 'BCL - Ramkot, Type 30 G', 'a:1:{i:0;s:12:\"DAYxC-gf.jpg\";}', '<p style=\"text-align: justify;\">\r\n	An exceptional and stunning residence developed by the Brihat Group&rsquo;s Brihat community Living (BCL) to a standard of breathtaking luxury. Buy houses inside Kathmandu with attractive features for you and your family.</p>\r\n<p style=\"text-align: justify;\">\r\n	The Brihat Community Living is conveniently located in the heart of city, at Kalanki, Ramkot, Sitapaila, Kathmandu, just 2.4 km from Ringroad Sitapaila chowk, 2.0 km from Salesberry and 1.5 km from Suvekshya Hospital. This is the first eco-friendly urbanization product in Nepal.</p>\r\n<p style=\"text-align: justify;\">\r\n	The plot area is 0-5-1-0 aana. The built-up area is 2130 sq. ft . The type 30 G has 4 bedrooms and 3 bathrooms. The house has large interior spaces and recreational facilities. With beneficial landmarks like hospitals, grocery stores and supermarkets, these houses are designed with locality in consideration to cater modern living. Brihat Community Living, Ramkot offers excellent value houses built for quality living.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n', 'bcl-ramkot-type-30-g', 39, 1, '10', '', 1, 'Payment', 0, '2020-08-25', '+977-1-4033303', '9802020065', '29,801,000.00', '29,801,000.00', '', '166.95 sqm', '2130', '4', '2', '1', 'Sale', 'Ready afte a year', 3, '6', '', 'Ramkot, Kathmandu', '49', '', '2.5', '1', 'South', '', 'Black topped', NULL, '20 ft.', 'Yes', '1', 1, 1, 0, 'Common area', 'As per Community Management', '1', 'RCC', '', '30 G', 'Yes', '', 'Sitapaila Chowk', '2.4 kilometres', '2', '', '1', '', '', '1', '', '1', '1', '1', 0, '', 0, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Hilly', 'Yes', 0, 0, 0, 0, 0, 5, 1, 0, '', 'BCL - Ramkot, Type 30 G', 'stunning residence developed by the Brihat Group’s Brihat community Living (BCL) to a standard of breathtaking luxury. Buy houses inside Kathmandu with attractive features for you and your family.', 'BCL - Ramkot, Type 30 G'),
(45, 0, 'Land on sale, Sitapaila', 'a:1:{i:0;s:20:\"NPZam-untitled-1.jpg\";}', '<p>\r\n	Just 500 meter from Sitapaila chowk, suitable for Residential buildings,</p>\r\n<p>\r\n	Land area: 0-7-2-2</p>\r\n<p>\r\n	Road access: 12 ft</p>\r\n<p>\r\n	property codeLSPK 002</p>\r\n', 'land-on-sale-sitapaila', 40, 1, '12', 'Land for sale in Sitapaila, Ward no. 2, Nagarjun. The land is ideal for commercial type of building.', 0, '', 1, '', '+977-1-4033303', '0000', '27,00,000', '27,00,000', '', '0-7-2-2 sq. ft. (0-1-0-1)', '', '', '', '', 'Sale', '', 3, '6', '', '', '49', '', '', '', 'South', '', '', NULL, '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 0, 0, 0, 0, '', 'Land on sale, Sitapaila', 'Land on sale, Sitapaila', 'Land on sale, Sitapaila'),
(48, 0, 'BCL - Bhaisepati, Type 4A3', 'a:1:{i:0;s:20:\"6feSw-untitled-4.jpg\";}', '<p style=\"text-align: justify;\">\r\n	Brihat Investments Pvt. Ltd. presents the perfect aesthetically pleasing views and luxurious homes at Bhaisepati. Location, itself is pre-defined residential area with several housing projects in the surrounding area. This is just 3.5 km from Ringroad and 20 minute driving distance. This is located near the junction of Bhaisepati to Khokhana diversion road, free from air and noise pollutions.</p>\r\n<p style=\"text-align: justify;\">\r\n	Four bedrooms/bathrooms, living, dinning, kitchen, puja room, car parking, front lawn and back yard, great outdoor spaces and plenty of room to spread your wings.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<u>Salient feature</u></p>\r\n<p>\r\n	Well designed and properly maintained landscaping</p>\r\n<p>\r\n	6m wide road paved with concrete interlocking blocks</p>\r\n<p>\r\n	Underground water supply system</p>\r\n<p>\r\n	Sewerage network&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n<p>\r\n	Separate outlet for waste products and rain water</p>\r\n<p>\r\n	Separate electricity line from Nepal electricity authority</p>\r\n<p>\r\n	Electricity back up such as solar/generator facilities for common areas</p>\r\n<p>\r\n	<a href=\"http://www.brihatpropertysolutions.com/property/beautiful-residential-land-on-sale-at-bhaisepati\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"Click here to see more properties in Bhaisepati \">Click here to see more properties in Bhaisepati</a></p>\r\n', 'bcl-bhaisepati-type-4a3', 41, 1, '10', 'Modern and luxurious homes in Brihat Community Living , Bhaisepati. With the land area of 3 Anna 3 paisa 3 dam (0-3-3-3.08) and having Built up area of 1349 sq.ft', 1, 'Payment', 0, '2020-08-25', '+977-1-4033303/04', '9802020065', '24,418,000.00', '24,418,000.00', '', '125.22 sqm', '1970 sq.ft', '4', '2', '1', 'Sale', 'Ready afte a year', 3, '6', 'Lalitpur', 'Kathmandu', '50', '', '3.5', '1', 'East', '', 'Black topped', NULL, '20 ft.', 'Yes', '1', 0, 0, 0, '', '', '', 'RCC', '', '4A3', 'Yes', '', 'Wai Wai Factory', '500 meter', '1', '2', '2', '', '', '1', '1', '1', '1', '1', 0, '', 0, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Hilly', 'No', 0, 0, 0, 0, 0, 3, 3, 3, '', 'BCL - Bhaisepati, Type 4A3', 'BCL - Bhaisepati, Type 4A3, Bungalow in the community living with community facilities, Best and latest product from the real estate pioneer Brihat Group. ', 'BCL - Bhaisepati, Type 4A3, Close proximity from the city. Located in VIP residential area. Less noise and sound pollution compared to city center. '),
(49, 0, 'BCL - Bhasepati, Type B1-A', 'a:1:{i:0;s:20:\"XyicA-untitled-5.jpg\";}', '<p style=\"text-align: justify;\">\r\n	The perfect aesthetically pleasing views and luxurious homes at Bhasepati. Location, itself is pre-defined residential area with several housing projects in the surrounding area. This is just 3.5 km from Ringroad and 20 minute driving distance. This is located near the junction of Bhasepati to khokhana diversion road, free from air and noise pollutions.</p>\r\n<p style=\"text-align: justify;\">\r\n	Four bedrooms/bathrooms, living, dinning, kitchen, puja room, car parking, front lawn and back yard, great outdoor spaces and plenty of room to spread your wings.</p>\r\n<p style=\"text-align: justify;\">\r\n	Land area ranges from 3 Anna to 8.3 Anna. Built up area ranges from 1430 sq. ft to 1925 sq. ft.</p>\r\n<p style=\"text-align: justify;\">\r\n	<u>Salient feature</u></p>\r\n<p style=\"text-align: justify;\">\r\n	Well designed and properly maintained landscaping</p>\r\n<p style=\"text-align: justify;\">\r\n	Wide road paved with concrete interlocking blocks</p>\r\n<p style=\"text-align: justify;\">\r\n	Underground water supply system</p>\r\n<p style=\"text-align: justify;\">\r\n	Sewerage network&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	Separate outlet for waste products and rain water</p>\r\n<p style=\"text-align: justify;\">\r\n	Separate electricity line from Nepal electricity authority</p>\r\n<p style=\"text-align: justify;\">\r\n	Electricity back up such as solar/generator facilities for common areas</p>\r\n<p style=\"text-align: justify;\">\r\n	<em>*prices are subject to change at the end of kartik</em></p>\r\n<p style=\"text-align: justify;\">\r\n	<a href=\"http://www.brihatpropertysolutions.com/property/bcl-bhaisepati-type-16c\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"bhaisepati\">Click here to see more spectacular properties in bhaisepati</a></p>\r\n', 'bcl-bhasepati-type-b1-a', 45, 1, '10', 'SOLD OUT (1B1-A, 2B1-A)\r\n', 0, '', 1, '', '+977-1-4033303', '1-4033303', 'Sold', 'Sold', '', '1725 sq ft', '1925', '4', '', '', 'Sale', 'Ready to Move', 3, '5', 'Lalitpur', '', '50', '', '3', '', 'East', '', '', NULL, '', '', '1', 0, 0, 0, '', '', '', '', '', '', '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 0, 0, 0, 0, '', 'BCL - Bhasepati, Type B1-A', 'aesthetically, pleasing, luxurious, residential, junction, pollutions', 'The perfect aesthetically pleasing views and luxurious homes at Bhasepati. Location, itself is pre-defined residential area with several housing projects in the surrounding area. This is just 3.5 km from Ringroad and 20 minute driving distance. This is located near the junction of Bhasepati to khokhana diversion road, free from air and noise pollutions.'),
(50, 0, 'Land on sale at Sitapila', 'a:1:{i:0;s:20:\"GxXAn-untitled-6.jpg\";}', '<p>\r\n	Land on sale at Sitapila</p>\r\n<p>\r\n	Details:</p>\r\n<p>\r\n	land area 0-8-1-0</p>\r\n<p>\r\n	Suitable for Residential and semi-commercial</p>\r\n<p>\r\n	Road 12 feet</p>\r\n', 'land-on-sale-at-sitapila', 47, 0, '12', 'land on sale at Sitapila\r\n', 0, '', 1, '', '+977-1-4033303', '0000', '26,00,000 Per Aana', '26,00,000 Per Aana', '', '0-8.1-0', '', '', '', '', 'Sale', '', 3, '6', '', '', '49', '', '', '', 'East', '', '', NULL, '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 0, 0, 0, 0, '', 'Land on sale at Sitapila', 'Land on sale at Sitapila', 'Land on sale at Sitapila'),
(51, 0, 'Premium Land on Sale at Thankot', 'a:1:{i:0;s:17:\"8HQ98-thankot.jpg\";}', '<p>\r\n	Land on sale at Thankot</p>\r\n<p>\r\n	Details:</p>\r\n<p>\r\n	Selling Price 2,000,000 Per Aana</p>\r\n<p>\r\n	Land Area 1-6-0-0</p>\r\n<p>\r\n	Suitable for Residential Purpose</p>\r\n<p>\r\n	&nbsp;Peaceful Environment</p>\r\n<p>\r\n	&nbsp;</p>\r\n', 'premium-land-on-sale-at-thankot', 48, 1, '12', 'Premium land on sale at residential location in Thankot. ', 1, 'Payment', 0, '2020-07-29', '+977-1-4033303/04', '9802020065/58/63', '2,000,000 per Aana', '2,000,000 per Aana', '', '699.54 sqm', '', '', '', '', 'Sale', '', 3, '6', 'Chandragiri', 'Kathmandu', '53', '', '', '', 'South', '', 'Black topped', NULL, '', '', '', 0, 0, 0, '', '', '', '', '', '', 'Yes', '', 'Tribhuvan Park', '100 m. ', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 1, 6, 0, 0, '', 'Land on sale at Thankot', 'Land on sale at Thankot, perfect for residential purpose. Close to Nature. Premium land', 'Land on sale at Thankot, residential land, open space '),
(52, 0, 'Residential Land on Sale at Bhaisepati', 'a:1:{i:0;s:35:\"3rhZD-extended-area-land-26-ana.jpg\";}', '<p>\r\n	Beautiful Residential Land on Sale at Bhaisepati</p>\r\n<p>\r\n	Details:</p>\r\n<p>\r\n	Price -19,00,000 Per Aana</p>\r\n<p>\r\n	Land area -26 Aana</p>\r\n<hr id=\"system_readmore\" style=\"border-style: dashed; border-color: orange;\" />\r\n<p>\r\n	Location - Bhaisepati</p>\r\n<p>\r\n	Enviroment - Peaceful and Greenery</p>\r\n', 'residential-land-on-sale-at-bhaisepati', 49, 1, '12', 'Beautiful Residential Land on Sale at Bhaisepati next to Brihat Community Living, Bhaisepati. It is 100 m from Khokana Dobato. ', 1, 'Payment', 0, '2020-07-30', '+977-1-4033303/04', '9802020065/58/63', '1,900,000 per Aana', '1,900,000 per Aana', '', '826.74 sqm', '', '', '', '', 'Sale', '', 3, '5', '', 'Bhaisepati', '50', '', '', '', 'East', '', 'Black topped', NULL, '', '', '', 0, 0, 0, '', '', '', '', '', '', 'Yes', '', 'Khokana Dobato', '100 m. ', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', '', 0, 0, 0, 0, 1, 10, 0, 0, '', 'Beautiful Residential Land On Sale At Bhaisepati', 'Beautiful Residential Land On Sale At Bhaisepati', 'Beautiful Residential Land On Sale At Bhaisepati'),
(53, 0, 'Grande Tower Apartment On Sale', 'a:1:{i:0;s:20:\"404Jp-untitled-1.jpg\";}', '<p>\r\n	Instance Benefits-</p>\r\n<p>\r\n	Return On Investment= 8% percent</p>\r\n<p>\r\n	Detail</p>\r\n<p>\r\n	Price :- 1.40 crore ( Negotiable if terms meet )</p>\r\n<p>\r\n	Access Road: Above 20 feet</p>\r\n<p>\r\n	Floors: 12</p>\r\n<p>\r\n	Built up (sq.ft): 1175</p>\r\n<p>\r\n	Bedrooms: 3</p>\r\n<p>\r\n	Bathroom: 2</p>\r\n<p>\r\n	Living room: 1</p>\r\n<p>\r\n	Water Supply: Yes</p>\r\n<p>\r\n	Features: Garden , Parking Space , Security Guards , Backup Generator , Elevator</p>\r\n<p>\r\n	Note- Property Documents Are Verified</p>\r\n', 'grande-tower-apartment-on-sale', 51, 1, '9', 'Grande Tower Apartment On Sale \r\n', 0, 'Payment', 1, '', '+977-1-4033303', '9802020052', 'Sold', 'Sold', '', '0.00 sqm', '1175', '3', '3', '1', 'Sale', 'Ready to Move', 3, '6', '', 'Dhapasi', '52', '', '12', '8', 'South', '', 'Black topped', NULL, '', '111', '1', 1, 1, 1, 'Common area', 'As per Community Management', '1', '', '', '', '', '', '', 'Tokha', '1', '', '', '', '', '', '', '', '1', '', 0, '', 0, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'No', 'No', 'Hilly', 'Yes', 0, 0, 0, 0, 0, 0, 0, 0, '', 'Grande Tower Apartment On Sale', 'Grande Tower Apartment On Sale', 'Grande Tower Apartment On Sale'),
(54, 0, 'Fully Furnished Apartment On Sale at TCH Tower IV, Sitapaila', 'a:1:{i:0;s:20:\"wglzW-untitled-1.jpg\";}', '<p>\r\n	Details:</p>\r\n<p>\r\n	Price: 23000000.00</p>\r\n<p>\r\n	Furnishing -Full</p>\r\n<p>\r\n	Building Floors: 8</p>\r\n<p>\r\n	Apartment at: 5th floor</p>\r\n<p>\r\n	Built up (sq.ft): 1322</p>\r\n<p>\r\n	Bedrooms: 3</p>\r\n<p>\r\n	Bathroom: 2</p>\r\n<p>\r\n	Living room: 1</p>\r\n<p>\r\n	Water Supply: Yes</p>\r\n<p>\r\n	Features: Parking Space , Security Guards , Backup Generator for common area , Elevator</p>\r\n', 'fully-furnished-apartment-on-sale-at-tch-tower-iv-sitapaila', 42, 1, '9', 'Beautiful Apartment On Sale at TCH Tower IV, Sitapaila\r\n', 1, 'Payment', 0, '2020-09-25', '+977-1-4033303/04', '9802020065/58/63', '23,796,000.00', '23,796,000.00', '', '0.00 sqm', '1322 sq. ft. ', '3', '1', '1', 'Sale', 'Ready to Move', 3, '6', '', 'Sitapaila, Kathmandu', '49', '', '1', '1', 'East', 'Full furnished', 'Black topped', NULL, '', '', '', 1, 0, 1, 'inverter/battery', 'As per Community Management', 'Yes', 'RCC', '', '', 'Yes', '', 'Sitapaila Chowk', '300 meter from Ring Road Sitapila', '1', '', '1', '', '', '1', '', '', '', '', 0, '', 0, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Hilly', 'Yes', 0, 0, 0, 0, 0, 0, 0, 0, '', 'Beautiful Apartment On Sale At Sitapila (TCH Tower)', 'Beautiful Apartment On Sale At Sitapila (TCH Tower), fully furnished, ready to move in , modern equipped apartment', 'Beautiful Apartment On Sale At Sitapila (TCH Tower)'),
(55, 0, 'Beautiful Apartment On Sale At Sitapila TCH', 'a:1:{i:0;s:20:\"KLTEL-untitled-2.jpg\";}', '<p>\r\n	Price :- 15,585,000</p>\r\n<p>\r\n	Furnishing -Full</p>\r\n<p>\r\n	Floors: 9</p>\r\n<p>\r\n	Built up (sq.ft): 1039</p>\r\n<p>\r\n	Bedrooms: 2</p>\r\n<p>\r\n	Bathroom: 2</p>\r\n<p>\r\n	Living room: 1</p>\r\n<p>\r\n	Water Supply: Yes</p>\r\n<p>\r\n	Features: Parking Space , Security Guards , Backup Generator , Elevator</p>\r\n', 'beautiful-apartment-on-sale-at-sitapila-tch', 44, 1, '9', 'Beautiful Apartment On Sale At Sitapila\r\n', 0, '', 1, '', '+977-1-4033303', '0000', '15,585,000', '15,585,000', '', '1039', '1039', '2', '2', '1', 'Sale', 'Ready to Move', 3, '6', '', 'Sitapaila, Kathmandu', '49', '', '9', '5', 'East', '', '', NULL, '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '3', '300 meter from Ring Road Sitapila', '1', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 0, 0, 0, 0, '', 'Beautiful Apartment On Sale At Sitapila TCH', 'Beautiful Apartment On Sale At Sitapila TCH', 'Beautiful Apartment On Sale At Sitapila TCH'),
(56, 0, 'Attractive House on Sale at Thankot - 1 T', 'a:1:{i:0;s:20:\"bWNXC-untitled-1.jpg\";}', '<p style=\"text-align: justify;\">\r\n	Attractive Cluster Houses in a residential area at Thankot Height. It is 2.5 km. from Thankot Police Station, and just about 250 m. from main road on the way to Chandragiri Hills bottom station. In a very peaceful residential area surrounded by greenary and fresh enviroment away from the pollution of city. Ideal for group of friends or family to have a private colony of your own. House designs can be modified as per your requirement.</p>\r\n', 'attractive-house-on-sale-at-thankot-1-t', 46, 0, '14', '', 1, 'Free', 0, '', '+977-1-4033303', '9802020065/58/63', '19,140,000.00', '19,140,000.00', '', '0-5-3-2', '1500', '3', '', '', 'Sale', 'Ready to Move', 3, '6', '', '', '53', '', '3', '', 'North', '', '', NULL, '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 0, 0, 0, 0, '', 'Attractive House on Sale at Thankot', 'attractive, cluster, thankot, station, chandragiri, bottom, station, greenary, colony, modified', 'Attractive Cluster Houses in a residential area at Thankot Height. It is 2.5 km. from Thankot Police Station, and just about 250 m. from main road on the way to Chandragiri Hills bottom station. In a very peaceful residential area surrounded by greenary and fresh enviroment away from the pollution of city. Ideal for group of friends or family to have a private colony of your own. House designs can be modified as per your requirement.'),
(59, 0, 'BCL, Ramkot 28A', 'a:1:{i:0;s:20:\"to7ZY-untitled-4.jpg\";}', '', 'bcl-ramkot-28a', 50, 1, '10', 'Beautiful Property At Beautiful Location\r\n', 0, 'Free', 1, '', 'Nepal', '000', 'sold', 'Sold', '', '0.00 sqm', '', '3', '3', '1', 'Sale', '', 3, '6', '', 'Sitapaila, Kathmandu', '49', '', '3', '2', 'South', '', 'Black topped', NULL, '', '', '', 0, 0, 0, '', 'Common Area Maintenance ,Security', '', '', '', '', '', '', '3', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 0, 0, 0, 0, '', 'BCL, Ramkot 28A', 'BCL, Ramkot 28A', 'BCL, Ramkot 28A'),
(60, 0, 'Brihat Cluster, Balkhu, 22B', 'a:1:{i:0;s:20:\"NUKnk-untitled-5.jpg\";}', '<div>\r\n	Contemporary homes, designed to cater modern living, Brihat cluster- Balkhu offers excellent value house built to quality living.The Brihat cluster housing conveniently located in heart of city, at Balkhu.</div>\r\n<div>\r\n	&nbsp;</div>\r\n', 'brihat-cluster-balkhu-22b', 52, 1, '', 'Nice and small family house located inside the Ringroad at Balkhu. Located at the middle of city.\r\n', 0, 'Free', 1, '', '+977-1-4033303', '9802020063', 'Sold', 'Sold', '', '115.28 sqm', '1', '4', '3', '1', '', '', 3, '6', '', '', '48', '', '3', '1', 'North', '', 'Gravelled', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', 'metres', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 0, 3, 2, 2, '', 'Brihat Cluster, Balkhu, 22B', 'Brihat Cluster, Balkhu, 22B', 'Brihat Cluster, Balkhu, 22B'),
(70, 3, 'Shakya Property', 'a:1:{i:0;s:15:\"P4yMT-suraj.jpg\";}', 'dddddddddddddddddddd', 'shakya-property', 53, 0, '10', 'abc', 0, '', 0, '2019-12-28', '1254847854', '', '15400000', '1600000', '', '4', '3', '2', '2', '2', 'Rent', 'Under Construction', 3, '5', '', '', '50', NULL, '2', '2', 'south', '', '', NULL, '', '2', '2', 0, 0, 0, '', 'd', '', 'd', '', '', '', '', '', 'd', 'd', '', '', '', '', '', '', '', 'd', '1', 1, '', 1, '1', '', '', '', '', '', '', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(76, 1, 'raniban property', 'a:0:{}', 'test', 'raniban-property', 54, 0, '9', '', 0, '', 0, '2020-02-05', '0148995858', '987777779', '2222', '44444', '', '7145.12 sqm', '', '', '', '', 'Sale', '', 3, '6', 'Kathmandu', 'Ktm', '1', 'Balaju', '', '', 'West', '', 'Gravelled', 'Black topped', '3.5 ft', '', '', 0, 0, 0, '', '', '', 'RCC', '', '42', 'Yes', '', 'testt', '339 m', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0, '', '', '', '', '', '', '', '', 'Terai', 'No', 1, 1, 2, 0, 0, 0, 0, 0, '', '', '', ''),
(77, 2, 'Land and Building', 'a:0:{}', 'The property is in community living area', 'land-and-building', 55, 0, '15', '', 0, '', 0, '', '9851157833', '98877666', '5665544', '28400000.00', '', '4.32 anna', '', '', '', '', 'Sale', '', 3, '6', '', '', '48', 'Sitapaila', '4', '1', 'North East', '', '', 'Motorable Road', '10 ft', '1', '', 0, 0, 0, '', '2000', '', 'RCC', '', '1', '', '', '', '2.5 km from Sitapaila chowk', '1', '', '', '', '', '', '', '', '1', '1', 1, NULL, 1, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 0, 4, 3, 2, '', '', '', ''),
(78, 3, 'Shakya', 'a:1:{i:0;s:20:\"kffta-untitled-1.jpg\";}', 'family property', 'shakya', 56, 0, '13', '', 0, '', 0, '2019-12-29', '4821163', '9841106614', '1400000', '1500000', '', '7635.08 sqm', '1512', '33', '33', '33', 'Sale', 'Ready to Move', 1, '29', 'Bhojpur', 'bhojpur', '55', 'bhojpur', '3', '33', 'north', 'Semi-furnished', 'Black topped', NULL, '25', '33', '1', 1, 1, 1, '33', '33', '33', 'RCC', '', '1515', 'No', '', 'abc', '15 km', '33', '33', '33', '33', '33', '33', '33', '33', '33', '33', 0, NULL, 0, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', '', 0, 0, 0, 0, 15, 0, 0, 2, '', '', '', ''),
(79, 3, 'Sunita', 'a:1:{i:0;s:27:\"iLfx6-technical-support.png\";}', 'ddd', 'sunita', 57, 0, '12', '', 0, '', 0, '2020-01-27', '11', '11', '1200000', '1500000', '', '2201.92 sqm', '', '', '', '', '', '', 1, '29', 'Bhojpur', 'bhojpur', '50', 'bhojpur', '', '', 'north', '', 'Black topped', NULL, '25', '', '', 0, 0, 0, '', '', '', '', '', '44', 'No', '44', '44', '44', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 4, 4, 4, 4, '', '', '', ''),
(80, 0, 'Land for sale at Chappal Karkhana', 'a:1:{i:0;s:34:\"nr6T0-land-at-chappal-karkhana.jpg\";}', '<p style=\"margin-left:1.0in;\">\r\n	<strong>Attractive Land at Maharajgunj area.</strong></p>\r\n<ul>\r\n	<li>\r\n		Just 7 mins walking distance from Olive &amp; Basil, Mahargunj Chakrapath</li>\r\n	<li>\r\n		1.4 km from Bhatbhateni Supermarket, Maharajgunj Chakrapath</li>\r\n</ul>\r\n<p style=\"margin-left:.25in;\">\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n', 'land-for-sale-at-chappal-karkhana', 58, 1, '12', 'This land is located near Bhatbhateni Supermarket at Maharajgung and about 1.5 km from the Supermarket. From Narayangopal Chowk  to Ganesh Basti (Chapal Karkhana) 1 k.m\r\n\r\nLand Marks nearby the land are :Sales berry,olive & Basil Food Hub,Qatar Visa Center', 1, '', 0, '', '14033303', '9802020065/58/63', '4,500,000 per Aana', '4,500,000 per Aana', '', '816.81 sqm', '', '', '', '', 'Sale', '', 3, '6', 'Municipality', 'Kathmandu', '56', '', '', '', 'South', '', 'Black topped', NULL, '', '', '', 0, 0, 0, '', '', '', '', '', '', 'Yes', '', 'Walking distance from Bhatbhateni at Maharajgung', '15 minutes walk ', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0, '', '', '', '', '', '', '', '', 'Hilly', 'No', 0, 0, 0, 0, 1, 9, 2, 3, '', 'Land Sale near Chappal Karkhana', 'Land Sale near Chappal Karkhana, Ideal for residence and commercial purpose, center of city', 'best price, at the city center'),
(81, 0, 'BCL - Ramkot, Type 31 H', 'a:1:{i:0;s:16:\"fdF5K-type-h.jpg\";}', '<p style=\"text-align: justify;\">\r\n	An exceptional and stunning residence developed by the Brihat Group&rsquo;s Brihat community Living (BCL) to a standard of breathtaking luxury. Buy houses inside Kathmandu with attractive features for you and your family.</p>\r\n<p style=\"text-align: justify;\">\r\n	The Brihat Community Living is conveniently located in the heart of city, at Kalanki, Ramkot, Sitapaila, Kathmandu, just 2.4 km from Ringroad Sitapaila chowk, 2.0 km from Salesberry and 1.5 km from Suvekshya Hospital. This is the first eco-friendly urbanization product in Nepal.</p>\r\n<p style=\"text-align: justify;\">\r\n	The plot area is 0-5-0-3 . The built-up area is 2632 sq. ft . The type 31 H has 4 bedrooms and 4 bathrooms. The house has large interior spaces and recreational facilities. With beneficial landmarks like hospitals, grocery stores and supermarkets, these houses are designed with locality in consideration to cater modern living. Brihat Community Living, Ramkot offers excellent value houses built for quality living.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n', 'bcl-ramkot-type-31-h', 59, 1, '10', 'The plot area is 0-5-0-3 . The built-up area is 2632 sq. ft . The type 31 H has 4 bedrooms and 4 bathrooms. The house has large interior spaces and recreational facilities. With beneficial landmarks like hospitals, grocery stores and supermarkets, these houses are designed with locality in consideration to cater modern living. Brihat Community Living, Ramkot offers excellent value houses built for quality living.', 1, 'Payment', 0, '2020-08-25', '+977-1-4033303/04', '9802020065/58/63', '32,412,000.00', '32,412,000.00', '', '164.97 sqm', '2632', '4', '3', '1', 'Sale', 'Ready afte a year', 3, '6', 'Nagarjun', 'Kathmandu', '49', '', '2.5', '1', 'North', 'N/A', 'Black topped', NULL, '22 ft.', '', '1', 1, 1, 0, 'on common areas only', 'As per community management', 'Yes', 'RCC', '', '31 H', '', '', 'Sitapaila Chowk', '2.4 kilometres', '2', '1', '1', '', '', '1', '1', '', '1', '1', 0, NULL, 0, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'No', 'No', 'Hilly', 'Yes', 0, 0, 0, 0, 0, 5, 0, 3, '', 'An exceptional and stunning residence developed by the Brihat Group’s Brihat community Living (BCL) to a standard of breathtaking luxury. Buy houses inside Kathmandu with attractive features for you and your family.  The Brihat Community Living is conveni', 'An exceptional and stunning residence developed by the Brihat Group’s Brihat community Living (BCL) to a standard of breathtaking luxury. Buy houses inside Kathmandu with attractive features for you and your family.\r\n\r\nThe Brihat Community Living is conveniently located in the heart of city, at Kalanki, Ramkot, Sitapaila, Kathmandu, just 2.4 km from Ringroad Sitapaila chowk, 2.0 km from Salesberry and 1.5 km from Suvekshya Hospital. This is the first eco-friendly urbanization product in Nepal.\r\n\r\nThe plot area is 0-5-0-3 . The built-up area is 2632 sq. ft . The type 31 H has 4 bedrooms and 4 bathrooms. The house has large interior spaces and recreational facilities. With beneficial landmarks like hospitals, grocery stores and supermarkets, these houses are designed with locality in consideration to cater modern living. Brihat Community Living, Ramkot offers excellent value houses built for quality living.\r\n\r\n', 'An exceptional and stunning residence developed by the Brihat Group’s Brihat community Living (BCL) to a standard of breathtaking luxury. Buy houses inside Kathmandu with attractive features for you and your family.\r\n\r\nThe Brihat Community Living is conveniently located in the heart of city, at Kalanki, Ramkot, Sitapaila, Kathmandu, just 2.4 km from Ringroad Sitapaila chowk, 2.0 km from Salesberry and 1.5 km from Suvekshya Hospital. This is the first eco-friendly urbanization product in Nepal.\r\n\r\nThe plot area is 0-5-0-3 . The built-up area is 2632 sq. ft . The type 31 H has 4 bedrooms and 4 bathrooms. The house has large interior spaces and recreational facilities. With beneficial landmarks like hospitals, grocery stores and supermarkets, these houses are designed with locality in consideration to cater modern living. Brihat Community Living, Ramkot offers excellent value houses built for quality living.\r\n\r\n'),
(82, 0, 'BCL - Bhaisepati, 18A1', 'a:1:{i:0;s:17:\"LXd8e-3d-18-d.jpg\";}', '<p style=\"text-align: justify;\">\r\n	Brihat Investments Pvt. Ltd. presents the perfect aesthetically pleasing views and luxurious homes at Bhaisepati. Location, itself is pre-defined residential area with several housing projects in the surrounding area. This is just 3.5 km from Ringroad and 20 minute driving distance. This is located near the junction of Bhaisepati to Khokhana diversion road, free from air and noise pollutions.</p>\r\n<p style=\"text-align: justify;\">\r\n	Five bedrooms/ Four bathrooms, living, dinning, kitchen, family lounge, store, loundry, puja room, car parking, front lawn and back yard, great outdoor spaces and plenty of room to spread your wings.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<u>Salient feature</u></p>\r\n<p>\r\n	Well designed and properly maintained landscaping</p>\r\n<p>\r\n	6m wide road paved with concrete interlocking blocks</p>\r\n<p>\r\n	Underground water supply system</p>\r\n<p>\r\n	Sewerage network&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n<p>\r\n	Separate outlet for waste products and rain water</p>\r\n<p>\r\n	Separate electricity line from Nepal electricity authority</p>\r\n<p>\r\n	Electricity back up such as solar/generator facilities for common areas</p>\r\n<p>\r\n	&nbsp;</p>\r\n', 'bcl-bhaisepati-18a1', 60, 1, '10', '', 1, '', 0, '', '', '9802020065/58/63', '43,178,000.00', '43,178,000.00', '', '278.25 sqm', '2300', '5', '2', '1', 'Sale', 'Ready afte a year', 3, '6', '', 'Bhaisepati', '50', '', '2.5', '1', 'East', 'N/A', 'Black topped', NULL, '', 'Yes', '', 0, 0, 0, '', '', '', 'RCC', '', '', 'Yes', '', 'Khokana Dobato', '100 m. ', '1', '', '2', '', '', '1', '1', '1', '1', '1', 0, NULL, 0, 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Hilly', 'No', 0, 0, 0, 0, 0, 8, 3, 0, '', 'Brihat Investments Pvt. Ltd. presents the perfect aesthetically pleasing views and luxurious homes at Bhaisepati', 'Brihat Investments Pvt. Ltd. presents the perfect aesthetically pleasing views and luxurious homes at Bhaisepati. Location, itself is pre-defined residential area with several housing projects in the surrounding area. This is just 3.5 km from Ringroad and 20 minute driving distance. This is located near the junction of Bhaisepati to Khokhana diversion road, free from air and noise pollutions.\r\n\r\nFive bedrooms/ Four bathrooms, living, dinning, kitchen, family lounge, store, loundry, puja room, car parking, front lawn and back yard, great outdoor spaces and plenty of room to spread your wings.\r\n\r\n\r\n\r\nSalient feature\r\n\r\nWell designed and properly maintained landscaping\r\n\r\n6m wide road paved with concrete interlocking blocks\r\n\r\nUnderground water supply system\r\n\r\nSewerage network       \r\n\r\nSeparate outlet for waste products and rain water\r\n\r\nSeparate electricity line from Nepal electricity authority\r\n\r\nElectricity back up such as solar/generator facilities for common areas\r\n\r\n', 'Brihat Investments Pvt. Ltd. presents the perfect aesthetically pleasing views and luxurious homes at Bhaisepati. Location, itself is pre-defined residential area with several housing projects in the surrounding area. This is just 3.5 km from Ringroad and 20 minute driving distance. This is located near the junction of Bhaisepati to Khokhana diversion road, free from air and noise pollutions.\r\n\r\nFive bedrooms/ Four bathrooms, living, dinning, kitchen, family lounge, store, loundry, puja room, car parking, front lawn and back yard, great outdoor spaces and plenty of room to spread your wings.\r\n\r\n\r\n\r\nSalient feature\r\n\r\nWell designed and properly maintained landscaping\r\n\r\n6m wide road paved with concrete interlocking blocks\r\n\r\nUnderground water supply system\r\n\r\nSewerage network       \r\n\r\nSeparate outlet for waste products and rain water\r\n\r\nSeparate electricity line from Nepal electricity authority\r\n\r\nElectricity back up such as solar/generator facilities for common areas\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_propertyimage`
--

CREATE TABLE `tbl_propertyimage` (
  `id` int(11) NOT NULL,
  `propertyid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_propertyimage`
--

INSERT INTO `tbl_propertyimage` (`id`, `propertyid`, `title`, `image`, `sortorder`, `status`) VALUES
(13, 11, 'Ground Floor Plan', 'aJQB1-untitled-1.jpg', 1, 1),
(14, 11, 'First Floor Plan', 'bsRrF-untitled-2.jpg', 2, 1),
(15, 11, 'Second Floor Plan', 'u4XA7-untitled-3.jpg', 3, 1),
(16, 12, 'Outside View', 't18K3-untitled-1.jpg', 1, 1),
(17, 12, 'Stairs', 'ESRIb-untitled-2.jpg', 2, 1),
(18, 12, 'Room', 'CBhAA-untitled-3.jpg', 3, 1),
(19, 12, 'Room', '8yZ9k-untitled-4.jpg', 4, 1),
(20, 12, 'Room', 'wjBxi-untitled-5.jpg', 5, 1),
(21, 12, 'Room', 'vdDhU-untitled-6.jpg', 6, 1),
(22, 12, 'Room', 'd1TH0-untitled-7.jpg', 7, 1),
(23, 12, 'Bathroom', 'Q50fe-untitled-8.jpg', 8, 1),
(24, 12, 'Room', 'rsNVc-untitled-9.jpg', 9, 1),
(25, 12, 'Room', 'hLLxe-untitled-10.jpg', 10, 1),
(26, 12, 'Room', 'a0KDe-untitled-11.jpg', 11, 1),
(27, 12, 'Room', 'nejsD-untitled-12.jpg', 12, 1),
(28, 12, 'Bathroom', '7Ativ-untitled-13.jpg', 13, 1),
(29, 12, 'Bathroom', 'mZMvV-untitled-14.jpg', 14, 1),
(30, 12, 'Stairs', 'zsj0Q-untitled-15.jpg', 15, 1),
(31, 12, 'Outside View', 'ae8vy-untitled-16.jpg', 16, 1),
(32, 12, 'Living Room', 'sCpid-untitled-17.jpg', 17, 1),
(33, 12, 'Living Room', '0PTbk-untitled-18.jpg', 18, 1),
(34, 12, 'Living Room', 'NWk70-untitled-19.jpg', 19, 1),
(35, 12, 'Living Room', '8kSNb-untitled-20.jpg', 20, 1),
(36, 12, 'Kitchen', '5I0dp-untitled-21.jpg', 21, 1),
(37, 12, 'Ground Floor Plan', 'oZcWi-untitled-22.jpg', 22, 1),
(38, 12, 'First & Second Floor Plan', '5lQsI-untitled-23.jpg', 23, 1),
(39, 12, 'Master Plan', 'OctMj-untitled-24.jpg', 24, 1),
(40, 12, 'Outside View', 'uAZKl-untitled-25.jpg', 25, 1),
(42, 13, 'Entrance', '6IdtJ-untitled-3.jpg', 1, 1),
(44, 13, 'Outside View', 'sx08A-untitled-4.jpg', 2, 1),
(45, 13, '3D View', 'aG8vD-untitled-5.jpg', 3, 1),
(46, 5, 'Room', 'QXY6o-untitled-1.jpg', 1, 1),
(47, 5, 'Room', 'G3owq-untitled-2.jpg', 2, 1),
(48, 5, 'Dining', 'HHbM4-untitled-3.jpg', 3, 1),
(49, 5, 'Outside View', 'SsYC1-untitled-4.jpg', 4, 1),
(50, 5, 'Sofa', '5ytFL-untitled-5.jpg', 5, 1),
(51, 5, 'Room', 'ZA0Js-untitled-6.jpg', 6, 1),
(52, 5, 'TV', 'WL16c-untitled-7.jpg', 7, 1),
(53, 5, 'Living Room', 'z0DCA-untitled-8.jpg', 8, 1),
(54, 5, 'Dining', 'WOQJ2-untitled-9.jpg', 9, 1),
(55, 5, 'Room', 'ZEOXa-untitled-10.jpg', 10, 1),
(56, 14, 'Outside', 'eps5l-untitled-1.jpg', 1, 1),
(57, 14, 'Outside', 'f5LUP-untitled-2.jpg', 2, 1),
(58, 14, 'Room', 'RCgkN-untitled-3.jpg', 3, 1),
(59, 14, 'Dining', 'aaE56-untitled-4.jpg', 4, 1),
(60, 14, 'Sofa', 'HOX6f-untitled-5.jpg', 5, 1),
(61, 14, 'Kitchen', 'ITcOn-untitled-6.jpg', 6, 1),
(62, 14, 'Room', 'CPQgF-untitled-7.jpg', 7, 1),
(63, 14, 'Living Room', 'tyHbH-untitled-8.jpg', 8, 1),
(64, 14, 'Outside View', 'KzgSS-untitled-9.jpg', 9, 1),
(65, 15, 'Apartment', 'iHFOD-untitled-1.jpg', 1, 1),
(70, 16, 'Plan', '4lKhS-untitled-1.jpg', 1, 0),
(71, 16, 'Plan', 'Dy1Qc-untitled-2.jpg', 2, 1),
(72, 16, 'Plan', 'jRBQR-untitled-3.jpg', 3, 1),
(73, 16, 'Outside View', 'm1iUy-untitled-4.jpg', 4, 1),
(74, 16, 'Outside View', 'PeZ3J-untitled-5.jpg', 5, 1),
(75, 16, 'Plan', 'Ghey7-untitled-6.jpg', 6, 1),
(76, 17, 'Outside View', 'CfhKz-untitled-5.jpg', 1, 1),
(77, 17, 'Plan', 'MORm0-untitled-6.jpg', 2, 1),
(78, 17, 'Plan', 'F5Sn8-untitled-1.jpg', 3, 1),
(79, 17, 'Plan', 'EAAME-untitled-2.jpg', 4, 1),
(80, 17, 'Plan', 'bBuig-untitled-3.jpg', 5, 1),
(81, 17, 'Plan', 'iStNQ-untitled-2.jpg', 6, 1),
(82, 17, 'Plan', 'qvxSv-untitled-3.jpg', 7, 1),
(83, 17, 'Outside View', '4AUHS-untitled-4.jpg', 8, 1),
(84, 18, 'Outside View', 'TgAF5-untitled-1.jpg', 1, 1),
(85, 7, 'Outside View', 'WVET1-untitled-1.jpg', 1, 1),
(86, 7, 'Ground Floor Plan', 'NQKil-untitled-2.jpg', 2, 1),
(87, 7, 'First Floor Plan', 'F5aK9-untitled-3.jpg', 3, 1),
(88, 7, 'Second Floor Plan', 'LKGqE-untitled-4.jpg', 4, 1),
(89, 6, 'Outside View', 'ZSjFy-untitled-1.jpg', 1, 1),
(90, 6, 'Outside View', 'HTA5r-untitled-2.jpg', 2, 1),
(91, 6, 'Living Room', 'JFiY4-untitled-3.jpg', 3, 1),
(92, 6, 'TV', '6MOBX-untitled-4.jpg', 4, 1),
(93, 6, 'Dining', 'iuVrI-untitled-5.jpg', 5, 1),
(94, 6, 'Sofa', '63baW-untitled-6.jpg', 6, 1),
(95, 6, 'Room', 'IMxMq-untitled-7.jpg', 7, 1),
(96, 6, 'Room', 'wzDE2-untitled-8.jpg', 8, 1),
(97, 6, 'Room', 'fpSaK-untitled-9.jpg', 9, 1),
(98, 6, 'Plan', 'YwHBZ-untitled-10.jpg', 10, 1),
(99, 6, 'Plan', 'Xpytg-untitled-11.jpg', 11, 1),
(100, 6, 'Plan', 'M9DU7-untitled-12.jpg', 12, 1),
(101, 5, 'Outside View', 'kxxDz-untitled-1.jpg', 11, 1),
(102, 5, 'Plan', 'NxhGM-untitled-10.jpg', 12, 1),
(103, 5, 'Plan', '3YWPh-untitled-11.jpg', 13, 1),
(104, 5, 'Plan', 'PqFVu-untitled-12.jpg', 14, 1),
(105, 3, 'Outside View', 'xZRNX-untitled-13.jpg', 1, 1),
(106, 3, 'Plan', '1rJhi-untitled-14.jpg', 2, 1),
(107, 3, 'Plan', 'PMj44-untitled-15.jpg', 3, 1),
(108, 21, 'Outside View', 'qx5E9-untitled-1.jpg', 1, 1),
(109, 21, 'Ground Floor Plan', '5unSI-untitled-2.jpg', 2, 1),
(110, 21, 'First Floor Plan', 'WcwHn-untitled-3.jpg', 3, 1),
(111, 21, 'Second Floor Plan', 'VPN3N-untitled-4.jpg', 4, 1),
(112, 22, 'Ground Floor Plan', 'mexxu-untitled-1.jpg', 1, 0),
(113, 22, 'Plan', '2pTgj-untitled-2.jpg', 2, 1),
(114, 22, 'Second Floor Plan', 'AP68t-untitled-3.jpg', 3, 1),
(115, 22, 'Outside View', 'GNnzN-untitled-4.jpg', 4, 0),
(116, 23, 'Ground Floor Plan', 'o9LPu-untitled-5.jpg', 1, 0),
(117, 23, 'First Floor Plan', 'FhJvp-untitled-6.jpg', 2, 1),
(118, 23, 'Second Floor Plan', 'FKbjZ-untitled-7.jpg', 3, 1),
(119, 23, 'Outside View', 'xDC6z-untitled-8.jpg', 4, 1),
(120, 10, 'Ground Floor Plan', 'eMusw-untitled-9.jpg', 1, 1),
(121, 10, 'First Floor Plan', 'Shfgc-untitled-10.jpg', 2, 1),
(122, 10, 'Second Floor Plan', 'TMbMj-untitled-11.jpg', 3, 1),
(123, 10, 'Outside View', 'lTxmu-untitled-12.jpg', 4, 1),
(124, 38, 'Outside View', 'bpV7i-untitled-13.jpg', 1, 1),
(125, 39, 'Outside View', 'PGqUE-untitled-13.jpg', 1, 1),
(126, 50, 'Land', 'TnYx3-untitled-15.jpg', 1, 1),
(128, 53, 'Apartment', 'Ab6bG-untitled-18.jpg', 1, 1),
(129, 53, 'Apartment', 'kK2f8-untitled-19.jpg', 2, 1),
(130, 54, 'Living Room', 'asqV4-untitled-20.jpg', 1, 1),
(131, 54, 'Kitchen', 'U0TmC-untitled-21.jpg', 2, 1),
(132, 54, 'Room', 'IK822-untitled-22.jpg', 3, 1),
(133, 54, 'Room', 'fBxl4-untitled-23.jpg', 4, 1),
(134, 54, 'Room', 'fLbDU-untitled-24.jpg', 5, 1),
(135, 55, 'Kitchen', 'NTRpW-untitled-25.jpg', 1, 1),
(136, 55, 'Kitchen', 'JrJkP-untitled-26.jpg', 2, 1),
(137, 55, 'Room', 'tm06F-untitled-27.jpg', 3, 1),
(138, 55, 'Room', '0CVqw-untitled-28.jpg', 4, 1),
(139, 55, 'Living Room', 'Q30Lr-untitled-29.jpg', 5, 1),
(140, 18, 'Dining', 'V2VdG-untitled-30.jpg', 2, 1),
(141, 18, 'Stairs', 'QJn4p-untitled-31.jpg', 3, 1),
(142, 18, 'Living Room', '8gYzB-untitled-32.jpg', 4, 1),
(143, 18, 'Room', 'ZgzWq-untitled-33.jpg', 5, 1),
(144, 18, 'Room', '66n5P-untitled-34.jpg', 6, 1),
(145, 18, 'Dining', 'mrPnW-untitled-35.jpg', 7, 1),
(146, 18, 'Stairs', 'V77Ba-untitled-36.jpg', 8, 1),
(147, 18, 'Kitchen', 'KpFZk-untitled-37.jpg', 9, 1),
(148, 18, 'Room', 'pXKRd-untitled-38.jpg', 10, 1),
(149, 48, 'Outside View', 'qiLd7-untitled-1.jpg', 1, 1),
(150, 48, 'Ground Floor Plan', 'a1FJK-untitled-2.jpg', 2, 1),
(151, 48, 'Lower Ground Floor Plan I', 'nuWUD-untitled-3.jpg', 3, 1),
(152, 48, 'Lower Ground Floor Plan II', 'DvVXi-untitled-4.jpg', 4, 1),
(153, 48, 'Plan', 'sodQI-untitled-5.jpg', 5, 1),
(154, 48, 'Outside View', 'XansM-untitled-6.jpg', 6, 1),
(155, 48, 'Outside View', 'HoouR-untitled-7.jpg', 7, 1),
(156, 49, 'Outside View', '6JFuW-untitled-8.jpg', 1, 1),
(157, 49, 'Outside View', '8NEQU-untitled-9.jpg', 2, 1),
(158, 49, 'Plan', '4htYi-untitled-10.jpg', 3, 1),
(159, 9, 'Outside View', '6CSHg-untitled-1.jpg', 1, 1),
(160, 9, 'Plan', 'QRRtS-untitled-2.jpg', 2, 1),
(161, 9, 'Plan', 'HHLlo-untitled-3.jpg', 3, 1),
(162, 58, 'Land', 'tm13Q-untitled-4.jpg', 1, 1),
(163, 59, 'Outside View', 'sbNib-untitled-5.jpg', 1, 1),
(164, 60, 'Outside View', 'l7thW-untitled-6.jpg', 1, 1),
(165, 44, 'First Floor Plan', 'u479M-untitled-2.jpg', 1, 1),
(166, 44, 'Second Floor Plan', 'DcyVx-untitled-3.jpg', 2, 1),
(167, 44, 'Top Floor', 'YYUU0-untitled-4.jpg', 3, 1),
(168, 56, 'Introduction', 'VLn3T-untitled-2.jpg', 1, 1),
(169, 56, 'Plot Area & Road Access', '8AWLq-untitled-3.jpg', 2, 1),
(170, 56, 'Plot 1', 'rDNeC-untitled-4.jpg', 3, 1),
(171, 56, 'Plot 2', 'onPju-untitled-5.jpg', 4, 1),
(172, 56, 'Plot 3', 'gJmt4-untitled-6.jpg', 5, 1),
(173, 56, 'Plot 4', '4ZcFg-untitled-7.jpg', 6, 1),
(174, 56, 'Residential House', 'pTyyE-untitled-8.jpg', 7, 1),
(175, 56, 'Residential House', 'xZL4h-untitled-9.jpg', 8, 1),
(176, 56, 'Ground Floor Plan', 'omQIg-untitled-10.jpg', 9, 1),
(177, 56, 'First Floor Plan', 'Rk5BJ-untitled-11.jpg', 10, 1),
(178, 56, 'Second Floor Plan', 'ZBZtY-untitled-12.jpg', 11, 1),
(179, 56, 'Sellable Amount', 'zjAB2-untitled-13.jpg', 12, 1),
(180, 56, 'Plan', '7CbVq-untitled-14.jpg', 13, 1),
(181, 56, 'Conclusion', 'URHge-untitled-15.jpg', 14, 1),
(182, 56, 'Thank you', 'fL2O7-untitled-16.jpg', 15, 1),
(183, 57, 'Brihat Cluster housing-Balkhu', 'rJvnf-untitled-3.jpg', 1, 1),
(184, 57, 'Brihat Cluster housing-Balkhu', 'Notax-untitled-4.jpg', 2, 1),
(185, 8, 'Ground Floor', '4TVs5-ground-floor-plan---71-as.jpg', 1, 1),
(186, 8, 'First Floor', 'DF7LX-first-floor-plan---71as.jpg', 2, 1),
(187, 8, 'Second Floor', '30iSg-second-floor-plan---71-as.jpg', 3, 1),
(188, 8, 'Roof Plan', '4hMSZ-roof-plan---71-as.jpg', 4, 1),
(189, 51, 'Premium land on Sale at Thankot', 'qCWca-thankot.jpg', 1, 1),
(190, 52, 'Residential Land at Bhaisepati', 'i4eAJ-extended-area-land-26-ana.jpg', 1, 1),
(191, 80, 'Land for sale at Chappal Karkhana', 'KPzK3-land-at-chappal-karkhana.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_province`
--

CREATE TABLE `tbl_province` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `capital` varchar(100) NOT NULL,
  `no_of_district` int(11) NOT NULL,
  `area` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sortorder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_province`
--

INSERT INTO `tbl_province` (`id`, `title`, `capital`, `no_of_district`, `area`, `status`, `sortorder`) VALUES
(1, 'Province No. 1', 'Biratnagar', 14, '25,905 km²', 1, 1),
(2, 'Province No. 2', 'Janakpur', 8, '9,661 km²', 1, 2),
(3, 'Province No. 3', 'Hetauda', 13, '20,300 km²', 1, 3),
(4, 'Gandaki', 'Pokhara', 11, '21,504 km²', 1, 4),
(5, 'Province No. 5', 'Butwal', 12, '22,288 km²', 1, 5),
(6, 'Karnali', 'Birendranagar', 10, '27,984 km²', 1, 6),
(7, 'Sudurpashchim', 'Godawari', 9, '19,539 km²', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `comments` varchar(200) NOT NULL,
  `event_id` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `content` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`id`, `slug`, `title`, `image`, `linksrc`, `linktype`, `content`, `status`, `added_date`, `sortorder`, `type`) VALUES
(2, 'multiple-listing-services', 'Multiple Listing Services', 'a:1:{i:0;s:42:\"fZ5zE-l3mzyjx2nvjfkv6bej9r-homecropped.jpg\";}', '', 0, '<p style=\"text-align: justify;\">\r\n	An Individual seller having no network and prior experience of selling properties are prone to various scams. BPS multiple listing service (MLS) ensures both fast and secure property transaction for both seller and buyer.&nbsp;</p>\r\n<hr id=\"system_readmore\" style=\"border-style: dashed; border-color: orange;\" />\r\n<p style=\"text-align: justify;\">\r\n	Through BPS&#39;s vast network and unmatchable experience on handling properties, both sellers and buyers can enjoy their investment stress free once a simple form is filled. How relieving is that.</p>\r\n<p>\r\n	<span style=\"text-align: justify;\">A new concept in Nepal, where properties on sales are listed in Multiple Listing System (MLS) via various sources. MLS is a system that helps buyers and sellers act accordingly and make an informed decision. BPS provides opportunity for sellers and buyers to contact the company for selling and buying properties. Trained, and trustworthy real estate professional are the seller/buyer agent of the company.</span></p>\r\n<p style=\"text-align: justify;\">\r\n	MLS offers a wide data collection and provides the specifications of each home that are structurally sound and legally secured. This will help buyers to purchase home based on correct information such as location, amenities, number of rooms, area of the house etc.&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<strong><u>MLS For the Sellers</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	BPS facilitates sellers by selling their property in reasonable market price without any difficulties. It follows a simple procedure for listing and selling properties.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p>\r\n	<strong><u>The Procedure:</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	1. After a seller comes with the purpose of selling their property along with the respective properties&#39; legal document a contract is formed between BPS and the seller stating the fees and other mutual conditions disclosed both to the seller and BPS. Each party will have a copy of the contract.<br />\r\n	2. A team of experts is then sent to analyze the property for location, structural damages.<br />\r\n	3. When both the steps above are standardized, BPS lists the property through its vast network of websites, on the ground sources, newspaper ads and other various promotional sources. It also circulates the properties to Real Estate Marketing Agents (REMAs).<br />\r\n	4. Thereafter when a potential buyer calls in, BPS completely handles the process themselves through their own professionalism and within a matter of days the property is sold.<br />\r\n	5. Sellers also have the facility to delist the property</p>\r\n<p>\r\n	<strong>(For detailed policy on listing/delisting mechanism please refer to the document attached, download)</strong></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<strong><u>MLS For The Buyers</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	For the buyer, BPS shows multiple sites for sale according to their individual requirements. The thorough examination of the property whilst selling, for structural damages and legal documents ensures a secure and reliable transaction.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p>\r\n	<strong><u>The Procedure:</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	1. The buyer contacts BPS marketing agent to buy property listed in Multiple Listing Services; is inquired for the type and condition of the property they are looking for.<br />\r\n	2. After showing certain interest for a property type the buyer is then guided to the location for examination of the property where his queries are met.<br />\r\n	3. When the buyer is ready to buy the books the property by filling a buyer form and paying 10-15% of total property valuation (rates vary case-to-case).<br />\r\n	4. A contract is then signed within a week from the date of booking by paying 40-50% of total amount to BPS with the remaining amount to be paid after 30days or on the date of property transfer.<br />\r\n	5. As soon as the payment is completed the transfer will be made. BPS will provide home loan facilities if required.</p>\r\n<p style=\"text-align: justify;\">\r\n	<strong>(For detailed policy on buying process please refer to the document attached,download)</strong></p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p>\r\n	<strong><u>Benefits of MLS</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	1. Maximum exposure of the properties on sale.<br />\r\n	2. Easy access for seller to list properties.<br />\r\n	3. Easy accessfor buyer to buy properties as per the requirement from varieties of choice.<br />\r\n	4. Quick response to address queries, visiting, organizing, providing information, dealing and transferring.<br />\r\n	5. Professional service from listing to selling and buying process without any hassle.</p>\r\n<p>\r\n	&nbsp;</p>\r\n', 1, '2019-10-17 16:38:35', 5, 0),
(3, 'real-estate-marketing-agent-course-rema-course-in-nepal', 'Real Estate Marketing Agent Course (REMA Course) in Nepal', 'a:1:{i:0;s:41:\"E1pnh-viber_image_2020-03-14_12-44-01.jpg\";}', '', 0, '<p style=\"text-align: justify;\">\r\n	We have been conducting Real Estate Marketing Agent (REMA) course since 2009 to develop trustworthy, professional and trained agents in the market. The course not only certify them as agents but also enhance their capabilities significantly as well as cultivate ethics in real estate business. We have accomplished 17th REMA course and graduated 218 REMAs.</p>\r\n<hr id=\"system_readmore\" style=\"border-style: dashed; border-color: orange;\" />\r\n<!-- Content\r\n        ============================================= --><!-- Article module -->\r\n<p style=\"text-align: justify;\">\r\n	<img alt=\"\" src=\"/new/userfiles/images/LyIwqB16YxI2V5MCSYZ1.jpg\" style=\"width: 1000px; height: 675px;\" /></p>\r\n<p style=\"text-align: justify;\">\r\n	<strong><u>Background</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	With the philosophy &ldquo;Knowledge is not Private Property&rdquo; Brihat Investments Pvt. Ltd (BI) has initiated Real Estate Marketing Agent course. Brihat Investments Pvt. Ltd. embraces the professional thinking of 3 REs i.e. Real Estate Investment, Real Estate Partnering for Entrepreneurship and Real Estate Marketing Agent (REMA).</p>\r\n<p style=\"text-align: justify;\">\r\n	The REMA course was primarily organized to direct focus on and to transfer knowledge about the sustainable growth of the real-estate sector in Nepal under moral obligations and institutional standards. It was designed after realizing the need of the Real Estate Market Scenario. First REMA course was conducted in May 2009. After accomplishing first REMA course successfully, BI is encouraged to conduct such training continuously.</p>\r\n<p style=\"text-align: justify;\">\r\n	In affiliation with &ldquo;Thai Real Estate Business School,&rdquo; for the first time in Nepal, Brihat Investments P. Ltd. had conducted the Second Real Estate Marketing Agent (REMA) Course in February 2010 till April 2015.</p>\r\n<p style=\"text-align: justify;\">\r\n	We are committed for developing competent, confident and trustworthy real estate professionals who work ethically and transparently.</p>\r\n<p style=\"text-align: justify;\">\r\n	The company believes to create a new revolution for the participants&nbsp; in terms of their real estate career. While gaining crucial expertise in terms of Real Estate Marketing, participators acknowledged the session&rsquo;s importance to further enhance their career in real estate sector.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p>\r\n	<strong><u>Why REMA Course?</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	Finding a job as a real estate agent is easy, but becoming a successful real estate agent requires knowledge, skill, and information on real estate. REMA course will support you to develop a new dimension in your career while simultaneously developing new networks.</p>\r\n<p style=\"text-align: justify;\">\r\n	To give you a head start in the real estate market through this course you will be able to:</p>\r\n<p style=\"text-align: justify;\">\r\n	1. Enhance knowledge and information on Real Estate.<br />\r\n	2. Develop marketing and sales skills.<br />\r\n	3. Enhance idea on architecture, vastu and interior.<br />\r\n	4. Distinguish the difference between building &amp; construction by laws of Real Estate in Nepal.<br />\r\n	5. Get insights in Real estate law and practices in Nepal, home loans, insurance, and property valuation.<br />\r\n	6. Build relationship and develop network with different personalities.<br />\r\n	7. Generate high income and manage your own property.<br />\r\n	8. Become recognized Real Estate Agent and making it as a career.</p>\r\n<p style=\"text-align: justify;\">\r\n	The course contents of REMA are being updated every time after the recommendations of REMA&#39;s latest batch&#39;s participants. However, major course content remains&nbsp; same with few modifications as per the requirements. If you&#39;re considering a real estate career, plan to take a real estate marketing course before seeking your first customer.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p>\r\n	<strong><u>Who could be the participants of this course?</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	Anyone who is interested to develop a real estate career, buying and selling&nbsp; property, and invest in real estate.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p>\r\n	<strong><u>How to involve in this course?</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	We publish REMA announcement in social media and in out website. Interested particapants can also check in with us for any upcoming courses. Anyone can register their name during REMA course announcement; or, can register earlier for the next immediate course.</p>\r\n', 1, '2019-10-17 16:41:26', 4, 0),
(4, 'property-management', 'Property Management', 'a:1:{i:0;s:42:\"Oyr6T-sehk8goledbfwzjewctz-homecropped.jpg\";}', '', 0, '<p style=\"text-align: justify;\">\r\n	Property management focuses on managing and monitoring the operations of a residence, housing (community living), apartments, commercial and industrial properties.</p>\r\n<p style=\"text-align: justify;\">\r\n	Individuals who are unable to manage their property mostly due to their busy schedule and lack of expertise tend to outsource with a service company and get professional operation services. Operations includes buying, selling, renting and leasing are impossible to imagine without a good property management skill.</p>\r\n<hr id=\"system_readmore\" style=\"border-style: dashed; border-color: orange;\" />\r\n<p style=\"text-align: justify;\">\r\n	<img alt=\"\" src=\"/new/userfiles/images/Untitled-3.jpg\" style=\"width: 1100px; height: 212px;\" /></p>\r\n<p>\r\n	<strong><u>Types of services that we provide in Property Management</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	1. Rental Management<br />\r\n	2. Operational Management<br />\r\n	3. Utilities payment<br />\r\n	4. Up keeping the properties (House Keeping)<br />\r\n	5. Repair &amp; Maintenance<br />\r\n	6. Security<br />\r\n	7. Inspection of the property</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p>\r\n	<strong><u>Our Clients:</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	1. Punya Mansion, Dillibazar (Commercial Building)<br />\r\n	2. AnamnagarHouse (Residential cum Commercial Building)<br />\r\n	3. Brihat Community Living, Ramkot (Housing)</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: justify;\">\r\n	<strong><u>Knowledge and skill required for Property Management</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	Property Management is not easy; it is a serious business after all. The success of property operations depends on a professional property manager. One may have a beautiful house and wonderful credit score, but if you hire a property manager who is not experienced in the sphere he/she manages, it is likely to fail on the market. A successful property manager should:</p>\r\n<p style=\"text-align: justify;\">\r\n	1. Have knowledge on the laws related to real estate and have confidence in applying the laws.<br />\r\n	2. Be willing to continually do the best to maximize the return on investment<br />\r\n	3. Be focused on target goal<br />\r\n	4. Have good communicative, sociable skill along with a determination in achieving goals<br />\r\n	5. Be organized and smarthandle and work out deals at the highest level</p>\r\n<p style=\"text-align: justify;\">\r\n	Property Management is not just collecting the rent; it is a comprehensive management service where one needs a professionally trained human resource. BPS, has an experienced property management team. We provide them training, which is important to keep abreast of changing legislation and market condition.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p>\r\n	<strong><u>How we provide our services:</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	1. Identify what client wants to do with that particular property.<br />\r\n	2. Develop a strategy that will maximize their investment value.<br />\r\n	3. Identify the right human resource for the service.<br />\r\n	4. Calculate the cost and the financial resource as per the requirement.<br />\r\n	5. Property appraisal, responses to maintenance issues is concluded.<br />\r\n	6. Contact and communicate with potential client(tenant) with regular follow up is made.<br />\r\n	7. Negotiation for rental charge.<br />\r\n	8. Regular communication with the client (tenant).<br />\r\n	9. Finalization of deal and live into operation.<br />\r\n	10. Take care of the accounting and provide regular financial statement to client.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p>\r\n	<strong><u>Duty and Responsibilities of team:</u></strong></p>\r\n<p style=\"text-align: justify;\">\r\n	1. Marketing continuously<br />\r\n	2. Careful Tenant Selection<br />\r\n	3. Assuring property in good condition<br />\r\n	4. Updating frequently with the clients and the tenants<br />\r\n	5. Providing Emergency Services<br />\r\n	6. A system for success (Taking care of all the documentation and processes seriously)<br />\r\n	7. Timely rental collection<br />\r\n	8. Build and maintain harmony with the tenants<br />\r\n	9. Regular inspection of the property<br />\r\n	10. Transparent account keeping</p>\r\n<p>\r\n	&nbsp;</p>\r\n', 1, '2019-10-17 16:44:38', 3, 0),
(5, 'finance-facilitations', 'Finance Facilitations', 'a:1:{i:0;s:42:\"d1U6T-zglylyr5fejgi2w4g0pw-homecropped.jpg\";}', '', 0, '<p style=\"text-align: justify;\">\r\n	Brihat Property Solutions facilitate the buyers and sellers in according to their needs. Our Finance facilitating department supports the buyer in the following task:</p>\r\n<p style=\"text-align: justify;\">\r\n	Our Finance Facilitating department supports the buyer in the following task:</p>\r\n<hr id=\"system_readmore\" style=\"border-style: dashed; border-color: orange;\" />\r\n<!-- Content\r\n        ============================================= --><!-- Article module -->\r\n<p style=\"text-align: justify;\">\r\n	1. How much loan the buyers should apply?<br />\r\n	2. Loan Analysis</br>\r\n	3. Support in mortgage application process.<br />\r\n	4.Communicate and coordinate between the applicant (buyer) and financial institution for collecting required documents for applicant loan and forward the loan processing.<br />\r\n	5. Negotiate with financial institution in interest rate and other charges on the behalf of the buyer.<br />\r\n	6. Calculate the annual value of property appreciation.<br />\r\n	7. Support to select the right financial institution.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n', 1, '2019-10-17 16:47:52', 2, 0),
(6, 'property-consultation', 'Property consultation', 'a:1:{i:0;s:42:\"6FUXX-wyypnofargxgymtl9suq-homecropped.jpg\";}', '', 0, '<p style=\"text-align: justify;\">\r\n	We provide property consultation services for the sellers and buyers. People with little to no prior experience in handling property transactions would greatly benefit from us.</p>\r\n<p style=\"text-align: justify;\">\r\n	Real Estate Properties, be it land, house, building or an apartment are huge investments of a person&rsquo;s life. Lifelong savings are invested in it, which when not handled properly will be lost into the hands of scammers.</p>\r\n<p style=\"text-align: justify;\">\r\n	Mostly people with no prior experience in handling properties and reliable networks are the victims. Hence, people who are seeking support to make such investments with zero risk should seek the help of a professional Property Consultant/Advisor.</p>\r\n<hr id=\"system_readmore\" style=\"border-style: dashed; border-color: orange;\" />\r\n<!-- Content\r\n        ============================================= --><!-- Article module -->\r\n<p style=\"text-align: justify;\">\r\n	<img alt=\"\" src=\"/new/userfiles/images/Untitled-5(2).jpg\" style=\"width: 1100px; height: 212px;\" /></p>\r\n<p style=\"text-align: justify;\">\r\n	1. Property advisors will share their knowledge on market information and experience in such activities and will be able to provide relevant advice on purchasing property.<br />\r\n	2. Anyone who is in dilemma for making decision whether to buy an apartment or house, if they should rent or sell the property and not getting the correct idea since different choices suits different people.<br />\r\n	3. Considering, your individual circumstances, goals, and expectations, a property advisor may be able to identify long-term or short-term property investment option for you.<br />\r\n	4. The property market changes very frequently in terms of house price, interest rate fluctuations and auction clearance rates. A professional Property Advisor, through market study can help you strike the hot property on right time. In such case, you could be the first to spot a great investment opportunity.<br />\r\n	5. The Property Advisor also supports you on how purchase a property. Buying the property can be a stressful process. A property advisor may be able to assist you to better understand your property investment and work with you to support in negotiations with the seller.<br />\r\n	6. With the experience in property market, a property advisor can offer you insights and information that you may not otherwise have known.<br />\r\n	7. They can also make sure that you are getting the right investment opportunity by ensuring any necessary checks and repairs, which are carried out before settlement.<br />\r\n	8. With an experienced property advisor behind you, you could secure the investment property that is right for you.</p>\r\n<p>\r\n	Property Advisor also recommends a knowledgeable, experienced and trustworthy Real Estate agent for people who are looking for a property with more option. A good real estate agent is capable of performing numerous roles in the process of selling and buying properties. Selecting right real estate agent will help you carry out tasks efficiently.</p>\r\n', 1, '2019-10-20 11:41:33', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slideshow`
--

CREATE TABLE `tbl_slideshow` (
  `id` int(11) NOT NULL,
  `title` tinytext NOT NULL,
  `image` tinytext NOT NULL,
  `linksrc` tinytext NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `content` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `m_status` tinyint(1) NOT NULL DEFAULT 1,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_slideshow`
--

INSERT INTO `tbl_slideshow` (`id`, `title`, `image`, `linksrc`, `linktype`, `content`, `status`, `m_status`, `added_date`, `sortorder`, `type`) VALUES
(13, 'MVDGON', 'F8dIK-0asbl-main.jpg', '', 0, '', 0, 0, '2020-07-24 15:41:01', 1, 0),
(14, 'slider1', 'I8TpR-slider1.jpg', '', 0, '', 0, 0, '2023-04-06 14:58:57', 2, 0),
(15, 'slider2', 'aXoYg-slider2.jpg', '', 0, '', 0, 0, '2023-04-06 15:04:23', 3, 0),
(16, 'Distribution', 'Pyb3d-dis.jpg', '', 0, '', 1, 0, '2023-04-06 15:04:45', 4, 0),
(17, 'Vihar Visit', 'licjn-3.jpg', '', 0, '', 1, 0, '2023-04-06 15:05:35', 5, 0),
(19, 'Dhamma Talk', 'wYgJ7-2.jpg', '', 0, '', 1, 0, '2024-05-07 12:53:32', 6, 0),
(20, 'Welcoming New Executive Board Members', 'vG34i-1-(1).jpg', '', 0, '', 1, 0, '2024-05-07 12:55:23', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social_networking`
--

CREATE TABLE `tbl_social_networking` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `linksrc` tinytext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_social_networking`
--

INSERT INTO `tbl_social_networking` (`id`, `title`, `image`, `linksrc`, `status`, `sortorder`, `registered`) VALUES
(1, 'Facebook', 'fab fa-facebook-square', 'https://www.facebook.com/ymbadhammanepal', 1, 1, ''),
(2, 'Youtube', 'fab fa-youtube', 'https://www.youtube.com/', 0, 5, ''),
(3, 'linkedin', 'fab fa-linkedin-in', 'https://np.linkedin.com', 0, 4, ''),
(5, 'Twitter', 'fab fa-twitter', 'https://twitter.com', 0, 2, ''),
(6, 'Instagram', 'fab fa-instagram', 'https://www.instagram.com', 0, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribers`
--

CREATE TABLE `tbl_subscribers` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `mailaddress` varchar(250) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int(11) NOT NULL,
  `parentOf` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(225) NOT NULL,
  `linksrc` tinytext NOT NULL,
  `content` text NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `country` varchar(100) NOT NULL,
  `via_type` varchar(200) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`id`, `parentOf`, `name`, `image`, `linksrc`, `content`, `sortorder`, `status`, `country`, `via_type`, `type`) VALUES
(1, 0, 'James Kane', 'NdB6w-uzkaa-tripadviser.png', '', '<span>It</span> is the best place to rent, sell and lease the house.', 1, 1, 'Vancouver, Canada', '', 5),
(2, 0, 'Nirob Shrestha', 'H0tO2-566.png', '', '<span>It</span> is the best place to rent, sell and lease the house.', 2, 1, 'Bhutan', '', 0),
(3, 0, 'Lara Dutta', '', '', '<span>It</span> is the best place to rent, sell and lease the house.', 3, 1, 'Germany', '', 0),
(4, 0, 'Zenefer Smith', '', '', '<span>It</span> is the best place to rent, sell and lease the house.', 4, 1, 'USA', '', 0),
(5, 0, 'James Bond', '', '', '<span>It</span> is the best place to rent, sell and lease the house.', 5, 1, 'Nepal', '', 0),
(6, 0, 'Nirob Khan', '', '', '<span>It</span> is the best place to rent, sell and lease the house.', 6, 1, 'Germany', '', 0),
(7, 0, 'Lara Craft', '', '', '<span>It</span> is the best place to rent, sell and lease the house.', 7, 1, 'Belgium', '', 0),
(8, 0, 'Zenefer Lopez', '', '', '<span>It</span> is the best place to rent, sell and lease the house.', 8, 1, 'USA', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_training`
--

CREATE TABLE `tbl_training` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `given_to` varchar(255) DEFAULT NULL,
  `date` varchar(50) NOT NULL,
  `date_to` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sortorder` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_training`
--

INSERT INTO `tbl_training` (`id`, `title`, `pdf`, `given_to`, `date`, `date_to`, `status`, `sortorder`) VALUES
(4, 'Entrepreneurship Journey', '', 'Rockstart', '2014-12-09', '', 1, 1),
(5, 'JOURNEY OF NAS ( Nepal Ambulance Service)', '', '', '2014-03-18', '', 1, 2),
(6, 'Housing Scenario in Nepal', '', 'IOE', '2015-02-11', '', 1, 3),
(7, 'Entrepreneurship Journey', '', 'DAV School', '2015-03-22', '', 1, 4),
(8, 'Heading for Human Resource Crisis', '', '', '2016-03-09', '', 1, 5),
(9, 'Sustainable Green Community Village', '', '', '2016-05-17', '', 1, 6),
(10, 'Land pooling- Challenges &Opportunities', '', '', '2017-02-07', '', 1, 7),
(11, 'Nhyokha Presentation', '', 'Nhyokha Group', '2017-12-04', '', 1, 8),
(12, 'Housing Issues of Private Sector', '', 'Housing Summit', '2018-06-06', '', 1, 9),
(13, 'Fostering Entrepreneurship', '', 'KCMIT', '2018-06-14', '', 1, 10),
(14, 'Housing Issues of Private Sector', '', '', '2019-04-04', '', 1, 11),
(15, 'FDI and Country Market Update in Nepal', 'umQD0-test.pdf', '', '2019-06-06', '', 1, 12),
(16, 'test', 'ZkBBE-test.pdf', 'test', '2018-08-14', '2020-06-23', 0, 13);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `optional_email` mediumtext NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(65) NOT NULL,
  `accesskey` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `access_code` varchar(255) NOT NULL,
  `facebook_uid` varchar(255) NOT NULL,
  `facebook_accesstoken` varchar(255) NOT NULL,
  `facebook_tokenexpire` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `first_name`, `middle_name`, `last_name`, `contact`, `email`, `optional_email`, `username`, `password`, `accesskey`, `image`, `group_id`, `access_code`, `facebook_uid`, `facebook_accesstoken`, `facebook_tokenexpire`, `status`, `sortorder`, `added_date`) VALUES
(1, 'Site Admin', '', '', '', '2020ymbaclub25@gmail.com', 'support@longtail.info', 'admin', '32b9da145699ea9058dd7d6669e6bcc5', 'aYQdaT7x4KfDuKI1z6XGY6LsG', '', 1, 'x7QvEBryrt', '', '', '2019-12-22 06:08:29', 1, 1, '2014-03-26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_info`
--

CREATE TABLE `tbl_user_info` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `email2` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `zodic_sign` varchar(100) NOT NULL,
  `current_city` tinytext NOT NULL,
  `education` tinytext NOT NULL,
  `home_town` tinytext NOT NULL,
  `phone_res` varchar(30) NOT NULL,
  `phone_office` varchar(30) NOT NULL,
  `mobile_no` varchar(30) NOT NULL,
  `mobile_no2` varchar(30) NOT NULL,
  `children_name` tinytext NOT NULL,
  `pet_name` tinytext NOT NULL,
  `nick_name` varchar(255) NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `birth_place` varchar(100) NOT NULL,
  `maritial_status` enum('married','single','divorced') NOT NULL,
  `spouse_name` varchar(100) NOT NULL,
  `publish_spoush_name` tinyint(1) NOT NULL,
  `publish_children_name` varchar(255) NOT NULL,
  `career_start_date` date NOT NULL,
  `facebook_link` varchar(255) NOT NULL,
  `facebook_page` tinytext NOT NULL,
  `twitter_link` tinytext NOT NULL,
  `google_plus` tinytext NOT NULL,
  `linkedin` tinytext NOT NULL,
  `skpye_address` varchar(255) NOT NULL,
  `short_desc` text NOT NULL,
  `website` varchar(255) NOT NULL,
  `other_profession` tinytext NOT NULL,
  `question_set` int(11) NOT NULL,
  `answer_status` tinyint(1) NOT NULL COMMENT '0=>Not finished,1=>finised,2=>ongoing review,3=>complete review,',
  `notification` varchar(50) NOT NULL COMMENT 'notification for answer status complete.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `source` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `url_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `title` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `thumb_image` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `host` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `class` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `source`, `url_type`, `title`, `thumb_image`, `url`, `host`, `content`, `class`, `status`, `sortorder`, `added_date`) VALUES
(33, 'https://www.youtube.com/watch?v=JC9MkfGwLIA&ab_channel=BlackhorsePictures', 'youtube', 'SUNA BAATULI / Kali Prasad Baskota Feat. Nischal Basnet Swastima Khadka', 'http://img.youtube.com/vi/JC9MkfGwLIA/0.jpg', 'https://www.youtube.com/watch?v=JC9MkfGwLIA&amp;ab_channel=BlackhorsePictures', 'www.youtube.com', 'â@KaliprasadBaskota @SwastimaKhadkachannel CHOREOGRAPHER PRADEEP LAMA (THE NEXT)ASSITANT  CHOREOGRAPHERSRIJAN RAWALDEEPIKA TAMANGTECHNICAL TEAMAJAY MOKTANKRI...', 'youtube', 1, 1, '2023-04-06 17:12:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visitorcounter`
--

CREATE TABLE `tbl_visitorcounter` (
  `id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `action_id` int(11) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `added_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_articles`
--
ALTER TABLE `tbl_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_article_category`
--
ALTER TABLE `tbl_article_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blogcomment`
--
ALTER TABLE `tbl_blogcomment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_configs`
--
ALTER TABLE `tbl_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_external_users`
--
ALTER TABLE `tbl_external_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_galleries`
--
ALTER TABLE `tbl_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery_images`
--
ALTER TABLE `tbl_gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_group_type`
--
ALTER TABLE `tbl_group_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logo_category`
--
ALTER TABLE `tbl_logo_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs_action`
--
ALTER TABLE `tbl_logs_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pdf`
--
ALTER TABLE `tbl_pdf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_polloptions`
--
ALTER TABLE `tbl_polloptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_polls`
--
ALTER TABLE `tbl_polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_property`
--
ALTER TABLE `tbl_property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_propertyimage`
--
ALTER TABLE `tbl_propertyimage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_province`
--
ALTER TABLE `tbl_province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slideshow`
--
ALTER TABLE `tbl_slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social_networking`
--
ALTER TABLE `tbl_social_networking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_training`
--
ALTER TABLE `tbl_training`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_info`
--
ALTER TABLE `tbl_user_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_visitorcounter`
--
ALTER TABLE `tbl_visitorcounter`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_articles`
--
ALTER TABLE `tbl_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tbl_article_category`
--
ALTER TABLE `tbl_article_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_blogcomment`
--
ALTER TABLE `tbl_blogcomment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_configs`
--
ALTER TABLE `tbl_configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `tbl_external_users`
--
ALTER TABLE `tbl_external_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_galleries`
--
ALTER TABLE `tbl_galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_gallery_images`
--
ALTER TABLE `tbl_gallery_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT for table `tbl_group_type`
--
ALTER TABLE `tbl_group_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_logo_category`
--
ALTER TABLE `tbl_logo_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2483;

--
-- AUTO_INCREMENT for table `tbl_logs_action`
--
ALTER TABLE `tbl_logs_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_pdf`
--
ALTER TABLE `tbl_pdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_polloptions`
--
ALTER TABLE `tbl_polloptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_polls`
--
ALTER TABLE `tbl_polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_property`
--
ALTER TABLE `tbl_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `tbl_propertyimage`
--
ALTER TABLE `tbl_propertyimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `tbl_province`
--
ALTER TABLE `tbl_province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_slideshow`
--
ALTER TABLE `tbl_slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_social_networking`
--
ALTER TABLE `tbl_social_networking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_training`
--
ALTER TABLE `tbl_training`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user_info`
--
ALTER TABLE `tbl_user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_visitorcounter`
--
ALTER TABLE `tbl_visitorcounter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

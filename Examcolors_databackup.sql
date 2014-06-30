-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 01, 2014 at 01:18 AM
-- Server version: 5.5.34-cll-lve
-- PHP Version: 5.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `examcolors`
--

-- --------------------------------------------------------

--
-- Table structure for table `pattern`
--

CREATE TABLE IF NOT EXISTS `pattern` (
  `pattern_id` int(11) NOT NULL,
  `pattern_name` text NOT NULL,
  `pattern` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pattern`
--

INSERT INTO `pattern` (`pattern_id`, `pattern_name`, `pattern`) VALUES
(1, 'IBPS_clerk', '{"Quantitative":{"Ages":3,"Average":2,"LCM and HCF":2,"Mixture and Alligation":2,"Partnership":4,"Percentages":4,"Profit and Loss":4,"Ratio and Proportion":2,"Simple and Compound interest":3,"Simplifications":10,"Time and Distance":2,"Time and Work":2},"Computer Knowledge":{"Computer Knowledge":40},"marketing":{"marketing":40}}'),
(2, 'SBI_PO', '{"Quantitative":{"Simplifications":"3","Time and Work":3}'),
(3, 'dummy_SBI_PO', '{"Computer Knowledge":{"Computer Knowledge":10},"marketing":{"marketing":10}}');

-- --------------------------------------------------------

--
-- Table structure for table `question_level`
--

CREATE TABLE IF NOT EXISTS `question_level` (
  `question_level_id` int(11) NOT NULL,
  `question_level_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Question level table';

--
-- Dumping data for table `question_level`
--

INSERT INTO `question_level` (`question_level_id`, `question_level_name`) VALUES
(1, 'easy'),
(2, 'medium'),
(3, 'hard');

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

CREATE TABLE IF NOT EXISTS `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Question type table';

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type_name`) VALUES
(1, 'mutiple choice single select');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `group_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `options` text NOT NULL,
  `ans` text NOT NULL,
  `section_id` int(11) NOT NULL,
  `subsection_id` int(11) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `question_level_id` int(11) NOT NULL,
  `year` date NOT NULL,
  `question_info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='this main table .This hold the info of questions';

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`group_id`, `question`, `options`, `ans`, `section_id`, `subsection_id`, `question_type_id`, `question_level_id`, `year`, `question_info`) VALUES
(0, '18800 / 470 / 20', '1__false$$2__true$$3__false$$4__false$$', 'ans', 4, 4, 1, 1, '0000-00-00', ''),
(0, 'Simplfy \nb - [b -(a b) - {b - (b - a b)}   2a]', '2a__false$$4a__false$$b__false$$0__true$$', 'ans', 4, 4, 1, 1, '0000-00-00', ''),
(0, '100   50 * 2 = ?', '200__true$$150__false$$300__false$$250__false$$', 'ans', 4, 4, 1, 1, '0000-00-00', ''),
(0, 'Simplify\n(31/10) * (3/10)   (7/5) / 20', '1__false$$100__false$$0__true$$250__false$$', 'ans', 4, 4, 1, 1, '0000-00-00', ''),
(0, 'Find the value of X\nX = (6/119) * (63/8) * (17/9)', '1/4__false$$2/4__false$$6/8__true$$4/4__false$$', 'ans', 4, 4, 1, 1, '0000-00-00', ''),
(0, '(4 4Ã—18âˆ’6âˆ’8)/(123Ã—6âˆ’146Ã—5)', '7.25__false$$7.75__true$$8.25__false$$8.05__false$$', 'ans', 4, 4, 1, 1, '0000-00-00', ''),
(0, 'a * b = 2a - 3b   ab, then 3*5   5*3 = ?', '20__false$$21__false$$22__true$$23__false$$', 'ans', 4, 4, 1, 1, '0000-00-00', ''),
(0, '3034âˆ’(1002Ã·20.04)=?', '1964__false$$1984__false$$2984__true$$2964__false$$', 'ans', 4, 4, 1, 1, '0000-00-00', ''),
(0, '5.8 * 2.5   0.6 * 6.75   139.25= ?', '157.60__false$$147.80  __false$$147.60__false$$157.80__true$$', 'ans', 4, 4, 1, 1, '0000-00-00', ''),
(0, 'If a - b = 3 and a2   b2 = 29, find the value of ab.', '10__true$$12__false$$15__false$$18__false$$', 'ans', 4, 4, 1, 1, '0000-00-00', ''),
(0, '3034 - (1002 / 20.04) = ?', '2984__true$$2983__false$$2982__false$$2981__false$$', 'ans', 4, 4, 1, 1, '0000-00-00', ''),
(0, '((469   174)*(469   174) - (469 - 174)*(469 - 174))/(469 x 174)	= ?', '2__false$$4__true$$295__false$$643__false$$', 'ans', 4, 4, 1, 1, '0000-00-00', ''),
(0, 'If a - b = 3 and\na2 b2=29\n, then find the value of ab', '7__false$$8.5__false$$10__true$$12__false$$', 'ans', 4, 4, 1, 1, '0000-00-00', ''),
(0, '(16 - 6 * 2   3) / (23 - 3 * 2 )', '7/17__true$$14/23__false$$23/40__false$$2/17__false$$', 'ans', 4, 4, 1, 1, '0000-00-00', ''),
(0, '(31/10) * (3/10)   (7/5) / 20', '0__false$$107/200__false$$100__false$$1__true$$', 'ans', 4, 4, 1, 1, '0000-00-00', ''),
(0, '(6/119) * (63/8) * (17/9)', '2/3__false$$3/8__false$$9/14__false$$3/4__true$$', 'ans', 4, 4, 1, 1, '0000-00-00', ''),
(0, '(46   18 * 6   4) / (12 * 12   8 *12) = ?', '20/57__false$$113/120__false$$113/912__false$$79/120__true$$', 'ans', 4, 4, 1, 1, '0000-00-00', ''),
(0, '5005 - 5000 / 10.00', '.5__false$$5000__false$$50__false$$4505__true$$', 'ans', 4, 4, 1, 1, '0000-00-00', ''),
(0, '(272 - 32)(124   176) / (17 * 15 - 15)', '0__false$$300__true$$2.25__false$$3.25__false$$', 'ans', 4, 4, 1, 1, '0000-00-00', ''),
(0, 'A and B together can complete a piece of work in 35 days while A alone can complete the same work in 60 days. B alone will be able to complete the same work in:', '42 days__false$$84 days__true$$96 days__false$$72 days__false$$', 'ans', 4, 5, 1, 1, '0000-00-00', ''),
(0, 'A can do a piece of work in 30 days while B alone can do it in 40 days. In how many days can A and B working together do it?.', '17.14__true$$42.75__false$$27.14__false$$70__false$$', 'ans', 4, 5, 1, 1, '0000-00-00', ''),
(0, 'A can do a piece of work in 15 days and B alone can do it in 10 days. B works at it for 5 days and then leaves. A alone can finish the remaining work in', '6 days__true$$7 days__false$$8 days__false$$9 days__false$$', 'ans', 4, 5, 1, 1, '0000-00-00', ''),
(0, 'A is thrice as good a workman as B and takes 10 days less to do a piece of work than B takes. B alone can do the whole work in', '12 days__false$$20 days__false$$15 days__true$$30 days__false$$', 'ans', 4, 5, 1, 1, '0000-00-00', ''),
(0, 'cccc', 'dummy__true$$dummy__false$$dummy__false$$dummy__false$$', 'ans', 1, 1, 1, 1, '0000-00-00', 'dummy'),
(0, 'Marketing is the art of______', 'only a and b __false$$Buying more__false$$Paying more__false$$Selling more__true$$Talking more__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Marketing of services . resorted in_____', 'Manufactming concern__false$$Insurance business__false$$Hostels__false$$Manufactming concern and  Insurance business__false$$Insurance business and Hostels__true$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Marketing is a _____', 'One day effort__false$$Team effort__true$$One man effort__false$$ All the above__false$$None of the above__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'one of the following is not included in the 7Ps of marketing. Find the same', 'Product__false$$price__false$$Production__true$$Promotion__false$$None__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Home Lones can be best canvassed among', 'Builders__false$$Flat Owners__false$$Land developers__false$$Agriculturists__false$$Individulals wanting to buy a flat of house__true$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'CRM (Customer Relationship Management) is', 'A pre-sales activity__false$$A tool for lead generation__false$$An on going daily activity__false$$The task of a DSA__false$$all__true$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'One of the following is not involved in the Growth Strategies of the Company', 'Horizontal Integration__false$$Vertical Integration__false$$Diversification__false$$Intensification__false$$None__true$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'SME Means', 'Selling and Marketing Establishment__false$$Selling and Managing Employee__false$$Sales and Marketing Entity__false$$Small and Medium Enterprises__true$$None__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Bancassurance can be sold to', 'All banks__false$$All insurance companies__false$$Insurance agents__false$$All existing and prospective bank customers__true$$all__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Data mining means analyzing the data stored with', 'The DSA__false$$The front-office staff__false$$The back-office staff__false$$The customers__false$$none__true$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Storing same data in many places is called', 'Iteration__false$$Concurrency__false$$Redundancy__true$$Enumeration__false$$None__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Which of the following is the first step in the "Transaction Processing Cycle", which captures business data through various modes such as optical scanning or at an electronic commerce website?', 'Document and report generation__false$$Database maintenance__false$$Transaction processing__false$$Data entry__true$$None__false$$', 'ans', 0, 0, 0, 0, '0000-00-00', ''),
(0, 'Cross-selling is the basic function of', 'All employers__false$$All employees__false$$All sales persons__true$$Planning department__false$$All__false$$', 'ans', 0, 0, 0, 0, '0000-00-00', ''),
(0, 'Cross-selling is not effective for which one is the following products?', 'Debit cards__false$$Savings accounts__false$$Internet banking__false$$Pension loans__true$$Personal loans__false$$', 'ans', 0, 0, 0, 0, '0000-00-00', ''),
(0, 'The target group for SME loan is', 'All businessmen__false$$All professionals__false$$All SSIs__true$$ALL__false$$none__false$$', 'ans', 0, 0, 0, 0, '0000-00-00', ''),
(0, 'To change selected text to ALL CAPITAL LETTERS, click the change case button, and then click___', 'UPPERCASE__true$$UPPER ALL__false$$CAPS LOCK__false$$Lock upper__false$$Large size__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'A person who used his or expertise to gain access to other peoples computers to get information illegally or do damage is', 'Hacker__true$$Analyst__false$$Instant messenger__false$$Programmer__false$$Spammer__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'A device that connects to a network without the use of cables is said to be____', 'distributed__false$$free__true$$centralized__false$$open source__false$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Reusable optical storage will typically have the acronym', 'CD__false$$DVD__false$$ROM__false$$RW__true$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The most common type of storage devices are________', 'persistence__false$$optical__false$$magnetic__true$$flash__false$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Codes consisting of lines of varying widths or lengths that are computer readable are known as____', 'an ASCII Code__false$$a magnetic type__false$$an OCR scanner__false$$a bar code__true$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Part number, part description ,and number of parts ordered are examples of____', 'control__false$$output__false$$processing__true$$feedback__false$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'To access properties of an object, the mouse technique to use is _______', 'dragging__false$$dropping__false$$right-clicking__true$$shift-clicking__false$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Computers used the_ number systems to store data and perform calculations', 'binary__true$$octal__false$$decimal__false$$hexadecimal__false$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, '______ are attempts by individuals to obtain confidential information from you by falsifying their identity.', 'phishing trips__false$$computer viruses__false$$Spyware spams__false$$viruses__false$$phishing scams__true$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Why is it unethical to share copyrighted files with your friends', 'it is not unethical, because it is legal__false$$it is unethical because the files are being given for free__false$$ sharing copyrighted files without permission breaks copyrights laws.__true$$it is not unethical because the files are being given for free__false$$it is not unethical-anyone can access a computer__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which of the following can be used to select entire document?', 'CTRL A__true$$ALT F5__false$$SHIFT A__false$$CTRL-K__false$$CTRL H__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, '', 'any customer who walks into the bank__false$$an employee of the bank__false$$a depositor of the bankâ€™__false$$a customer who is likely to be interested in bankâ€™s product or service__true$$a borrower of the bank__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, '', 'any customer who walks into the bank__false$$an employee of the bank__false$$a depositor of the bankâ€™__false$$a customer who is likely to be interested in bankâ€™s product or service__true$$a borrower of the bank__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'A lead means', 'a prospect who is more likely to avail of the Bankâ€™s product__true$$a political leader__false$$a religious leade__false$$a bank chairman__false$$None of these__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Innovation means', 'additional perquisites__false$$implementing new ideas or new methods__true$$Compensation__false$$inspiration__false$$none__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'If Marketing is done effectively which of the\nfollowing is not required?', 'Advertisement__false$$Publicity__true$$Market Research__false$$Market Segmentation__false$$none__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'A Call means', 'calling on friends__false$$calling on bank employees__false$$calling on prospective customers__true$$to make telephone calls__false$$calling on relatives__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'The Traditional Marketing style involves', 'Telemarketing__false$$Digital Marketing__false$$Indirect Marketing__false$$Direct Marketing__true$$All of these__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Modern Method of Marketing include', 'Publicity on the net__false$$Advertisement on the net__false$$Soliciting business through e-mails__false$$Tele marketing__false$$All of these__true$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'A true marketing requires', 'Command and other mindset__false$$Control Mindset__false$$Passive mindset__false$$Active mindset__true$$None of these__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Which of the following sentences is true?', 'Marketing is not required in a Buyersâ€™ Market__false$$Marketing is not required in a Sellersâ€™s market__true$$Marketing is not required due to competition__false$$Marketing is not required due to liberalization__false$$Marketing is not required due to globalisation__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'For effective marketing the salesmen should\nhave which of these qualities?', 'Creativity__false$$Team spirit__false$$Motivation__false$$Effective communication skills__false$$All of these__true$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Market information means', 'Knowledge of shops and bazaars__false$$Knowledge of shopping malls__false$$Knowledge of customer profile and product mix__true$$knowledge of various languages__false$$None of these__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Market Research is needed for', 'checking the market area__false$$checking the right product to be sold__false$$making proper marketing decisions__false$$deciding right time to sell__false$$All of these__true$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Which of the following statement is true', 'Marketing makes the company to go into loss due to higher expenses__false$$Marketing is not required in profit making companies__false$$Marketing sharpens the minds of the employees__true$$Marketing is a time bound seasonal function__false$$Marketing is a waste of time__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Marketing plan helps in', 'better lead generation__false$$better systems__false$$better results__true$$improved balance sheet__false$$better customer service__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Motivation means', 'Inspiring employees to perform better__true$$Better communication skills__false$$Sales Coaching__false$$Market Research__false$$None of these__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'n a Selling Process in todayâ€™s world?', 'Only standard products are sold__false$$No customization required__false$$the seller need not have product knowledge__false$$the seller should aim at customer satisfaction__true$$only quantum of sales matters__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Find the true statement', 'Marketing is a waste of the employeesâ€™ time__false$$Marketing is not required in India due to its vast population__false$$Marketing involves additional work__false$$Marketing involves team work__true$$Marketing is not required today due to IT advancement__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'A Target market is', 'entire country__false$$entire city__false$$entire globe__false$$that which consists of customers who need the identified product__true$$all of these__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Sales forecasting involves', 'Sales Planning__false$$Sales Pricing__false$$Distribution Channels__false$$Consumer tastes__false$$all of these__true$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Which of the following product is being sold under\nthe brand name ZODIAC', 'Shirts__false$$Ties__false$$Both A and B__true$$Liberty__false$$all of these__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'SWIFT - cars are being manufactured by', 'DCM__false$$Maruti__true$$Premier Automobiles__false$$Hyundai__false$$all of these__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'With you all the way is the slogan of', 'Vodafone__false$$SBI__true$$ICICI__false$$Raymonds__false$$none__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Which company used the slogan â€œThe complete\nManâ€', 'DCM__false$$GRASIM__false$$RAYMONDS__true$$VIMAL__false$$none__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Cross Selling means', 'Identifying customer needs__false$$matching the products to customer needs__false$$convincing the customers of product benefits__false$$responding to questions and objections of customers__false$$all__true$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'The following does not represent a market\nsituation:', 'A bank run dispensary located in its staff quarters__false$$A fund raising chairity show for the members of an NGO__false$$A meditation camp of a religious organisation conducted for its members__false$$A stall distributing kada prasad in a gurudwara.__true$$None of these__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'The markets are grouped into different types\nbased on the geographical area, location of\nmarket palace , product,nature of transaction, and\nvolume of the transaction : \nIn the above statement the following is not correct:', 'Nature of transaction__false$$Geographical area__false$$Location of marketplace__true$$Volume of transaction__false$$None of these__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'The following offering is not a service :', 'Fixed deposit receipt__false$$Postage stamp__false$$Gift coupon of a chain store__true$$Insurance Policy__false$$None of these__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'The act of obtaining a desired object from\nsomeone by offering something in return is called\nas a (n)....', 'Transaction__false$$Exchange__true$$Relationship__false$$Value__false$$None of these__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Economists use the term......to refer to a collection\nof buyers and sellers who transact in a particular\nproduct class :', 'Customer__false$$Market__true$$Experience__false$$Value__false$$None of these__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Out of the items mentioned below,......is not a\nproduct:', 'Lecture by Shri Sudhansu Maharaj__false$$Simla__false$$Visit to Bankâ€™s London office__true$$Value__false$$None of these__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'A product line is a group of related products that\nfunction in a similar manner, are sold to the same\ncustomer groups, and marketed through the\nsame type of outlets :', 'Group__false$$Line__true$$Category__false$$Market__false$$None of these__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Goods that are typically bought by a consumer\nbased on a comparison of suitability, quality,\nprice,and style are called.....goods:', 'Industrial__false$$Speciality__false$$Shopping__true$$Convenience__false$$None of these__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Out of the following,.....is not one of the three\nlevels of a product :', 'Core__false$$Augmented__false$$Actual__false$$Fragmented__true$$None of these__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Out of the following,.....is not an objective of pricing :', 'Profit__false$$Stabilising demand and sales of the product__false$$Improvement in product quality__false$$Expansion of business__true$$None of these__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Abank has a special product for senior citizens\nwhich provides cheque book on saving account\nwith customer name on chaque book, free of cost\ndebit card with over draft facility of rs 15,000, a\nspecial pouch for holding passbook, cheque book\nand debit card, facility for withdrawal and\ndeposites at any branch of the bank,free of cost\nremittances to any branch of the bank, and free of\ncost remittances to any branch of another bank\ncovered under RTGS facility. Which of the following\nis the core product in this offering ?', 'Overdraft__false$$Remittances__false$$Saving account__true$$Expansion of business__false$$None of these__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Of the following pricing methods,......is not based\non competitors pricing', 'English Auction__false$$Sealedâ€”Bid Auction__false$$Saving account__false$$Group Pricing__true$$None of these__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Of the following pricing strategies,......is not ideal\nfor new products :', 'Market-Skimming__false$$Discriminatory Pricing__true$$Promotional Pricing__false$$Group Pricing__false$$None of these__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'A...discount is offered by the seller to intermediary\nwho performs functionslike selling, storing and\nrecord keeping :', 'Market-Skimming__false$$Quantity__false$$Trade__true$$Cash__false$$Seasonal__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'In market skimming pricing strategy :', 'Initially price is lower and then it is increased__false$$Initially price is higher and then it is reduced__true$$Intial price is high and is maintained high__false$$Cash__false$$none__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Bank of Mathura is offering 1% higher interest\nrate on fixed diposite to senior citizens of 60 years\nand above. It is practising...... :', 'Promotional pricing __false$$Psychological pricing__false$$Segmental pricing__true$$Product mix pricing__false$$none__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'with....pricing, the products are priced below list\nprice (or even below cost)for a temporary period\nto create buying urgency :', 'Reference__false$$By-product__false$$Promotional__true$$Market penetration__false$$none__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'Of the following pricing methods,....is not costbased\nmethod.', 'Value pricing__true$$Target-return pricing__false$$Mark-up Pricing__false$$Marginal cost pricing__false$$none__false$$', 'ans', 6, 6, 1, 1, '0000-00-00', ''),
(0, 'All of the following are examples of real security\nand privacy risks EXCEPT:', 'hackers.__false$$spam.__true$$viruses.__false$$identity theft.__false$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'A process known as ____________ is used by\nlarge retailers to study trends.', 'data mining__true$$data selection__false$$POS__false$$data conversion__false$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, '____________terminals (formerly known as\ncash registers) are often connected to complex\ninventory and sales computer systems.', 'Data__false$$Point-of-sale (POS)__true$$Sales__false$$Query__false$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'A(n) ____________ system is a small, wireless\nhandheld computer that scans an itemâ€™s tag and\npulls up the current price (and any special offers)\nas you shop.', 'PSS__true$$POS__false$$inventory__false$$data mining__false$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The ability to recover and read deleted or\ndamaged files from a criminalâ€™s computer is an\nexample of a law enforcement specialty called:', 'robotics.__false$$simulation.__false$$computer forensics.__true$$animation.__false$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which of the following is NOT one of the four\nmajor data processing functions of a computer?', 'gathering data__false$$processing data into information__false$$analyzing the data or information__true$$storing the data or information__false$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, '____________ tags, when placed on an animal,\ncan be used to record and track in a database all\nof the animalâ€™s movements.', 'POS__false$$RFID__true$$PPS__false$$GPS__false$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Surgeons can perform delicate operations by\nmanipulating devices through computers instead\nof manually. This technology is known as:', 'robotics.__true$$computer forensics.__false$$simulation.__false$$forecasting.__false$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Technology no longer protected by copyright,\navailable to everyone, is considered to be:', 'proprietary.__true$$open.__false$$experimental.__false$$in the public domain.__false$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, '____________ is the study of molecules and\nstructures whose size ranges from 1 to 100\nnanometers.', 'Nanoscience.__true$$Microelectrodes__false$$Computer forensics__false$$Artificial intelligence__false$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, '____________ is the science that attempts to\nproduce machines that display the same type of\nintelligence that humans do.', 'Nanoscience.__false$$Nanotechnology__false$$Simulation__false$$Artificial intelligence (AI)__true$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, '____________ is data that has been organized\nor presented in a meaningful fashion.', 'A process__false$$Software__false$$Storage__false$$Information__true$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The name for the way that computers manipulate\ndata into information is called:', 'programming.__false$$processing.__true$$storing.__false$$organizing.__false$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Computers gather data, which means that they\nallow users to ____________ data.', 'present__false$$input__true$$output__false$$store__false$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'After a picture has been taken with a digital camera\nand processed appropriately, the actual print of\nthe picture is considered:', 'present__false$$input__false$$output__true$$store__false$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Computers use the ____________ language to\nprocess data.', 'processing__false$$kilobyte__false$$binary__true$$representational__false$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Computers process data into information by\nworking exclusively with:', 'multimedia.__false$$words.__false$$characters.__false$$numbers.__true$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'In the binary language each letter of the alphabet,\neach number and each special character is made\nup of a unique combination of:', 'eight bytes.__false$$eight kilobytes.__false$$eight characters.__false$$eight bits.__true$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The term bit is short for:', 'megabyte.__false$$binary language.__false$$binary digit.__true$$binary number.__false$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'A string of eight 0s and 1s is called a:', 'megabyte.__false$$byte..__true$$kilobyte.__false$$gigabyte..__false$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'A ____________ is approximately one billion\nbytes.', 'kilobyte__false$$bit__false$$gigabyte__true$$megabyte__false$$none__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'A ____________ is approximately a million bytes.', 'kilobyte__false$$bit__false$$gigabyte__false$$megabyte__true$$terabyte__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, '____________ is any part of the computer that\nyou can physically touch.', 'Hardware__true$$A device__false$$A peripheral__false$$An application__false$$terabyte__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The components that process data are located\nin the:', 'input devices.__false$$output devices.__false$$system unit.__true$$storage component.__false$$terabyte__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'All of the following are examples of input devices\nEXCEPT a:', 'scanner.__false$$mouse.__false$$keyboard.__false$$printer.__true$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which of the following is an example of an input\ndevice?', 'scanner.__true$$speaker__false$$keyboard.__false$$printer.__false$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'All of the following are examples of storage\ndevices EXCEPT:', 'hard disk drives.__false$$CD drives.__false$$floppy disk drives.__false$$printer.__true$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The ____________, also called the â€œbrainsâ€ of\nthe computer, is responsible for processing data.', 'motherboard__false$$memory__false$$RAM__false$$central processing unit (CPU)__true$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The CPU and memory are located on the:', 'expansion board.__false$$motherboard.__true$$storage device.__false$$output device.__false$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Word processing, spreadsheet, and photoediting\nare examples of:', 'application software.__true$$system software.__false$$operating system software.__false$$platform software.__false$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, '____________ is a set of computer programs\nused on a computer to help perform tasks.', 'An instruction.__false$$Software__true$$Memory__false$$A processor__false$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'System software is the set of programs that\nenables your computerâ€™s hardware devices and\n____________ software to work together.', 'management__false$$processing__false$$utility__false$$application__true$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The PC (personal computer) and the Apple\nMacintosh are examples of two different:', 'platforms.__true$$applications.__false$$programs.__false$$storage devices.__false$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Apple Macintoshes (Macs) and PCs use different\n____________ to process data and different\noperating systems.', 'languages__false$$methods__false$$CPUs__true$$storage devices.__false$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Servers are computers that provide resources to\nother computers connected to a:', 'network.__true$$mainframe.__false$$supercomputer.__false$$client.__false$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Smaller and less expensive PC-based servers\nare replacing ____________ in many\nbusinesses.', 'supercomputers__false$$mainframe.__true$$supercomputer.__false$$client.__false$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, '____________ are specially designed\ncomputers that perform complex calculations\nextremely rapidly.', 'Servers__false$$mainframe.__false$$supercomputer.__true$$client.__false$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'DSL is an example of a(n) ____________\nconnection.', 'network__false$$wireless__false$$slow__false$$broadband__true$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The difference between people with access to\ncomputers and the Internet and those without this\naccess is known as the:', 'digital divide.__true$$Internet divide.__false$$Web divide.__false$$broadband divide.__false$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, '____________ is the science revolving around\nthe use of nanostructures to build devices on an\nextremely small scale.', 'Nanotechnology__true$$Micro-technology__false$$Computer forensics.__false$$Artificial intelligence__false$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which of the following is the correct order of the\nfour major functions of a computer?', 'Process Output Input Storage__false$$Input Output Process Storage__false$$Process Storage Input Output__false$$Input Process Output Storage__true$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, '____________ bits equal one byte.', 'Eight__true$$Two__false$$One thousand__false$$One million__false$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The binary language consists of ____________\ndigit(s).', 'Eight__false$$Two__true$$One thousand__false$$One million__false$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'A byte can hold one ____________ of data.', 'bit__false$$binary digit__false$$character__true$$kilobyte__false$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, '____________ controls the way in which the\ncomputer system functions and provides a\nmeans by which users can interact with the\ncomputer.', 'The platform__false$$The operating system__true$$Application software__false$$The motherboard__false$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The operating system is the most common type\nof ____________ software.', 'communication__false$$application__false$$system__true$$ word-processing software__false$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, '____________ are specially designed computer\nchips that reside inside other devices, such as\nyour car or your electronic thermostat.', 'Servers__false$$Embedded computers__true$$Robotic computers__false$$Mainframes__false$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The steps and tasks needed to process data,\nsuch as responses to questions or clicking an\nicon, are called:', 'instructions.__true$$the operating system.__false$$application software.__false$$the system unit.__false$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The two broad categories of software are:', 'word processing and spreadsheet.__false$$transaction and application..__false$$Windows and Mac OS.__false$$system and application.__true$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The metal or plastic case that holds all the physical\nparts of the computer is the:', 'system unit.__true$$CPU.__false$$mainframe.__false$$platform.__false$$None__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'RAM stands for :', 'Read Access Memory__false$$Random Access Memory.__true$$Random Assigned Memory__false$$All of these__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'BIOS stands for :', 'Basic Input Output System__true$$Basic Instruction Output System__false$$Basic Interface Output System__false$$All of these__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'BIOS stands for :', 'Basic Input Output System__true$$Basic Instruction Output System__false$$Basic Interface Output System__false$$All of these__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which of the following requires refreshing during\nretaining the data?', 'DRAM__true$$SRAM__false$$Virtual Memory__false$$FDD__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Refresh Rate of monitor is measured in :', 'Hz__true$$Meter__false$$Volts__false$$Amp.__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which of the following is lowest in memory\nhierarchy?', 'Cache memory__false$$Secondary memory__true$$Registers__false$$RAM__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'CRT stands for :', 'Character Ray Tube__false$$Cathode Ray Tube__true$$Colour Ray Tube__false$$All of the above__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which of the following is a GUI device', 'Keyboard__false$$Mouse__true$$OMR__false$$All of the above__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'LCD stands for :', 'Liquid Crystal Display__true$$Laser Crystal Display__false$$Light Crystal Display__false$$All of the above__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Such types of printers, in which the printing head\ncontacts with the paper in printing process, are\ncalled as :', 'Impact Printer__true$$Non-Impact Printer__false$$Laser Printer__false$$All of the above__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which of the following is a type of optical media?', 'FDD__false$$HDD__false$$CD__true$$Magnetic Tape__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which of the following is an input device?', 'VDU__false$$Printer__false$$Plotter__false$$MICR__true$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Identify the odd one', 'Storage tape memory__false$$Magnetic disc memory__false$$Optical disc memory__false$$Read only memory__true$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Nibble describes a bits combination of :', '5 bits__false$$6 bits__false$$7 bits__false$$4 bits__true$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'A Byte constitutes of :', '9 bits__false$$8 bits__true$$7 bits__false$$4 bits__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Memory in a PC is addressable through :', 'Bits__false$$Byte__true$$Nibble__false$$All of the above__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'One Kilo Byte represents :', '1024 bytes__true$$1000 bytes__false$$100 bytes__false$$1064 bytes__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Basic building block for a digital circuit is :', 'Word__false$$Logic Gate__true$$Processor__false$$BUS__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The base of binary number is :', '2__true$$16__false$$8__false$$10__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'ASCII stands for :', 'American Standard Code for Institute Interchange__false$$American Standard Code for Information Interchange__true$$American Standard Code for Information Institute__false$$All of these__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Who is called as "Father of Computers''?', 'Charles Babage__true$$Blaise Pascal__false$$Hollirth__false$$All of these__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The first Digital Computer introduced, was\nnamed as :', 'Univac__false$$Mark-I__true$$Eniac__false$$All of these__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'How many generations, computer can be\nclassified?', '4__false$$5__true$$3__false$$6__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'First Generation Computers contain :', 'Transistors__false$$Vacume Tubes__true$$LSI__false$$VLSI__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'II Generation Computers are made of :', 'Vaccume Tubes__false$$Transistors__true$$LSI__false$$VLSI__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'IV Generation Computers contain :', 'Vaccume Tubes__false$$Transistors__false$$LSI__true$$VLSI__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Vth Generation Computers are based on:', 'Artificial Intelligence__true$$Programming Intelligence__false$$System Knowledge__false$$All of these__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Computers, combine both measuring and\ncounting, are called :', 'Analog__false$$Digital__false$$Hybrid__true$$All of these__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'In world today, most of the computers are :', 'Analog__false$$Digital__true$$Hybrid__false$$All of these__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'In any computer installation, how many elements\nconsists?', '1__false$$2__false$$3__true$$4__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Physical structure of computer is called :', 'Software__false$$Hardware__true$$Humanware__false$$All of these__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'A computer can perform, which of the following\ntasks?', 'Computation__false$$Communication__false$$Processing__false$$All of these__true$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'In which type of computer, data are represented\nas discrete signals?', 'Analog computer__false$$Digital computer__true$$both__false$$Digilog Computer__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'PARAM is an example of :', 'Super computer__true$$PC__false$$Laptop__false$$PDA__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'ENIAC stands for :', 'Electrical Numerical Integrator and Calculator__false$$Electronic Numerical Integrator and Computer__true$$Electronic Numerical Integrator and Calculator__false$$Electronic Number Integrator and Calculator__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'First Generation of computer was based on which\ntechnology?', 'Transistor__false$$Vacuum Tube__true$$LSI__false$$VLSI__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'GUI stands for :', 'Graphical User Interface__true$$Graph Use Interface__false$$Graphical Universal Interface__false$$None of these__false$$all of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which of the following is responsible for all types\nof calculations?', 'ALU__true$$Control Unit__false$$Registers__false$$BUS__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Internal memory in a CPU is nothing but :', 'A set of registers__true$$A set of ALU__false$$Microprocessor__false$$BUS__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which of the following is permanent memory?', 'SRAM__false$$DRAM__false$$ROM__true$$All of these__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The â€¦â€¦â€¦ of a system includes the programs\nor instructions.', 'hardware__false$$icon__false$$information__false$$software__true$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which of the following displays programs that\nare currently running ? A single click on one of\nthe program icons will bring the window up.', 'Menu bar__false$$Task bar__false$$Title bar__true$$Status bar__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'In order to save a Word document as a web\npage you need toâ€”', 'put the appropriate graphics and links on the document__false$$save the document in simple text format__false$$use your web browser as an editor and save as URL__false$$save as HTML__true$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which of the following displays to the right of\nthe space where the text will be inserted when\nyou type ?', 'Screen tip__true$$Insertion point__false$$Rulers__false$$Office Assistant__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Something which has easilyunderstood\ninstructions is said to beâ€¦â€¦â€¦', 'user friendly__true$$information__false$$word processing__false$$icon__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The copy command saves toâ€”', 'the desktop__false$$the clipboard__true$$Microsoft Word__false$$Paste__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'An example of non-numeric data isâ€”', 'Bank balance__false$$Examination marks__false$$Real Numbers__true$$Employee Address__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which of the following displays the buttons for\nchanging text style, alignment and size ?', 'Standard toolbar__false$$Status bar__false$$Drawing toolbar__false$$Formating toolbar__true$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Arranging of data in a logical sequence is known\nasâ€”', 'Classifying__false$$Searching__false$$Sorting__true$$Reproducing__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which of the following tools is not normally\nused during systems analysis ?', 'Program Flow Chart__false$$Grid Chart__true$$System Flow Chart__false$$Question Check-list__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'A single application that combines the major\nfeatures of several types of applications is\ncalledâ€”', 'integrated software__true$$a suite__false$$a combo package__false$$high-end__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The word processing task associated with\nchanging the appearance of documents is', 'Writing__false$$Formatting__true$$Editing__false$$Storing__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'In order to save an existing document with a\ndifferent name you need toâ€”', 'retype the document and give it a different name__false$$use the Save asâ€¦ command__true$$copy and paste the original document to a new document and then save__false$$use Windows Explorer to copy the document to a different location and then rename it__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'It is better to copy a file from a floppy disk to a\nhard disk, then open the copy on the hard disk\nbecauseâ€”', 'a floppy disk is easily moved from one computer to another__false$$you can store more on a hard disk__true$$the computer cannot open a file stored on a floppy disk__false$$reading a hard disk is much faster and safer__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The best reason that a computer needs to have\na hard disk is becauseâ€”', 'it can then use the same programs as other computers__false$$it would not work without one__false$$it can store information when it is switched off__true$$it can store information while it is working__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'A Compiler is ____', 'A combination of computer hardware__false$$A program which translates from one highlevel language to another__false$$A program which translates from one highlevel to a machine level__true$$it can store information while it is working__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'When a key is pressed on the keyboard, which standard is used for converting the keystroke into the corresponding bits', 'ANSI__true$$ASCII__false$$EBCDIC__false$$ISO__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'A Pixel is -', 'A computer program that draws picture__false$$A picture stored in secondary memory__false$$The smallest resolvable part of a picture__true$$ISO__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which device is used as the standard pointing\ndevice in a Graphical User Environment', 'Keyboard__false$$Mouse__true$$Joystick__false$$Track ball__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which number system is usually followed in a\ntypical 32-bit computer?', '2__true$$10__false$$16__false$$32__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which of the following is not an output device?', 'Scanner__false$$Printer__false$$Flat Screen__false$$Touch Screen__true$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which of the following devices have a limitation\nthat we can only information to it but cannot\nerase or modify it', 'Floppy Disk__false$$Hard Disk__false$$Tape Drive__false$$CDROM__true$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which technology is used in Compact disks?', 'Mechanical__false$$Electrical__false$$Electro Magnetic__false$$Laser__true$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which of the following storage devices can store\nmaximum amount of data?', 'Floppy Disk__false$$Hard Disk__true$$Compact Disk__false$$Magneto Optic Disk__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which of the following is the largest\nmanufacturer of Hard Disk Drives?', 'IBM__false$$Segate__true$$Microsoft__false$$3M__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The memory location address are limited to', '00000 to 9ffff(16)__true$$00001 to 9ffff(16)__false$$00010 to 9ffff(16)__false$$10000 to 9ffff(16)__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The programs which are as permanent as\nhardware and stored in ROM is known as', 'Hardware__false$$Software__false$$Firmware__true$$ROMware__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Memory is made up of', 'Set of wires__false$$Set of circuits__false$$Large number of cells__true$$ROMware__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Primary memory stores', 'Data alone__false$$Programs alone__false$$Results alone__false$$All of these__true$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'EPROM can be used for', 'Erasing the contents of ROM__false$$Reconstructing the contents of ROM__false$$Erasing and reconstructing the contents of ROM__true$$Duplicating ROM__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The contents of information are stored in', 'Memory data register__true$$Memory address register__false$$Memory access register__false$$Memory arithmetic register__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Memory unit is one part of', 'Input device__false$$Control unit__false$$Output device__false$$Central Processing Unit__true$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Algorithm and Flow chart help us to', 'Know the memory capacity__false$$Identify the base of a number system__false$$Direct the output to a printer__false$$Specify the problem completely and clearly__true$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which of the following is not a valid size of a\nFloppy Disk?', '8"__false$$5 1/4"__true$$3 1/2"__false$$5 1/2"__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'If a word is typed that is not in Wordâ€™s dictionary,\na____________wavy underline appears below\nthe word.', 'red__true$$green__false$$blue__false$$black__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The____________button on the quick access\nToolbar allows you to cancel your recent\ncommands or actions.', 'Search__false$$Cut__false$$Document__false$$Undo__true$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'In Excel, any set of characters containing a letter\n, hyphen, or space is consideredâ€”', 'a formula__false$$text__true$$a name__false$$a title__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, '____________Software allows users to perform\ncalculations on rows and columns of data.', 'Word processing__false$$Presentation graphics__false$$Database Management Systems__true$$Electronic Spreadsheet__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'A ____________represent approximately one\nbillion memory locations.', 'kilobyte__false$$megabyte__false$$gigabyte__true$$terabyte__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', '');
INSERT INTO `questions` (`group_id`, `question`, `options`, `ans`, `section_id`, `subsection_id`, `question_type_id`, `question_level_id`, `year`, `question_info`) VALUES
(0, '____________cells involves creating a single cell\nby combining two or more selected cells.', 'Formatting__false$$Merging__true$$Embedding__false$$Splitting__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The operating system is the most common type\nof____________software.', 'communication__false$$application__false$$system__true$$word-processing__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'When you quickly press and releaes the left\nmouse button twice , you areâ€”', 'Primary-clicking__false$$pointing__false$$Double-clicking__true$$Secondary-clicking__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The horizontal and vertical lines on a worksheet\nare calledâ€”', 'cells__false$$sheets__false$$block lines__false$$gridlines__true$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'To delete an incorrect character in a document,\n____________ to erase to the right of the insertion\npoint.', 'press the left mouse key__false$$double-click the right mouse key__false$$press the BACKSPACE key__false$$press the delete key__true$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The operating system does all of the following\nEXCEPT:', 'provide a way for the user to interact with the computer.__false$$manage the central processing unit (CPU).__false$$manage memory and storage.__false$$enable users to perform a specific task such as document editing.__true$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'During the boot process, the____________looks\nfor the system files.', 'CD__false$$BIOS__true$$CPU__false$$DVD__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, '____________ are lists of commands that\nappear on the screen.', 'GUIs__false$$Icons__false$$Menus__true$$Windows__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, '____________ is the ability of an operating\nsystem to control the activities of multiple\nprograms at the same time.', 'Multitasking__true$$Streamlining__false$$Multiuser__false$$Simulcasting__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The unique signal, generated by a device, that\ntells the operating system that it is in need of\nimmediate attention is called an:', 'action.__false$$event.__false$$interrupt.__true$$activity.__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The operating system controls access to the\nprocessor by assigning a(n) ____________ to\neach task requiring the processorâ€™s attention.', 'CPU__false$$slice of time.__true$$stack__false$$event__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The blocks of code, included in the operating\nsystem, that software applications interact with\nare known as:', 'application programming interfaces (APIs).__true$$complimentary metal-oxide conductors (CMOS).__false$$device drivers.__false$$bootstrap loaders.__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'MS-DOS is a ____________ operating system.', 'point-and-click__false$$user-friendly__false$$command-driven__true$$Mac__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'An interrupt handler is a(n):', 'location in memory that keeps track of recently generated interrupts.__false$$peripheral device.__false$$utility program.__false$$special numeric code that indicates the priority of a request.__true$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'A spooler is a(n):', 'location in memory that maintains the contents of a document until it prints out.__false$$print job.__false$$program that coordinates the print jobs that are waiting to print.__true$$message sent from the printer to the operating system when a print job is completed.__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Virtual memory is typically located:', 'on a floppy disk.__false$$in the CPU.__false$$in a flash card.__false$$on the hard drive.__true$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The purpose of a swap (or page) file is to:', 'maintain pages of documents that are being spooled to the printer.__false$$hold a programâ€™s data or instructions in virtual memory when it canâ€™t fit in RAM.hold a programâ€™s data or instructions in virtual memory when it canâ€™t fit in RAM.__true$$prevent thrashing in a multitasking environment.__false$$allow multiple print jobs to print their pages out simultaneously..__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The definition of thrashing is:', 'swapping data between virtual memory and RAM too frequently.__true$$insufficient hard disk space.__false$$too many processors being managed by the operating system.__false$$inaccurate information stored in the registry.__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'All of the following are TRUE of Safe Mode\nEXCEPT:', 'Safe Mode is a special diagnostic mode.__false$$Safe Mode loads all nonessential icons.__true$$Safe Mode allows users to troubleshoot errors.__false$$Safe Mode loads only the most essential devices.__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Verification of a login name and password is\nknown as:', 'configuration.__false$$accessibility.__false$$authentication.__true$$logging in.__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The combination of the operating system and the\nprocessor is referred to as the computerâ€™s:', 'CPU.__false$$platform.__true$$CMOS.__false$$BIOS.__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The following message generally means:', 'a nonsystem floppy has been left in the floppy disk drive.__true$$the CD drive is not functioning.__false$$the BIOS is corrupted.__false$$there is a problem loading a device.__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which of the following is the correct sequence of\nactions that takes place during the boot-up\nprocess?', 'Load operating system ? Activate BIOS ? Perform POST ? Check configuration settings__false$$Activate BIOS ? Perform POST ? Load operating system ? Check configuration settings__true$$Perform POST ? Load operating system? Activate BIOS ? Check configuration settings__false$$Activate BIOS ? Check configuration settings? Perform POST ? Load operating system__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'All of the following are steps involved in the boot\nprocess EXCEPT:', 'load the operating system into RAM.__false$$the power-on self-test.__false$$activate the basic input/output system (BIOS).__false$$load application programs.__true$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The ____________, stored on a ROM chip, is\nresponsible for loading the operating system from\nits permanent location on the hard drive into RAM.', 'BIOS__true$$API__false$$device driver__false$$supervisor program__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The basic input/output system (BIOS) is stored\nin:', 'RAM.__false$$ROM.__true$$the CPU.__false$$the hard drive.__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Ensuring that the essential peripheral devices\nare attached and operational is the\n____________ process.', 'configuration__false$$CMOS__false$$POST__true$$ROM__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The memory resident portion of the operating\nsystem is called theâ€”', 'registry.__false$$API.__false$$CMOS.__false$$kernel.__true$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Which of the following does NOT occur during\nthe power-on self-test (POST)?', 'The ScanDisk utility begins to run.__true$$The video card and video memory are tested.__false$$The BIOS identification process occurs.__false$$Memory chips are checked to ensure they are working properly.__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'All of the following are TRUE regarding virtual\nmemory EXCEPTâ€”', 'any amount of RAM can be allocated to virtual memory.__true$$the setting for the amount of hard drive space to allocate to virtual memory can be manually changed.__false$$this temporary storage is called the swap file (or page file).__false$$virtual memory is physical space on the hard drive.__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'The operating system allows users to organize\nthe computerâ€™s contents in a hierarchical\nstructure of directories that include all of the\nfollowing EXCEPT:', 'files.__false$$folders.__false$$drives.__false$$systems.__true$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'All of the following statements concerning\nwindows are true EXCEPTâ€”', 'windows are an example of a commanddriven environment.__true$$windows can be resized and repositioned on the desktop.__false$$more than one window can be open at a time..__false$$toolbars and scrollbars are features of windows.__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'All of the following statements concerning files\nare true EXCEPTâ€”', 'A file is a collection of related pieces of information stored together for easy reference.__false$$Files can be generated from an application.__false$$Files are stored in RAM.__true$$Files should be organized in folders.__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'Using Windows Explorer, a plus ( ) sign in front\nof a folder indicatesâ€”', 'an open folder.__false$$the folder contains subfolders.__true$$a text file.__false$$a graphics file.__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'In Windows XP, if you want to see the file size and\nmodified dates of all files in a folder, the best\nviewing option is the __________ view.', 'List__false$$Thumbnails__false$$Details__true$$Icon__false$$None of these__false$$', 'ans', 5, 7, 1, 1, '0000-00-00', ''),
(0, 'A can do piece of work in 30 days while B alone can do it in 40 days.  In how many days can A and B working together do it?', '16 (1/ 7)__false$$17 (1/ 7)__true$$18 (1/ 7)__false$$19 (1/ 7)__false$$none__false$$', 'ans', 4, 5, 1, 1, '0000-00-00', ''),
(0, 'To complete a piece of work A and B take 8 days, B and C 12 days. A, B and C take 6 days. A and C will take :', '7 Days__false$$7.5 Days__false$$8 Days__true$$8.5 Days__false$$none__false$$', 'ans', 4, 5, 1, 1, '0000-00-00', ''),
(0, 'Two pipes can fill the cistern in 10hr and 12 hr respectively, while the third empty it in 20hr. If all pipes are opened simultaneously, then the cistern will be filled in', '7 hr__false$$7.5 hr__true$$8 hr__false$$8.5 hr__false$$none__false$$', 'ans', 4, 5, 1, 1, '0000-00-00', ''),
(0, 'A and B together can complete a piece of work in 35 days while A alone can complete the same work in 60 days. B alone will be able to complete the same working in:', '74 Days__false$$80 Days__false$$84 Days__true$$90 Days__false$$none__false$$', 'ans', 4, 5, 1, 1, '0000-00-00', ''),
(0, 'A person crosses a 600 m long street in 5 minutes. What is his speed in km per hour?', '3.6__false$$7.2__true$$8.4__false$$10__false$$none__false$$', 'ans', 4, 8, 1, 1, '0000-00-00', ''),
(0, 'An aeroplane covers a certain distance at a speed of 240 kmph in 5 hours. To cover the same distance in 1 hours, it must travel at a speed of:', '300 kmph__false$$360 kmph__false$$600 kmph__false$$720 kmph__true$$none__false$$', 'ans', 4, 8, 1, 1, '0000-00-00', ''),
(0, 'If a person walks at 14 km/hr instead of 10 km/hr, he would have walked 20 km more. The actual distance travelled by him is:', '50 km__true$$56 km__false$$70 km__false$$80 km__false$$none__false$$', 'ans', 4, 8, 1, 1, '0000-00-00', ''),
(0, 'A train can travel 50% faster than a car. Both start from point A at the same time and reach point B 75 kms away from A at the same time. On the way, however, the train lost about 12.5 minutes while stopping at the stations. The speed of the car is:', '100 kmph__false$$110 kmph__false$$120 kmph__true$$130 kmph__false$$none__false$$', 'ans', 4, 8, 1, 1, '0000-00-00', ''),
(0, 'Excluding stoppages, the speed of a bus is 54 kmph and including stoppages, it is 45 kmph. For how many minutes does the bus stop per hour?', '9__false$$10__true$$12__false$$20__false$$none__false$$', 'ans', 4, 8, 1, 1, '0000-00-00', ''),
(0, 'In a flight of 600 km, an aircraft was slowed down due to bad weather. Its average speed for the trip was reduced by 200 km/hr and the time of flight increased by 30 minutes. The duration of the flight is', '1 hour__true$$2 hours__false$$3 hours__false$$4 hours__false$$none__false$$', 'ans', 4, 8, 1, 1, '0000-00-00', ''),
(0, 'A man complete a journey in 10 hours. He travels first half of the journey at the rate of 21 km/hr and second half at the rate of 24 km/hr. Find the total journey in km.', '220 km__false$$224 km__true$$230 km__false$$234 km__false$$none__false$$', 'ans', 4, 8, 1, 1, '0000-00-00', ''),
(0, 'The ratio between the speeds of two trains is 7 : 8. If the second train runs 400 km in 4 hours, then the speed of the first train is:', '70 km/hr__false$$75 km/hr__false$$84 km/hr__false$$87.5 km/hr__true$$none__false$$', 'ans', 4, 8, 1, 1, '0000-00-00', ''),
(0, 'A man on tour travels first 160 km at 64 km/hr and the next 160 km at 80 km/hr. The average speed for the first 320 km of the tour is', '35.55 km/hr__false$$36 km/hr__false$$71.11 km/hr__true$$71 km/hr__false$$none__false$$', 'ans', 4, 8, 1, 1, '0000-00-00', ''),
(0, 'A car travelling with  of its actual speed covers 42 km in 1 hr 40 min 48 sec. Find the actual speed of the car.', '17(6/7)__false$$25 km/hr__false$$30 km/hr__false$$35 km/hr__true$$none__false$$', 'ans', 4, 8, 1, 1, '0000-00-00', ''),
(0, 'The sum of ages of 5 children born at the intervals of 3 years each is 50 years. What is the age of the youngest child?', '4 years__true$$8 years__false$$10 years__false$$11 years__false$$None__false$$', 'ans', 4, 9, 1, 1, '0000-00-00', ''),
(0, 'A is two years older than B who is twice as old as C. If the total of the ages of A, B and C be 27, the how old is B?', '7__false$$8__false$$9__false$$10__true$$None__false$$', 'ans', 4, 9, 1, 1, '0000-00-00', ''),
(0, 'A man is 24 years older than his son. In two years, his age will be twice the age of his son. The present age of his son is:', '14 years__false$$18 years__false$$20 years__false$$22 years__true$$None__false$$', 'ans', 4, 9, 1, 1, '0000-00-00', ''),
(0, 'Sachin is younger than Rahul by 7 years. If their ages are in the respective ratio of 7 : 9, how old is Sachin?', '12 years__false$$15 years__false$$18 and half__false$$24.5 years__true$$None__false$$', 'ans', 4, 9, 1, 1, '0000-00-00', ''),
(0, 'The average of first five multiples of 3 is :', '9__true$$19__false$$8__false$$11__false$$None__false$$', 'ans', 4, 17, 1, 1, '0000-00-00', ''),
(0, 'There are two sections A and B of a class, consisting of 36 and 44 studentsâ€™ respectively. If the average weight of section A is 40kg and that of section B is 35kg, find the average weight of the whole class.', '30 kg__false$$35 kg__false$$42.5 kg__false$$37.25 kg__true$$None__false$$', 'ans', 4, 17, 1, 1, '0000-00-00', ''),
(0, 'Distance between two stations A and B is 778km. A train covers the journey from A to B at 84km per hour and returns back to A with a uniform speed of 56km per hour. Find the average speed of train during the whole journey.', '60 km/hr__false$$30.5 km/hr__false$$57 km/hr__false$$67.2 km/hr__true$$None__false$$', 'ans', 4, 17, 1, 1, '0000-00-00', ''),
(0, 'The average of 50 numbers is 30. If two numbers, 35 and 40 are discarded, then the average of the remaining numbers is nearly:', '28.32__false$$29.68__true$$28.78__false$$29.27__false$$None__false$$', 'ans', 4, 17, 1, 1, '0000-00-00', ''),
(0, 'The average score of a cricketer for ten matches is 38.9 runs. If the average for the first six matches is 42, then find the average for the last four matches.', '33.25__false$$33.5__false$$34.25__false$$35__true$$None__false$$', 'ans', 4, 17, 1, 1, '0000-00-00', ''),
(0, 'Find the greatest number that will divide 43, 91 and 183 so as to leave the same remainder in each case.', '4__true$$7__false$$9__false$$13__false$$None__false$$', 'ans', 4, 19, 1, 1, '0000-00-00', ''),
(0, 'The H.C.F. of two numbers is 23 and the other two factors of their L.C.M. are 13 and 14. The larger of the two numbers is:', '276__false$$299__false$$322__true$$345__false$$None__false$$', 'ans', 4, 19, 1, 1, '0000-00-00', ''),
(0, 'Six bells commence tolling together and toll at intervals of 2, 4, 6, 8 10 and 12 seconds respectively. In 30 minutes, how many times do they toll together ?', '4__false$$10__false$$15__false$$16__true$$None__false$$', 'ans', 4, 19, 1, 1, '0000-00-00', ''),
(0, 'Let N be the greatest number that will divide 1305, 4665 and 6905, leaving the same remainder in each case. Then sum of the digits in N is:', '4__true$$5__false$$6__false$$8__false$$None__false$$', 'ans', 4, 19, 1, 1, '0000-00-00', ''),
(0, 'The greatest number of four digits which is divisible by 15, 25, 40 and 75 is:', '9000__false$$9400__false$$9600__true$$9800__false$$None__false$$', 'ans', 4, 19, 1, 1, '0000-00-00', ''),
(0, 'A vessel is filled with liquid, 3 parts of which are water and 5 parts syrup. How much of the mixture must be drawn off and replaced with water so that the mixture may be half water and half syrup?', '1/3__false$$1/4__false$$1/5__true$$1/7__false$$None__false$$', 'ans', 4, 13, 0, 1, '0000-00-00', ''),
(0, 'Tea worth Rs. 126 per kg and Rs. 135 per kg are mixed with a third variety in the ratio 1 : 1 : 2. If the mixture is worth Rs. 153 per kg, the price of the third variety per kg will be:', 'Rs. 169.50__false$$Rs. 170__false$$Rs. 175.50__true$$Rs. 180__false$$None__false$$', 'ans', 4, 13, 0, 1, '0000-00-00', ''),
(0, 'A can contains a mixture of two liquids A and B is the ratio 7 : 5. When 9 litres of mixture are drawn off and the can is filled with B, the ratio of A and B becomes 7 : 9. How many litres of liquid A was contained by the can initially?', '10__false$$20__false$$21__true$$25__false$$None__false$$', 'ans', 4, 13, 0, 1, '0000-00-00', ''),
(0, 'A milk vendor has 2 cans of milk. The first contains 25% water and the rest milk. The second contains 50% water. How much milk should he mix from each of the containers so as to get 12 litres of milk such that the ratio of water to milk is 3 : 5?', '4 litres, 8 litres__false$$6 litres, 6 litres__true$$5 litres, 7 litres__false$$7 litres, 5 litres__false$$None__false$$', 'ans', 4, 13, 0, 1, '0000-00-00', ''),
(0, 'In what ratio must a grocer mix two varieties of pulses costing Rs. 15 and Rs. 20 per kg respectively so as to get a mixture worth Rs. 16.50 kg?', '3 : 7__false$$5 : 7__false$$7 : 3__true$$7 : 5__false$$None__false$$', 'ans', 4, 13, 0, 1, '0000-00-00', ''),
(0, 'A dishonest milkman professes to sell his milk at cost price but he mixes it with water and thereby gains 25%. The percentage of water in the mixture is:', '4%__false$$6(1/4)%__false$$20%__true$$25%__false$$None__false$$', 'ans', 4, 13, 0, 1, '0000-00-00', ''),
(0, 'How many kilogram of sugar costing Rs. 9 per kg must be mixed with 27 kg of sugar costing Rs. 7 per kg so that there may be a gain of 10% by selling the mixture at Rs. 9.24 per kg?', '36 kg__false$$42 kg__false$$54 kg__false$$63 kg__true$$None__false$$', 'ans', 4, 13, 0, 1, '0000-00-00', ''),
(0, 'A container contains 40 litres of milk. From this container 4 litres of milk was taken out and replaced by water. This process was repeated further two times. How much milk is now contained by the container?', '26.34 litres__false$$27.36 litres__false$$28 litres__false$$29.16 litres__true$$None__false$$', 'ans', 4, 13, 0, 1, '0000-00-00', ''),
(0, 'A jar full of whisky contains 40% alcohol. A part of this whisky is replaced by another containing 19% alcohol and now the percentage of alcohol was found to be 26%. The quantity of whisky replaced is:', '1/3__false$$2/3__true$$2/5__false$$3/5__false$$None__false$$', 'ans', 4, 13, 0, 1, '0000-00-00', ''),
(0, 'In what ratio must water be mixed with milk to gain 16% on selling the mixture at cost price?', '1 : 6__true$$6 : 1__false$$2 : 3__false$$4 : 3__false$$None__false$$', 'ans', 4, 13, 0, 1, '0000-00-00', ''),
(0, 'A, B and C jointly thought of engaging themselves in a business venture. It was agreed that A would invest Rs. 6500 for 6 months, B, Rs. 8400 for 5 months and C, Rs. 10,000 for 3 months. A wants to be the working member for which, he was to receive 5% of the profits. The profit earned was Rs. 7400. Calculate the share of B in the profit.', 'Rs. 1900__false$$Rs. 2660__true$$Rs. 2800__false$$Rs. 2840__false$$None__false$$', 'ans', 4, 16, 1, 1, '0000-00-00', ''),
(0, 'A, B, C subscribe Rs. 50,000 for a business. A subscribes Rs. 4000 more than B and B Rs. 5000 more than C. Out of a total profit of Rs. 35,000, A receives', 'Rs. 8400__false$$Rs. 11,900__false$$Rs. 13,600__false$$Rs. 14,700__true$$None__false$$', 'ans', 4, 16, 1, 1, '0000-00-00', ''),
(0, 'Three partners shared the profit in a business in the ratio 5 : 7 : 8. They had partnered for 14 months, 8 months and 7 months respectively. What was the ratio of their investments?', '5 : 7 : 8__false$$20 : 49 : 64__true$$38 : 28 : 21__false$$38 : 28 : 22__false$$None__false$$', 'ans', 4, 16, 1, 1, '0000-00-00', ''),
(0, 'A and B started a partnership business investing some amount in the ratio of 3 : 5. C joined then after six months with an amount equal to that of B. In what proportion should the profit at the end of one year be distributed among A, B and C?', '3 : 5 : 2__false$$3 : 5 : 5__false$$6 : 10 : 5__true$$Data inadequate__false$$None__false$$', 'ans', 4, 16, 1, 1, '0000-00-00', ''),
(0, 'A, B, C rent a pasture. A puts 10 oxen for 7 months, B puts 12 oxen for 5 months and C puts 15 oxen for 3 months for grazing. If the rent of the pasture is Rs. 175, how much must C pay as his share of rent?', 'Rs. 45__true$$Rs. 50__false$$Rs. 55__false$$Rs. 60__false$$None__false$$', 'ans', 4, 16, 1, 1, '0000-00-00', ''),
(0, 'A began a business with Rs. 85,000. He was joined afterwards by B with Rs. 42,500. For how much period does B join, if the profits at the end of the year are divided in the ratio of 3 : 1?', '4 months__false$$5 months__false$$6 months__false$$8 months__true$$None__false$$', 'ans', 4, 16, 1, 1, '0000-00-00', ''),
(0, 'Aman started a business investing Rs. 70,000. Rakhi joined him after six months with an amount of Rs.. 1,05,000 and Sagar joined them with Rs. 1.4 lakhs after another six months. The amount of profit earned should be distributed in what ratio among Aman, Rakhi and Sagar respectively, 3 years after Aman started the business?', '7 : 6 : 10__false$$12 : 15 : 16__true$$42 : 45 : 56__false$$Cannot be determined__false$$None__false$$', 'ans', 4, 16, 1, 1, '0000-00-00', ''),
(0, 'A batsman scored 110 runs which included 3 boundaries and 8 sixes. What percent of his total score did he make by running between the wickets?', '45%__false$$45(5/11)% __true$$54(6/11)	% __false$$55%__false$$None__false$$', 'ans', 4, 11, 1, 1, '0000-00-00', ''),
(0, 'Two students appeared at an examination. One of them secured 9 marks more than the other and his marks was 56% of the sum of their marks. The marks obtained by them are:', '39, 30__false$$41, 32__false$$42, 33 __true$$43, 34__false$$None__false$$', 'ans', 4, 11, 1, 1, '0000-00-00', ''),
(0, 'A fruit seller had some apples. He sells 40% apples and still has 420 apples. Originally, he had:', '588 apples__false$$600 apples__false$$672 apples__false$$700 apples__true$$None__false$$', 'ans', 4, 11, 1, 1, '0000-00-00', ''),
(0, 'If A = x% of y and B = y% of x, then which of the following is true?', 'A is smaller than B.__false$$A is greater than B__false$$Relationship between A and B cannot be determined.__false$$If x is smaller than y, then A is greater than B.__false$$None__true$$', 'ans', 4, 11, 1, 1, '0000-00-00', ''),
(0, 'If 20% of a = b, then b% of 20 is the same as:', '4% of a__true$$5% of a__false$$20% of a__false$$21% of a__false$$None__false$$', 'ans', 4, 11, 1, 1, '0000-00-00', ''),
(0, 'In a certain school, 20% of students are below 8 years of age. The number of students above 8 years of age is  of the number of students of 8 years of age which is 48. What is the total number of students in the school?', '72__false$$80__false$$120__false$$150__false$$None__true$$', 'ans', 4, 11, 1, 1, '0000-00-00', ''),
(0, 'Two numbers A and B are such that the sum of 5% of A and 4% of B is two-third of the sum of 6% of A and 8% of B. Find the ratio of A : B.', '2 : 3__false$$1 : 1__false$$3 : 4__false$$4 : 3__true$$None__false$$', 'ans', 4, 11, 1, 1, '0000-00-00', ''),
(0, 'A student multiplied a number by 3/5instead of.\n5/3\nWhat is the percentage error in the calculation?', '34%__false$$44%__false$$54%__false$$64%__true$$None__false$$', 'ans', 4, 11, 1, 1, '0000-00-00', ''),
(0, 'In an election between two candidates, one got 55% of the total valid votes, 20% of the votes were invalid. If the total number of votes was 7500, the number of valid votes that the other candidate got, was:', '2700__true$$2900__false$$3000__false$$3100__false$$None__false$$', 'ans', 4, 11, 1, 1, '0000-00-00', ''),
(0, 'Alfred buys an old scooter for Rs. 4700 and spends Rs. 800 on its repairs. If he sells the scooter for Rs. 5800, his gain percent is:', ' 4(4/7)% __false$$5(5/11)%__true$$10%__false$$12%__false$$None__false$$', 'ans', 4, 14, 1, 1, '0000-00-00', ''),
(0, 'The cost price of 20 articles is the same as the selling price of x articles. If the profit is 25%, then the value of x is:', '15__false$$16__true$$18__false$$25__false$$None__false$$', 'ans', 4, 14, 1, 1, '0000-00-00', ''),
(0, 'If selling price is doubled, the profit triples. Find the profit percent.', '66(2/3)__false$$100__true$$105(1/3)__false$$120__false$$None__false$$', 'ans', 4, 14, 1, 1, '0000-00-00', ''),
(0, 'In a certain store, the profit is 320% of the cost. If the cost increases by 25% but the selling price remains constant, approximately what percentage of the selling price is the profit?', '30%__false$$70%__true$$100%__false$$250%__false$$None__false$$', 'ans', 4, 14, 1, 1, '0000-00-00', ''),
(0, 'A vendor bought toffees at 6 for a rupee. How many for a rupee must he sell to gain 20%?', '3__false$$4__false$$5__true$$6__false$$None__false$$', 'ans', 4, 14, 1, 1, '0000-00-00', ''),
(0, 'The percentage profit earned by selling an article for Rs. 1920 is equal to the percentage loss incurred by selling the same article for Rs. 1280. At what price should the article be sold to make 25% profit?', 'Rs. 2000__true$$Rs. 2200__false$$Rs. 2400__false$$Data inadequate__false$$None__false$$', 'ans', 4, 14, 1, 1, '0000-00-00', ''),
(0, 'A shopkeeper expects a gain of 22.5% on his cost price. If in a week, his sale was of Rs. 392, what was his profit?', 'Rs. 18.20__false$$Rs. 70__false$$Rs. 72__true$$Rs. 88.25__false$$None__false$$', 'ans', 4, 14, 1, 1, '0000-00-00', ''),
(0, 'A man buys a cycle for Rs. 1400 and sells it at a loss of 15%. What is the selling price of the cycle?', 'Rs. 1090__false$$Rs. 1160__false$$Rs. 1190__true$$Rs. 1202__false$$None__false$$', 'ans', 4, 14, 1, 1, '0000-00-00', ''),
(0, 'Sam purchased 20 dozens of toys at the rate of Rs. 375 per dozen. He sold each one of them at the rate of Rs. 33. What was his percentage profit?', '3.5__false$$4.5__false$$5.6__true$$6.5__false$$None__false$$', 'ans', 4, 14, 1, 1, '0000-00-00', ''),
(0, 'Some articles were bought at 6 articles for Rs. 5 and sold at 5 articles for Rs. 6. Gain percent is:', '30%__false$$33(1/3)% __false$$35%__false$$44%__true$$None__false$$', 'ans', 4, 14, 1, 1, '0000-00-00', ''),
(0, 'What is the ratio of 2 feet to 4 yards?', '1:2__false$$1:8__false$$1:7__false$$1:6__true$$1:5__false$$', 'ans', 4, 12, 1, 1, '0000-00-00', ''),
(0, 'Two numbers are respectively 20% and 50% more than a third number. The ratio of the two numbers is:', '2 : 5__false$$3 : 5__false$$4 : 5__true$$6 : 7__false$$None__false$$', 'ans', 4, 12, 1, 1, '0000-00-00', ''),
(0, 'Seats for Mathematics, Physics and Biology in a school are in the ratio 5 : 7 : 8. There is a proposal to increase these seats by 40%, 50% and 75% respectively. What will be the ratio of increased seats?', '2 : 3 : 4__true$$6 : 7 : 8__false$$6 : 8 : 9__false$$6 : 8 : 10__false$$None__false$$', 'ans', 4, 12, 1, 1, '0000-00-00', ''),
(0, 'In a mixture 60 litres, the ratio of milk and water 2 : 1. If the this ratio is to be 1 : 2, then the quanity of water to be further added is:', '20 litres__false$$30 litres__false$$40 litres__false$$60 litres__true$$None__false$$', 'ans', 4, 12, 1, 1, '0000-00-00', ''),
(0, 'The ratio of the number of boys and girls in a college is 7 : 8. If the percentage increase in the number of boys and girls be 20% and 10% respectively, what will be the new ratio?', '8 : 9__false$$17 : 18__false$$21 : 22__true$$Cannot be determined__false$$None__false$$', 'ans', 4, 12, 1, 1, '0000-00-00', ''),
(0, 'If 0.75 : x :: 5 : 8, then x is equal to:', '1.12__false$$1.2__true$$1.25__false$$1.30__false$$None__false$$', 'ans', 4, 12, 1, 1, '0000-00-00', ''),
(0, 'The sum of three numbers is 98. If the ratio of the first to second is 2 :3 and that of the second to the third is 5 : 8, then the second number is:', '20__false$$30__true$$48__false$$58__false$$None__false$$', 'ans', 4, 12, 1, 1, '0000-00-00', ''),
(0, 'If Rs. 782 be divided into three parts, proportional to (1/2) :(2/3)  :(3/4) , then the first part is:', 'Rs. 182__false$$Rs. 190__false$$Rs. 196__false$$Rs. 204__true$$None__false$$', 'ans', 4, 12, 1, 1, '0000-00-00', ''),
(0, 'A sum of money at simple interest amounts to Rs. 815 in 3 years and to Rs. 854 in 4 years. The sum is:', 'Rs. 650__false$$Rs. 690__false$$Rs. 698__true$$Rs. 700__false$$None__false$$', 'ans', 4, 15, 1, 1, '0000-00-00', ''),
(0, 'Mr. Thomas invested an amount of Rs. 13,900 divided in two different schemes A and B at the simple interest rate of 14% p.a. and 11% p.a. respectively. If the total amount of simple interest earned in 2 years be Rs. 3508, what was the amount invested in Scheme B?', 'Rs. 6400__true$$Rs. 6500__false$$Rs. 7200__false$$Rs. 7500__false$$None__false$$', 'ans', 4, 15, 1, 1, '0000-00-00', ''),
(0, 'A sum fetched a total simple interest of Rs. 4016.25 at the rate of 9 p.c.p.a. in 5 years. What is the sum?', 'Rs. 4462.50__false$$Rs. 8032.50__false$$Rs. 8900__false$$Rs. 8925__true$$None__false$$', 'ans', 4, 15, 1, 1, '0000-00-00', ''),
(0, 'How much time will it take for an amount of Rs. 450 to yield Rs. 81 as interest at 4.5% per annum of simple interest?', '3.5 years__false$$4 years__true$$4.5 years__false$$5 years__false$$None__false$$', 'ans', 4, 15, 1, 1, '0000-00-00', ''),
(0, 'Reena took a loan of Rs. 1200 with simple interest for as many years as the rate of interest. If she paid Rs. 432 as interest at the end of the loan period, what was the rate of interest?', '3.6__false$$6__true$$18__false$$Cannot be determined__false$$None__false$$', 'ans', 4, 15, 1, 1, '0000-00-00', ''),
(0, 'A bank offers 5% compound interest calculated on half-yearly basis. A customer deposits Rs. 1600 each on 1st January and 1st July of a year. At the end of the year, the amount he would have gained by way of interest is:', 'Rs. 120__false$$Rs. 121__true$$Rs. 122__false$$Rs. 123__false$$None__false$$', 'ans', 4, 15, 1, 1, '0000-00-00', ''),
(0, 'The difference between simple and compound interests compounded annually on a certain sum of money for 2 years at 4% per annum is Re. 1. The sum (in Rs.) is:', '625__true$$630__false$$640__false$$650__false$$None__false$$', 'ans', 4, 15, 1, 1, '0000-00-00', ''),
(0, 'There is 60% increase in an amount in 6 years at simple interest. What will be the compound interest of Rs. 12,000 after 3 years at the same rate?', 'Rs. 2160__false$$Rs. 3120__false$$Rs. 3972__true$$Rs. 6240__false$$None__false$$', 'ans', 4, 15, 1, 1, '0000-00-00', ''),
(0, 'What is the difference between the compound interests on Rs. 5000 for 1 years at 4% per annum compounded yearly and half-yearly?', 'Rs. 2.04__true$$Rs. 3.06__false$$Rs. 4.80__false$$Rs. 8.30__false$$None__false$$', 'ans', 4, 15, 1, 1, '0000-00-00', ''),
(0, 'The compound interest on Rs. 30,000 at 7% per annum is Rs. 4347. The period (in years) is:', '2__true$$2(1/2)__false$$3__false$$4__false$$None__false$$', 'ans', 4, 15, 1, 1, '0000-00-00', ''),
(0, '', '', 'ans', 0, 0, 0, 0, '0000-00-00', ''),
(0, '', '', 'ans', 0, 0, 0, 0, '0000-00-00', ''),
(0, '', '', 'ans', 0, 0, 0, 0, '0000-00-00', ''),
(0, '', '', 'ans', 0, 0, 0, 0, '0000-00-00', ''),
(0, '', '', 'ans', 0, 0, 0, 0, '0000-00-00', ''),
(0, '', '', 'ans', 0, 0, 0, 0, '0000-00-00', ''),
(0, '', '', 'ans', 0, 0, 0, 0, '0000-00-00', ''),
(0, '', '', 'ans', 0, 0, 0, 0, '0000-00-00', ''),
(0, '', '', 'ans', 0, 0, 0, 0, '0000-00-00', ''),
(0, '', '', 'ans', 0, 0, 0, 0, '0000-00-00', ''),
(0, '', '', 'ans', 0, 0, 0, 0, '0000-00-00', ''),
(0, '', '', 'ans', 0, 0, 0, 0, '0000-00-00', ''),
(0, ' q1', 'o1__true$$o2__false$$o3__false$$', 'ans', 4, 18, 1, 1, '0000-00-00', 'Data interpretation'),
(0, ' q2', 'o1__false$$o2__true$$o3__false$$o4__false$$', 'ans', 4, 18, 1, 1, '0000-00-00', 'Data interpretation'),
(0, ' q1', 'o1__true$$o2__false$$o3__false$$', 'ans', 4, 18, 1, 1, '0000-00-00', 'Data interpretation'),
(0, ' q2', 'o1__false$$o2__true$$o3__false$$o4__false$$', 'ans', 4, 18, 1, 1, '0000-00-00', 'Data interpretation');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE IF NOT EXISTS `sections` (
  `section_id` int(11) NOT NULL,
  `section_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`section_id`, `section_name`) VALUES
(1, 'General Awareness'),
(2, 'English'),
(3, 'Reasoning'),
(4, 'Quantitative'),
(5, 'Compute Knowledge'),
(6, 'marketing');

-- --------------------------------------------------------

--
-- Table structure for table `subsections`
--

CREATE TABLE IF NOT EXISTS `subsections` (
  `subsection_id` int(11) NOT NULL,
  `subsection_name` text NOT NULL,
  `section_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='subsection table';

--
-- Dumping data for table `subsections`
--

INSERT INTO `subsections` (`subsection_id`, `subsection_name`, `section_id`) VALUES
(1, 'sports', 1),
(2, 'economics', 1),
(3, 'general knoledge', 1),
(4, 'Simplifications', 4),
(5, 'Time and Work', 4),
(6, 'marketing', 6),
(7, 'Computer Knowledge', 5),
(8, 'Time and Distance', 4),
(9, 'Ages', 4),
(10, 'Decimals', 4),
(11, 'Percentages', 4),
(12, 'Ratio and Proportion', 4),
(13, 'Mixture and Alligation', 4),
(14, 'Profit and Loss', 4),
(15, 'Simple and Compound interest', 4),
(16, 'Partnership', 4),
(17, 'Average', 4),
(18, 'Data Interpretation', 4),
(19, 'LCM and HCF', 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

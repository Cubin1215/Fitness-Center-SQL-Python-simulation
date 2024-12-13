CREATE TABLE `gym` (
`gym_id` varchar(20) NOT NULL,
`gym_name` varchar(30) NOT NULL,
`address` varchar(150) NOT NULL,
`type` varchar(20) NOT NULL
);
INSERT INTO `gym` (`gym_id`, `gym_name`, `address`, `type`)
VALUES(&#39;GYM1&#39;, &#39;GYM LAND&#39;, &#39;Shiv Nagar&#39;, &#39;men&#39;),
(&#39;GYM2&#39;, &#39;TARGET ZONE&#39;, &#39;Shanthi Nagar&#39;, &#39;unisex&#39;),
(&#39;GYM3&#39;, &#39;GEORGE GYM&#39;, &#39;Mahesh Nagar&#39;, &#39;unisex&#39;),
(&#39;GYM4&#39;, &#39;SUNNY GYM FITNESS STATION&#39;, &#39;Rupali Complex&#39;, &#39;women&#39;),
(&#39;GYM5&#39;, &#39;A3 FITNESS GYM&#39;, &#39;Ramnagar Colony&#39;, &#39;men&#39;),
(&#39;GYM6&#39;, &#39;SHAPE GYM&#39;, &#39;Zion Colony&#39;, &#39;unisex&#39;),
(&#39;GYM7&#39;, &#39;TITAN GYM&#39;, &#39;Old City&#39;, &#39;women&#39;),
(&#39;GYM8&#39;, &#39;TIGERS TOP GYM&#39;, &#39;Madival Circle&#39;, &#39;men&#39;);
CREATE TABLE `member` (
`mem_id` varchar(20) NOT NULL,
`name` varchar(30) DEFAULT NULL,
`dob` varchar(20) DEFAULT NULL,
`age` varchar(20) DEFAULT NULL,
`package` varchar(10) DEFAULT NULL,
`mobileno` varchar(10) DEFAULT NULL,
`pay_id` varchar(20) DEFAULT NULL,
`trainer_id` varchar(20) DEFAULT NULL

);
INSERT INTO `member` (`mem_id`, `name`, `dob`, `age`, `package`, `mobileno`, `pay_id`,
`trainer_id`)
VALUES(&#39;M1&#39;, &#39;Aditya&#39;, &#39;18/08/1994&#39;, &#39;26&#39;, &#39;5200&#39;, &#39;8888888888&#39;, &#39;Payment1&#39;, &#39;T1&#39;),
(&#39;M2&#39;, &#39;Karan&#39;, &#39;26/06/1998&#39;, &#39;21&#39;, &#39;4800&#39;, &#39;9988998899&#39;, &#39;Payment2&#39;, &#39;T2&#39;),
(&#39;M3&#39;, &#39;Chirag&#39;, &#39;22/07/1997&#39;, &#39;22&#39;, &#39;6400&#39;, &#39;9977997799&#39;, &#39;Payment3&#39;, &#39;T3&#39;),
(&#39;M4&#39;, &#39;Abhishek&#39;, &#39;21/08/1998&#39;, &#39;21&#39;, &#39;5400&#39;, &#39;9966996699&#39;, &#39;Payment4&#39;, &#39;T4&#39;),
(&#39;M5&#39;, &#39;Veeresh&#39;, &#39;24/06/1999&#39;, &#39;20&#39;, &#39;6000&#39;, &#39;9955995599&#39;, &#39;Payment5&#39;, &#39;T5&#39;);
CREATE TABLE `payment` (
`pay_id` varchar(20) NOT NULL,
`amount` varchar(20) DEFAULT NULL,
`gym_id` varchar(20) DEFAULT NULL
);
INSERT INTO `payment` (`pay_id`, `amount`, `gym_id`)
VALUES(&#39;Payment1&#39;, &#39;5200&#39;, &#39;GYM1&#39;),
(&#39;Payment2&#39;, &#39;4800&#39;, &#39;GYM2&#39;),
(&#39;Payment3&#39;, &#39;6400&#39;, &#39;GYM3&#39;),
(&#39;Payment4&#39;, &#39;5400&#39;, &#39;GYM4&#39;),
(&#39;Payment5&#39;, &#39;6000&#39;, &#39;GYM5&#39;),
(&#39;Payment6&#39;, &#39;4500&#39;, &#39;GYM6&#39;),
(&#39;Payment7&#39;, &#39;5500&#39;, &#39;GYM7&#39;),
(&#39;Payment8&#39;, &#39;6100&#39;, &#39;GYM8&#39;);
CREATE TABLE `trainer` (
`trainer_id` varchar(20) NOT NULL,
`name` varchar(20) DEFAULT NULL,
`time` varchar(10) DEFAULT NULL,
`mobileno` varchar(10) DEFAULT NULL,
`pay_id` varchar(20) DEFAULT NULL
);
INSERT INTO `trainer` (`trainer_id`, `name`, `time`, `mobileno`, `pay_id`)
VALUES(&#39;T1&#39;, &#39;George&#39;, &#39;5:00 AM&#39;, &#39;9999999999&#39;, &#39;Payment1&#39;),

(&#39;T2&#39;, &#39;Tanveer&#39;, &#39;9:00 AM&#39;, &#39;8888888888&#39;, &#39;Payment2&#39;),
(&#39;T3&#39;, &#39;Wong Lee&#39;, &#39;11:00 AM&#39;, &#39;7777777777&#39;, &#39;Payment3&#39;),
(&#39;T4&#39;, &#39;Kiran Das&#39;, &#39;1:00 PM&#39;, &#39;6666666666&#39;, &#39;Payment6&#39;),
(&#39;T5&#39;, &#39;Harry Styles&#39;, &#39;3:00 PM&#39;, &#39;6655665566&#39;, &#39;Payment5&#39;),
(&#39;T6&#39;, &#39;James Corden&#39;, &#39;5:00 PM&#39;, &#39;6677667766&#39;, &#39;Payment6&#39;),
(&#39;T7&#39;, &#39;Jimmy Kimmel&#39;, &#39;7:00 PM&#39;, &#39;6688668866&#39;, &#39;Payment7&#39;),
(&#39;T8&#39;, &#39;Ray Berlin&#39;, &#39;9:00 PM&#39;, &#39;6699669966&#39;, &#39;Payment8&#39;);
ALTER TABLE `gym`
ADD PRIMARY KEY (`gym_id`);
ALTER TABLE `member`
ADD PRIMARY KEY (`mem_id`),
ADD KEY `pay_id` (`pay_id`),
ADD KEY `trainer_id` (`trainer_id`);
ALTER TABLE `payment`
ADD PRIMARY KEY (`pay_id`),
ADD KEY `gym_id` (`gym_id`);
ALTER TABLE `trainer`
ADD PRIMARY KEY (`trainer_id`),
ADD KEY `pay_id` (`pay_id`);
ALTER TABLE `member`
ADD FOREIGN KEY (`pay_id`) REFERENCES `payment` (`pay_id`),
ADD FOREIGN KEY (`trainer_id`) REFERENCES `trainer` (`trainer_id`);
ALTER TABLE `payment`
ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`gym_id`) REFERENCES `gym` (`gym_id`);
ALTER TABLE `trainer`
ADD CONSTRAINT `trainer_ibfk_1` FOREIGN KEY (`pay_id`) REFERENCES `payment` (`pay_id`);
COMMIT;

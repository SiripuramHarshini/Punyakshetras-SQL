CREATE DATABASE PunyakshetrasDB;

USE PunyakshetrasDB;

CREATE TABLE SacredTemples(
	SN INT,
    Temple_Name VARCHAR(100) NOT NULL,
    Location VARCHAR(100) NOT NULL,
    State VARCHAR(100),
    Deity VARCHAR(100),
    Description TEXT,
    BuiltBy varchar(100)
);

INSERT INTO SacredTemples(SN, Temple_Name, Location, State, Deity, Description, BuiltBy)
VALUES
	(1, 'Kedarnath', 'Rudraprayag', 'Uttarkhand', 'Lord Shiva', 'One of the 12 Jyothirlingas located in Himalayas', 'Pandavas'),
    (2, 'Kashi Vishwanath', 'Varanasi','Uttarpradesh', 'Lord Shiva', 'One of the 12 Jyothirlingas on the banks of the Ganges, dedicated to Shiva.', 'Ahilyabai Holkar'),
    (3, 'Madhurai Meenakshi', 'Madhurai','Tamilnadu', 'Goddess Meenakshi & Lord Sundareswarar', 'A grand Dravidian-style temple with stunning gopurams.', 'King Kulasekara Pandya'),
    (4, 'Tirupati Balaji', 'Tirumala', 'AndhraPradesh','Lord Venkatesswara', 'One of the wealthiest and most visited Hindu temples.', 'Tamil Kings'),
    (5, 'Shri Jagannath', 'Puri', 'Odisha','Lord Jagannath(Vishnu)', 'Famous for the annual Rath Yatra, one of the Char Dham pilgrimage sites.', 'King Anantavarman Chodaganga Deva'),
    (6, 'Somnath', 'Gir Somnath', 'Gujarat', 'Lord Shiva', 'One of the first Jyotirlingas, known for its historical significance.', 'Chalukya Dynasty'),
    (7, 'Kanchi Kamakshi', 'Kanchipuram', 'Tamil Nadu', 'Goddess Kamakshi', 'One of the most revered Shakti Peethas in India.', 'Pallava Dynasty'),
    (8, 'Shirdi Sai Baba', 'Shirdi', 'Maharashtra', 'Sai Baba', 'A temple dedicated to Sai Baba, a spiritual saint worshipped by millions.', 'Devotees of Sai Baba'),
    (9, 'Shri Padmanabhaswamy', 'Thiruvananthapuram', 'Kerala', 'Anantha Padmanabha Swamy', "The world's richest temple, known for its underground treasure vaults.", 'Chera Kings'),
    (10, 'Dwarakadhish', 'Dwaraka', 'Gujarat', 'Lord Krishna', "One of the Char Dham temples, believed to be Krishna's kingdom.", "Vajranabha(Krishna's Grandson)"),
    (11, 'Siddhivinayak', 'Mumbai', 'Maharashtra', 'Lord Ganesha', "One of the most popular Ganesha temples, visited by celebrities.", 'Laxman vithu& Deubai Patil'),
    (12, 'Gangotri', 'Uttarkashi', 'Uttarkhand', 'Goddess Ganga', "A sacred temple at the origin of the Ganges River.", 'Amar Singh Thapa'),
    (13, 'Mahabodhi', 'Bodh Gaya', 'Bihar', 'Lord Buddha', 'A UNESCO World Heritage Site where Buddha attained enlightenment.', 'Emperor Ashoka'),
    (14, 'Kamakhya', 'Guwahati', 'Assam', 'Goddess Kamakhya', 'A major Shakti Peetha associated with Tantric worship.', 'Koch Dynasty'),
    (15, 'Virupaksha', 'Hampi', 'Karnataka', 'Lord Shiva', 'A historic temple built during the Vijayanagara Empire.', 'Chalukya Kings'),
    (16, 'Golden Temple', 'Amritsar', 'Punjab', 'Guru Granth Sahib', 'The holiest Sikh shrine, known for its golden structure.', 'Guru Arjan Dev'),
    (17, 'Ramanathaswamy', 'Rameswaram', 'Tamil Nadu', 'Lord shiva', 'A Jyotirlinga temple, part of the Char Dham pilgrimage.', 'Pandya Kings'),
    (18, 'Konark Sun', 'Konark', 'Odisha', 'Lord Sun', 'A UNESCO World Heritage Site, shaped like a chariot.', 'King Narasimhadeva 1'),
    (19, 'Yamunotri', 'Uttarkashi', 'Uttarkhand', 'Goddess Yamuna', 'A key temple in the Chota Char Dham pilgrimage.', 'Amar Singh Thapa'),
    (20, 'Badrinath', 'Chamoli', 'Uttarkhand', 'Lord vishnu', "A Char Dham pilgrimage site, believed to be Vishnu's abode.", 'Adi Shankaracharya'),
    (21, 'Raja Rajeswara', 'Thanjavur', 'Tamil Nadu', 'Lord Shiva', 'Also called Brihadeeswarar Temple, a UNESCO World Heritage Site.', 'Raja Raja Chola I'),
    (22, 'Yadagiri Gutta', 'Yadadri', 'Telangana', 'Lord Lakshmi Narasimha', 'A famous cave temple dedicated to Narasimha, an avatar of Vishnu.', 'Vishnukundina Kings'),
	(23, 'Ramappa Temple', 'Warangal', 'Telangana', 'Lord Shiva', 'A 13th-century Kakatiya-era temple, famous for its floating bricks.', 'Kakatiya Dynasty'),
	(24, 'Badrachalam', 'Bhadradri Kothagudem', 'Telangana', 'Lord Rama', 'A temple closely associated with Lord Rama’s exile journey.', 'Bhakta Ramadasu'),
	(25, 'Ayodhya', 'Ayodhya', 'Uttar Pradesh', 'Lord Rama', 'The birthplace of Lord Rama and an important Hindu pilgrimage site.', 'Ikshvaku Dynasty'),
	(26, 'Arunachalam', 'Tiruvannamalai', 'Tamil Nadu', 'Lord Shiva', 'A sacred temple associated with the fire element of Shiva (Agni Lingam).', 'Chola Kings'),
	(27, 'Guruvayur', 'Guruvayur', 'Kerala', 'Lord Krishna', 'A major pilgrimage site known as the "Dwarka of the South".', 'Chera Kings'),
    (28, 'Chidambaram Nataraja Temple', 'Chidambaram', 'Tamil Nadu', 'Lord Nataraja (Shiva)', 'A temple depicting Shiva in his cosmic dance form.', 'Chola Dynasty'),
	(29, 'Annamalaiyar Temple', 'Tiruvannamalai', 'Tamil Nadu', 'Lord Shiva', 'One of the Pancha Bhoota Sthalams representing fire.', 'Chola Kings'),
	(30, 'Ranganathaswamy Temple', 'Srirangam', 'Tamil Nadu', 'Lord Vishnu', 'One of the largest functioning temples, dedicated to Ranganatha (Vishnu).', 'Chola Kings'),
	(31, 'Vaishno Devi', 'Katra', 'Jammu & Kashmir', 'Goddess Vaishno Devi', 'A popular Shakti temple located in the Trikuta Mountains.', 'Unknown - Ancient Temple'),
    (32, 'Sree Vadakkunnathan Temple', 'Thrissur', 'Kerala', 'Lord Shiva', 'One of the oldest Shiva temples in India.', 'Parasurama (Mythological)'),
    (33, 'Bhimashankar', 'Pune', 'Maharashtra', 'Lord Shiva', 'One of the 12 Jyotirlingas, located in the Sahyadri hills.', 'Peshwa Rulers'),
	(34, 'Kalaram Temple', 'Nashik', 'Maharashtra', 'Lord Rama', 'A historic temple where the idol of Rama is black.', 'Sardar Rangarao Odhekar'),
	(35, 'Kashi Annapurna Temple', 'Varanasi', 'Uttar Pradesh', 'Goddess Annapurna', 'A temple dedicated to the goddess of food and nourishment.', 'Maratha Rulers'),
	(36, 'Tripura Sundari Temple', 'Udaipur', 'Tripura', 'Goddess Tripura Sundari', 'One of the 51 Shakti Peethas, associated with Goddess Sati.', 'Maharaja Dhanya Manikya'),
    (37, 'Annavaram Temple', 'Annavaram', 'Andhra Pradesh', 'Lord Satyanarayana (Vishnu)', 'A popular temple dedicated to Lord Satyanarayana.', 'Ancient Temple'),
	(38, 'Jagatpita Brahma Temple', 'Pushkar', 'Rajasthan', 'Lord Brahma', 'One of the very few temples dedicated to Lord Brahma.', 'Unknown - Ancient Temple'),
	(39, 'Amarnath Temple', 'Anantnag', 'Jammu & Kashmir', 'Lord Shiva', 'A famous ice Shiva Linga formed naturally inside a cave.', 'Unknown - Ancient Temple'),
    (40, 'Shani Shingnapur', 'Ahmednagar', 'Maharashtra', 'Lord Shani', 'A unique temple where the deity is worshipped without a roof or walls.', 'Ancient Temple');
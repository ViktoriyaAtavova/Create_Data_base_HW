INSERT INTO musical_genre (name)
VALUES ('Alternative Rock'), ('Deep House'), ('Europop'), ('Hip-Hop'), ('Indie Rock'), ('Neo-Classical'), ('Post-Punk');

INSERT INTO performer (name)
VALUES ('Bring Me the Horizon'), ('Three Days Grace'), ('HVOB'), ('Solomun'), ('Ace of Base'), ('Geoge Michael'), ('Mac Miller'),
('The Weeknd'), ('Foals'), ('The Neighbourhood'), ('Max Richter'), ('Ludovico Einaudi'), ('Joy Division'), ('The Cure');

INSERT INTO album (name, year_of_issue)
VALUES ('Sempiternal', '01.04.2013'), ('Life Starts Now', '22.09.2009'),('Happy Nation', '25.11.1993'), ('After Hours', '20.03.2020'), 
('Everything Not Saved Will Be Lost – Part 1', '08.03.2019'), ('Wiped Out!', '30.10.2015'), ('Unknown Pleasures', '15.06.1979'), ('Nobody Is Not Loved', '27.05.2021'); 

INSERT INTO song 
VALUES (1, 'Seen it all before', 248, 1), (2, 'Heartless', 198, 4), (3, 'After Hours', 361, 4), (4, 'Exits', 357, 5), 
(5, 'Greetings from Califournia', 244, 6), (6, 'Happy Nation', 255, 3);

INSERT INTO collection 
VALUES (1, 'Gold', '11.10.2019'), (2, 'Permanent', '12.06.1995'), (3, 'The Highligts', '05.02.2021'), (4, '#000000 & #FFFFFF', '28.11.2014');

INSERT INTO performermusical_genre 
VALUES (1, 1), (1, 2),(2, 3), (2, 4), (3, 5), (3, 6), (4, 7), (4, 8), (5, 9), (5, 10), (6, 11), (6, 12), (7, 13), (7, 14);

INSERT INTO songcollection 
VALUES (6, 1), (2, 3);

INSERT INTO  albumperformer 
VALUES (1, 1), (2, 2), (3, 5), (4, 8), (5, 9), (6, 10), (7, 13), (8, 4);

INSERT INTO  song 
VALUES (7, 'R.I.P. 2 my Youth', 205, 6);
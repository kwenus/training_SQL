insert into genre(title)
values ('rock'), ('indie'), ('pop'), ('post-punk'), ('metal'), ('experimental'), ('folk'), ('prog-rock')

insert into musician (musician_name)
values ('Of Montreal'), ('Perfume Genius'), ('King Crimson'), ('Tomahawk'), ('Helmet'), ('The Go-Go''s')

insert into genre_musician (genre_id, musician_id)
values (1, 5), (2, 1), (8, 3), (3, 2), (4, 6), (5, 4)

insert into album (title, release_year)
values ('Ur Fun', 2020), ('Innocence Reaches', 2016), ('The Sunlandic Twins', 2005)

insert into musician_album (album_id, musician_id)
values (1, 1), (2, 1), (3, 1)

insert into album (title, release_year)
values ('Ugly Season', 2022), ('No Shape', 2017), ('Too Bright', 2014)

insert into musician_album (album_id, musician_id)
values (4, 2), (5, 2), (6, 2)

insert into album (title, release_year)
values ('The Power to Believe', 2003), ('Thrak', 1995), ('Beat', 1982)

insert into musician_album (album_id, musician_id)
values (7, 3), (8, 3), (9, 3)

insert into album (title, release_year)
values ('Tonic Immobility', 2021), ('Oddfellows ', 2013), ('Mit Gas', 2003)

insert into musician_album (album_id, musician_id)
values (10, 4), (11, 4), (12, 4)

insert into album (title, release_year)
values ('Left', 2023), ('Seeing Eye Dog', 2010), ('Size Matters', 2004)

insert into musician_album (album_id, musician_id)
values (13, 5), (14, 5), (15, 5)

insert into album (title, release_year)
values ('God Bless the Go-Go''s ', 2001), ('Talk Show', 1984), ('Beauty and the Beat', 1981)

insert into musician_album (album_id, musician_id)
values (16, 6), (17, 6), (18, 6)

insert into track (title, duration, album_id)
values ('I Decline', 118, 6), ('Queen', 230, 6), ('Fool', 235, 6), ('No Good', 229, 6), ('My Body',	137, 6), ('Don''t Let Them In', 141, 6), 
('Grid', 159, 6), ('Longpig', 170, 6), ('I''m a Mother', 210, 6), ('Too Bright', 205, 6), ('All Along', 154, 6), 
('Peace to All Freaks', 284, 1), ('Polyaneurism', 210, 1), ('Get God''s Attention By Being An Atheist', 230, 1), ('Gypsy That Remains', 258, 1), 
('You''ve Had Me Everywhere', 286, 1), ('Carmillas of Love', 239, 1), ('Don''t Let Me Die in America', 215, 1), ('St. Sebastian', 245, 1), 
('Deliberate Self-harm Ha Ha', 260, 1), ('20th Century Schizofriendic Revengoid Man', 203, 1),
('Neal and Jack and Me', 242, 9), ('Heartbeat', 234, 9), ('Sartori in Tangier', 214, 9), ('Waiting Man', 247, 9), ('Neurotica', 288, 9),
('Two Hands', 203, 9),('The Howler', 253, 9), ('Requiem', 408, 9),
('SHHH!', 194, 10), ('Valentine Shine', 181, 10), ('Predators and Scavengers', 177, 10), ('Doomsday Fatigue', 209, 10), ('Business Casual', 209, 10),
('Tattoo Zero', 198, 10), ('Fatback', 194, 10), ('Howlie', 248, 10), ('Eureka', 123, 10), ('Sidewinder', 234, 10), ('Recoil', 207, 10), ('Dog Eat Dog', 185, 10),
('So Long', 192, 14), ('Seeing Eye Dog', 243, 14), ('Welcome to Algiers', 261, 14), ('LA Water', 249, 14), ('In Person', 186, 14), ('Morphing', 197, 14),
('White City', 205, 14), ('And Your Bird Can Sing', 134, 14), ('Miserable', 204, 14), ('She''s Lost', 390, 14),
('Head over Heels', 218, 17), ('Turn to You', 228, 17), ('You Thought', 252, 17), ('Beneath the Blue Sky', 180, 17), ('Forget That Day', 265, 17),
('I''m the Only One', 209, 17), ('Yes or No', 244, 17), ('Capture the Light', 195, 17), ('I''m with You', 217, 17), ('Mercenary', 220, 17)

insert into track (title, duration, album_id)
values ('Requiem for O.M.M.2', 139, 3), ('I Was Never Young', 210, 3), ('Wraith Pinned to the Mist and Other Games', 255, 3), ('Forecast Fascist Future', 262, 3),
('So Begins Our Alabee', 255, 3), ('Our Spring Is Sweet Not Fleeting', 62, 3), ('The Party''s Crashing Us', 293, 3), ('Knight Rider', 66, 3),
('I Was a Landscape in Your Dream', 185, 3), ('Death of a Shade of a Hue', 174, 3), ('Oslo in the Summertime', 201, 3), ('October Is Eternal', 238, 3), 
('The Repudiated Immortals', 138, 3),
('Holiday', 202, 13), ('Gun Fluf', 209, 13), ('NYC Tough Guy', 154, 13), ('Make-Up', 168, 13), ('Big Shot', 163, 13), ('Bombastic', 191, 13), ('Reprise', 101, 13),
('Dislocated', 199, 13), ('Tell Me Again', 163, 13), ('Powder Puff', 221, 13), ('Resolution', 103, 13),
('Just a Room', 210, 4), ('Herem', 441, 4), ('Teeth', 253, 4), ('Pop Song', 305, 4), ('Scherzo', 231, 4), ('Ugly Season', 280, 4), ('Eye in the Wall', 522, 4),
('Photograph', 281, 4), ('Hellbent', 402, 4), ('Cenote', 213, 4),
('The Power to Believe I: A Cappella', 44, 7), ('Level Five', 437, 7), ('Eyes Wide Open', 248, 7), ('Elektrik', 479, 7), ('Facts of Life: Intro', 98, 7),
('Facts of Life', 305, 7), ('The Power to Believe II', 483, 7), ('Dangerous Curves', 392, 7), ('Happy with What You Have to Be Happy With', 197, 7),
('The Power to Believe III', 249, 7), ('The Power to Belie5ve IV: Coda', 149, 7),
('La La Land', 181, 16), ('Unforgiven', 203, 16), ('Apology', 237, 16), ('Stuck in My Car', 206, 16), ('Vision of Nowness', 175, 16), ('Here You Are', 241, 16),
('Automatic Rainy Day', 197, 16), ('Kissing Asphalt', 169, 16), ('Insincere', 225, 16), ('Sonic Superslide', 211, 16), ('Throw Me a Curve', 191, 16), 
('Talking Myself Down', 235, 16), ('Daisy Chain', 225, 16),
('Birdsong', 310, 12), ('Rape This Day', 192, 12), ('You Can''t Win', 289, 12), ('Mayday', 212, 12), ('Rotgut', 171, 12), ('Capt Midnight', 190, 12),
('Desastre Natural', 178, 12), ('When the Stars Begin to Fall', 174, 12), ('Harelip',210, 12), ('Harlem Clowns', 220, 12), ('Aktion 13F14', 295, 12)

insert into compilation (title, release_year)
values ('Strange songs', 2021), ('Songs for Imagination', 2022), ('Gym songs', 2020), ('About Time', 2023), ('Slow down everybody', 2021)

insert into compilation_track (compilation_id, track_id)
values (1, 12), (1, 10),(1, 4), (1, 31), (1, 59), (1, 92), (1, 2),(1, 40), (1, 37), (1, 70),
(2, 1),  (2, 15), (2, 42), (2, 57), (2, 60), (2, 58), (2, 33), (2, 29), (2, 17), (2, 53), (2, 45),
(3, 77), (3, 79), (3, 15),(3, 91), (3, 70), (3, 90), (3, 76), (3, 58), (3, 115), (3, 128), (3, 100),
(4, 32), (4, 36), (4, 89), (4, 37), (4, 88), (4, 90), (4, 114), (4, 130), (4, 40),
(5, 52), (5, 92), (5, 3),(5, 13), (5, 42), (5, 75), (5, 82), (5, 63), (5, 16), (5, 43), (5, 12)

insert into genre_musician (genre_id, musician_id) 
values (1, 3), (6, 3), (7, 3), (1, 1), (3, 1), (4, 1), (6, 1), (7, 1), (1, 2), (3, 2), (7, 2), (1, 4), (5, 4), (5, 5), (1, 6), (3, 6)





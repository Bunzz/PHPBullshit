CREATE DATABASE  dvdstore;

CREATE TABLE  dvdstore.genre (
    id            INT NOT NULL AUTO_INCREMENT,
    genre         VARCHAR( 20 ) NOT NULL,
    description   VARCHAR( 500 ) NOT NULL,
PRIMARY KEY (id), UNIQUE (genre) ) ENGINE = INNODB;

INSERT INTO dvdstore.genre (
        id, genre, description)
VALUES (
        NULL, 'Action',
        'An action story is similar to adventure, and the protagonist usually takes a risky turn, which leads to desperate situations (including explosions, fight scenes, daring escapes, etc.). Action and Adventure are usually categorized together (sometimes even as "action-adventure") because they have much in common, and many stories fall under both genres simultaneously (for instance, the James Bond series can be classified as both).'),
       (
        NULL, 'Adventure',
        'An adventure story is about a protagonist who journeys to epic or distant places to accomplish something. It can have many other genre elements included within it, because it is a very open genre. The protagonist has a mission and faces obstacles to get to her destination. Also, adventure stories usually include unknown settings and characters with prized properties or features'),
       (
        NULL, 'Animation',
        'Animation is the process of creating motion and shape change[Note 1] illusion by means of the rapid display of a sequence of static images that minimally differ from each other. The illusion—as in motion pictures in general—is thought to rely on the phi phenomenon. Animators are artists who specialize in the creation of animation.'),
       (
        NULL, 'Comedy',
        'Comedy is a story that tells about a series of funny or comical events, intended to make the audience laugh. It is a very open genre, and thus crosses over with many other genres on a frequent basis.'),
       (
        NULL, 'Crime',
        'A crime story is about a crime that is being committed or was committed. It can also be an account of a criminal''s life. It often falls into the Action or Adventure genres.'),
       (
        NULL, 'Fantasy',
        'A fantasy story is about magic or supernatural forces, rather than technology, though it often is made to include elements of other genres, such as science fiction elements, for instance computers or DNA, if it happens to take place in a modern or future era. Depending on the extent of these other elements, the story may or may not be considered to be a "hybrid genre" series; for instance, even though the Harry Potter series canon includes the requirement of a particular gene to be a wizard, it is referred to only as a fantasy series.'),
       (
        NULL, 'Historical',
        'A story about a real person or event. Often, they are written in a text book format, which may or may not focus on solely that.'),
       (
        NULL, 'Historical fiction',
        'In literature, historical fiction is a text depicted as based on real historical figures, and actual events, which are woven together with fictitious elements. Historical fiction is often considered to be confusing to people who are trying to find facts.[according to whom?] For example, schoolchildren told to look for historical information often encounter incorrect information in this sources, and relay them as accurate by mistake.'),
       (
        NULL, 'Horror',
        'A horror story is told to deliberately scare or frighten the audience, through suspense, violence or shock. H. P. Lovecraft distinguishes two primary varieties in the "Introduction" to Supernatural Horror in Literature: 1) Physical Fear or the "mundanely gruesome" and 2) the true Supernatural Horror story or the "Weird Tale." The supernatural variety is occasionally called "Dark Fantasy," since the laws of nature must be violated in some way, thus qualifying the story as "fantastic."'),
       (
        NULL, 'Mystery',
        'Although normally associated with the crime genre, mystery fiction is considered a completely different genre in certain circumstances where the focus is on supernatural mystery (even if no crime is involved).'),
       (
        NULL, 'Romance',
        'Traditionally, a romance story involves chivalry, adventure and love. In modern writing, a story about character''s relationships, or engagements (a story about character development and interpersonal relationships rather than adventures).'),
       (
        NULL, 'Satire',
        'Often strictly defined as a literary genre or form, although in practice it is also found in the graphic and performing arts. In satire, human or individual vices, follies, abuses, or shortcomings are held up to censure by means of ridicule, derision, burlesque, irony, or other methods, ideally with the intent to bring about improvement.'),
       (
        NULL, 'Science fiction',
        'Science fiction is similar to fantasy, except stories in this genre use scientific understanding to explain the universe that it takes place in. It generally includes or is centered on the presumed effects or ramifications of computers or machines; travel through space, time or alternate universes; alien life-forms; genetic engineering; or other such things.'),
       (
        NULL, 'Thriller',
        'A Thriller is a story that is usually a mix of fear and excitement. It has traits from the suspense genre and often from the action, adventure or mystery genres, but the level of terror makes it borderline horror fiction at times as well. It generally has a dark or serious theme, which also makes it similar to drama.'),
       (
        NULL, 'Drama',
        'Drama is now commonly used to refer to a genre of film or television which is more serious than comedy.');

CREATE TABLE  dvdstore.product (
    id            INT NOT NULL AUTO_INCREMENT,
    title         VARCHAR( 50 ) NOT NULL,
    director      VARCHAR( 50 ) NOT NULL,
    release_date  DATE NOT NULL,
    price         DECIMAL( 16,2 ) NOT NULL,
    description   VARCHAR( 500 ) NOT NULL,
    quality       INT NOT NULL,
    duration      VARCHAR( 8 ) NOT NULL,
PRIMARY KEY (id) , UNIQUE (title) ) ENGINE = INNODB;

INSERT INTO dvdstore.product (
        id, title, director, release_date, price, description, quality, duration)
VALUES (
        NULL, 'Jurassic World', 'Colin Trevorrow', '2015-06-12', 69.95,
        'Twenty-two years after the events of Jurassic Park, Isla Nublar now features a fully functioning dinosaur theme park, Jurassic World, as originally envisioned by John Hammond. After 10 years of operation and visitor rates declining, in order to fulfill a corporate mandate, a new attraction is created to re-spark visitor''s interest, which backfires horribly.',
        1, '02:04:00'),
       (
        NULL, 'Me and Earl and the Dying Girl', 'Alfonso Gomez-Rejon', '2015-06-12', 39.95,
        'High schooler Greg, who spends most of his time making parodies of classic movies with his co-worker Earl, finds his outlook forever altered after befriending a classmate who has just been diagnosed with cancer.',
        2, '01:45:00'),
       (
        NULL, 'The Wolfpack', 'Crystal Moselle', '2015-06-12', 49.95,
        'Locked away from society in an apartment on the Lower East Side of Manhattan, the Angulo brothers learn about the outside world through the films that they watch. Nicknamed, ''The Wolfpack,'' the brothers spend their childhood reenacting their favorite films using elaborate homemade props and costumes. Their world is shaken up when one of the brothers escapes and everything changes.',
        2, '01:20:00'),
       (
        NULL, 'The 11th Hour', 'Anders Morgenthaler', '2014-09-22', 69.95,
        'Successful businesswoman Maria has achieved everything except what she wants the most - a baby of her own. She decides to deal with the matter by herself and embarks on a desperate and dangerous journey in order to make her dream come true.',
        1, '01:37:00'),
       (
        NULL, 'Spy', 'Paul Feig', '2015-06-22', 69.95,
        'A desk-bound CIA analyst volunteers to go undercover to infiltrate the world of a deadly arms dealer, and prevent diabolical global disaster.',
        1, '01:37:00'),
       (
        NULL, 'San Andreas', 'Brad Peyton', '2015-05-22', 69.95,
        'In the aftermath of a massive earthquake in California, a rescue-chopper pilot makes a dangerous journey across the state in order to rescue his daughter.',
        1, '01:54:00'),
       (
        NULL, 'Insidious: Chapter 3', 'Leigh Whannell', '2015-05-22', 69.95,
        'A prequel set before the haunting of the Lambert family that reveals how gifted psychic Elise Rainier reluctantly agrees to use her ability to contact the dead in order to help a teenage girl who has been targeted by a dangerous supernatural entity.',
        1, '01:37:00'),
       (
        NULL, 'Entourage', 'Doug Ellin', '2015-05-22', 69.95,
        'Movie star Vincent Chase, together with his boys Eric, Turtle, and Johnny, are back - and back in business with super agent-turned-studio head Ari Gold on a risky project that will serve as Vince''s directorial debut.',
        1, '01:44:00');

CREATE TABLE  dvdstore.product_genre (
    id            INT NOT NULL AUTO_INCREMENT,
    product_id    INT NOT NULL,
    genre_id      INT NOT NULL,
PRIMARY KEY (id) , UNIQUE (product_id, genre_id) ) ENGINE = INNODB;

INSERT INTO dvdstore.product_genre (
        id, product_id, genre_id)
VALUES (
        NULL, 1, 1),
       (
        NULL, 1, 2),
       (
        NULL, 1, 13),
       (
        NULL, 1, 14),
       (
        NULL, 2, 15),
       (
        NULL, 3, 7),
       (
        NULL, 3, 15),
       (
        NULL, 4, 15),
       (
        NULL, 5, 1),
       (
        NULL, 5, 4),
       (
        NULL, 5, 5),
       (
        NULL, 6, 1),
       (
        NULL, 6, 14),
       (
        NULL, 6, 15),
       (
        NULL, 7, 9),
       (
        NULL, 8, 4);

CREATE TABLE  dvdstore.order (
    id            INT NOT NULL AUTO_INCREMENT,
    invoice_no    INT NOT NULL,
    user_id       INT NOT NULL,
    address_1     VARCHAR( 50 ) NOT NULL,
    address_2     VARCHAR( 50 ) NOT NULL,
    suburb        VARCHAR( 30 ) NOT NULL,
    postcode      VARCHAR( 4  ) NOT NULL,
    order_date    DATE NOT NULL,
PRIMARY KEY (id), UNIQUE (invoice_no) ) ENGINE = INNODB;

CREATE TABLE  dvdstore.order_detail (
    id            INT NOT NULL AUTO_INCREMENT,
    order_id      INT NOT NULL,
    product_id    INT NOT NULL,
    quantity      INT NOT NULL,
    price         DECIMAL( 16,2 ) NOT NULL,
PRIMARY KEY (id), UNIQUE (order_id, product_id) ) ENGINE = INNODB;

CREATE TABLE  dvdstore.user (
    id            INT NOT NULL AUTO_INCREMENT,
    username      VARCHAR( 20 ) NOT NULL,
    first_name    VARCHAR( 30 ) NOT NULL,
    last_name     VARCHAR( 30 ) NOT NULL,
    password      VARCHAR( 30 ) NOT NULL,
PRIMARY KEY (id), UNIQUE (username) ) ENGINE = INNODB;


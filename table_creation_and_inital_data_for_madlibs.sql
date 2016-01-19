
-- CREATE words table
CREATE TABLE words (
id int identity primary key,
word varchar(255),
descriptortype int 

) ;

--create the word types table (noun, verb etc)

CREATE TABLE wordtypes (

id int identity primary key,
type varchar(100)


);

-- ADD the foreign key relatonship
ALTER TABLE words add CONSTRAINT fk_typeid FOREIGN KEY (descriptortype)
REFERENCES wordtypes(id) ;

-- value the types table
INSERT INTO wordtypes VALUES ('noun');
INSERT INTO wordtypes VALUES ('pronoun');
INSERT INTO wordtypes VALUES ('verb');
INSERT INTO wordtypes VALUES ('adverb');
INSERT INTO wordtypes VALUES ('adjective');
INSERT INTO wordtypes VALUES ('proper noun');

-- sample values for the table

INSERT INTO words VALUES ('man', 1);
INSERT INTO words VALUES ('run', 3);
INSERT INTO words VALUES ('punching', 4);
INSERT INTO words VALUES ('I', 2);
INSERT INTO words VALUES ('fierce', 5);
INSERT INTO words VALUES ('John', 6);

-- demo xml query for the python ripper
SELECT 

words.word,
wordtypes.type

FROM 

words 

INNER JOIN wordtypes 
on words.descriptortype = wordtypes.id

for XML RAW;

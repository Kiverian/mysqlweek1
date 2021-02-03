USE week1sql;

-- Create Table
CREATE TABLE books (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR (100),
    publish_date DATE,
    author_firstName VARCHAR (20),
    author_lastName VARCHAR (20)
);

-- Insert Data into table
INSERT INTO books (title, publish_date, author_firstName, author_lastName)
VALUES ("Unshakeable", "2017-02-2017", "Tony", "Robbins"), ("Rich Dad Poor Dad", "1995-04-01", "Robert", "Kiyosaki"), ("Principles", "Ray","2017-09-19", "Dalio"), ("Sell or Be Sold", "2011-02-2017", "Grant", "Cardone"), ("Millionare Booklet", "2016-16-2016", "Grant", "Cardone");


-- Deletes Rich Dad Poor Dad as it's the oldest book by sorting the table then removing one item
DELETE FROM books
ORDER BY publish_date
LIMIT 1;

-- Returns count for the number of books entered by the title
SELECT COUNT(*) AS Sum
FROM books;
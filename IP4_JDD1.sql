SELECT * FROM author; #1

SELECT title, type FROM book; #2

SELECT DISTINCT publisherCode FROM book; #3

SELECT  title, price, (.25 * price) AS discount FROM book LIMIT 5; #4

SELECT title, price FROM book WHERE price>20; #5

SELECT publisherName FROM publisher WHERE city = 'New York'; #6

SELECT publisherName FROM publisher WHERE city != 'New York'; #7

SELECT bookCode, onHand FROM inventory WHERE onHand BETWEEN 2 and 4; #8

SELECT count(title) AS 'Penguin Books' FROM book JOIN publisher WHERE publisher.publisherName='Penguin USA'; #9

SELECT count(price) FROM book WHERE price<20; #10

SELECT bookCode, title, publishers.publisherCode, TYPE, price, paperback, publishers.publisherName 
FROM publisher AS publishers
JOIN book AS books; #11

SELECT bookCode, title, publishers.publisherCode, TYPE, price, paperback, publishers.publisherName 
FROM publisher AS publishers
JOIN book AS books ON
publishers.publisherCode=books.publisherCode; #12

SELECT title, publishers.city FROM book AS books JOIN publisher AS publishers; #13

SELECT title, branches.branchNum, inventories.onHand FROM book AS books JOIN inventory AS inventories JOIN branch AS branches; #14

SELECT title, branches.branchNum, inventories.onHand FROM book AS books JOIN inventory AS inventories JOIN branch AS branches ORDER BY onHand DESC LIMIT 2; #15

SELECT firstName, lastName, book.title FROM author JOIN book ORDER BY lastName, title; #16

SELECT firstName, lastName, books.title FROM author JOIN book AS books ORDER BY lastName; #bonus
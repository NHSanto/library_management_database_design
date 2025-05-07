-- Insert Users
INSERT INTO users (username, email, full_name) VALUES
('john_doe', 'john@example.com', 'John Doe'),
('jane_smith', 'jane@example.com', 'Jane Smith'),
('mike_ross', 'mike@example.com', 'Mike Ross');

-- Insert Books
INSERT INTO books (isbn, title, author, publisher, publication_year, total_copies, available_copies) VALUES
('978-3-16-148410-0', 'The Art of Programming', 'Donald Knuth', 'TechPress', 1973, 5, 2),
('978-0-13-110362-7', 'C Programming Language', 'Brian Kernighan', 'Prentice Hall', 1988, 3, 1),
('978-0-201-03801-3', 'Design Patterns', 'Erich Gamma', 'Addison-Wesley', 1994, 4, 0),
('978-1-491-94728-6', 'Clean Code', 'Robert C. Martin', 'Pearson', 2008, 6, 3),
('978-1-59327-599-0', 'Automate the Boring Stuff', 'Al Sweigart', 'No Starch Press', 2015, 2, 1),
('978-1-59327-584-6', 'Python Crash Course', 'Eric Matthes', 'No Starch Press', 2016, 3, 2);

-- Insert Categories
INSERT INTO categories (category_name, description) VALUES
('Programming', 'Books about programming languages and practices.'),
('Software Engineering', 'Principles and practices of software engineering.'),
('Data Science', 'Books related to data science and machine learning.'),
('Python', 'Books specifically about Python programming.');

-- Map Books to Categories
INSERT INTO book_categories (book_id, category_id) VALUES
(1, 1), (1, 2),
(2, 1),
(3, 1), (3, 2),
(4, 1), (4, 2),
(5, 1), (5, 4),
(6, 1), (6, 4);

-- Insert Loans (some older, some recent)
INSERT INTO loans (user_id, book_id, borrow_date, due_date, return_date, status) VALUES
(1, 1, DATE_SUB(CURRENT_DATE(), INTERVAL 2 MONTH), DATE_ADD(CURRENT_DATE(), INTERVAL 1 MONTH), NULL, 'borrowed'),
(2, 1, DATE_SUB(CURRENT_DATE(), INTERVAL 3 MONTH), DATE_SUB(CURRENT_DATE(), INTERVAL 2 MONTH), DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH), 'returned'),
(3, 2, DATE_SUB(CURRENT_DATE(), INTERVAL 5 MONTH), DATE_SUB(CURRENT_DATE(), INTERVAL 4 MONTH), DATE_SUB(CURRENT_DATE(), INTERVAL 3 MONTH), 'returned'),
(1, 3, DATE_SUB(CURRENT_DATE(), INTERVAL 4 MONTH), DATE_SUB(CURRENT_DATE(), INTERVAL 2 MONTH), NULL, 'borrowed'),
(2, 4, DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH), DATE_ADD(CURRENT_DATE(), INTERVAL 1 MONTH), NULL, 'borrowed'),
(3, 4, DATE_SUB(CURRENT_DATE(), INTERVAL 2 MONTH), DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH), DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY), 'returned'),
(1, 5, DATE_SUB(CURRENT_DATE(), INTERVAL 15 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 15 DAY), NULL, 'borrowed'),
(2, 6, DATE_SUB(CURRENT_DATE(), INTERVAL 10 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 20 DAY), NULL, 'borrowed');

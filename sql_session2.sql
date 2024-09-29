# tạo cơ sở dữ liệu
CREATE DATABASE node47;
USE node47

# tạo table, DATA
# tạo table users
# 3 KIỂU DỮ LIỆU CHÍNH:
# -Number: interger, float,...
# -String: VARCHAR, TEXT,...
# -Datetime (timestamp, day,...)
CREATE TABLE users(
   full_name VARCHAR(100),
   email VARCHAR(255),
   age INT,
   pass_word VARCHAR(255)
);

# Tạo data cho table user
INSERT INTO users (full_name, email, age, pass_word) VALUES 
('Nguyen Van A', 'nguyenvana@example.com', 25, 'password123'),
('Le Thi B', 'lethib@example.com', 30, 'passw0rd!'),
('Tran Van C', 'tranvanc@example.com', 22, 'mypassword456'),
('Pham Thi D', 'phamthid@example.com', 27, 'abc123xyz'),
('Do Quang Khai', 'khaidq@example.com', 23, 'KhaiPassword!'),
('Nguyen Thi E', 'nguyenthie@example.com', 26, 'securepass789'),
('Le Van F', 'levanf@example.com', 21, 'strongpass111'),
('Tran Thi G', 'tranthig@example.com', 29, 'passkey2021'),
('Nguyen Van H', 'nguyenvanh@example.com', 24, 'password789'),
('Le Thi I', 'lethii@example.com', 31, 'passme2022'),
('Tran Van J', 'tranvanj@example.com', 28, 'jpasspassword!'),
('Pham Van K', 'phamvank@example.com', 22, 'vank_pass432'),
('Do Thi L', 'dothil@example.com', 27, 'secretpass100'),
('Nguyen Van M', 'nguyenvanm@example.com', 24, 'mypassword999'),
('Le Thi N', 'lethin@example.com', 25, 'newpassword123'),
('Tran Van O', 'tranvano@example.com', 26, 'opassword567'),
('Pham Thi P', 'phamthip@example.com', 30, 'strongpassp@ss'),
('Do Van Q', 'dovanq@example.com', 28, 'quypasspass!'),
('Nguyen Thi R', 'nguyenthir@example.com', 23, 'securepassR@123'),
('Le Van S', 'levans@example.com', 21, 'Spasswordstrong!');

INSERT INTO users (full_name, email, age, pass_word) VALUES ('Dung','ahihi@gmail.com', 35, '1234567')

# viết câu query để get data
# *: lấy hết tất cả data trong table
SELECT * FROM users
SELECT full_name AS 'Họ tên', email FROM users

# lấy những người có tuổi từ 20-25 tuổi và sắp xếp tăng, giảm dần
# cách 1:
SELECT * FROM users
WHERE 20 <= age and age <= 25
ORDER BY age ASC # keyword để sắp xếp data: order by ...asc, desc)
LIMIT 5

# cách 2:
SELECT * FROM users
WHERE age BETWEEN 20 and 25

# thêm 2 column address và phone cho table users
# => update table thay vì xoá table và tạo lại
alter table users
add COLUMN address VARCHAR(255),
add COLUMN phone VARCHAR(15)

# thay đổi kiểu dữ liệu cho column đó (address)
ALTER TABLE users
modify address VARCHAR(100)

# thêm ràng buộc (constraint) cho column
ALTER TABLE users
modify COLUMN full_name VARCHAR(100) NOT NULL

INSERT INTO users (email, age, pass_word) VALUES ('ahihi@gmail.com', 35, '1234567')



# query, insert, update, delete
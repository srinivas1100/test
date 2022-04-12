-- CREATE TABLE users(
--     userId INT,
--     user_name VARCHAR(20),
--     last_name VARCHAR(255),
--     phone_number VARCHAR(10)
-- );
CREATE TABLE admin_table(
    id INT NOT NULL PRIMARY KEY,
    admin_name VARCHAR(20),
    admin_id int,
    admin_type ENUM('doctor', 'member', 'pharmacy', 'diagno') NOT NULL DEFAULT 'member',
    is_sub_type BOOLEAN
);
CREATE TABLE admin(
    id INT NOT NULL,
    ref_id FOREIGN KEY,
    PRIMARY KEY (id),
    FOREIGN KEY (ref_id) REFERENCES admin_table(admin_id)
);
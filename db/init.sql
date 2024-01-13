CREATE DATABASE records;
use records;

CREATE TABLE account(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) COLLATE utf8mb4_unicode_ci NOT NULL,
    password VARCHAR(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    date INT NOT NULL,
    system_name VARCHAR(255) NOT NULL,
    days_to_make INT NOT NULL,
    features TEXT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES account(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE deadlines (
    goal_id INT PRIMARY KEY,
    remaining_days INT NOT NULL,
    FOREIGN KEY (goal_id) REFERENCES goals(id) ON DELETE CASCADE
);

INSERT INTO account
	(name, password)
VALUES
	('azure','azure');

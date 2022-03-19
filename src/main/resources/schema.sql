
CREATE TABLE IF NOT EXISTS income(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(255) NOT NULL,
    value DECIMAL(19,2) NOT NULL,
    created_at DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS expense(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(255) NOT NULL,
    value DECIMAL(19,2) NOT NULL,
    created_at DATE NOT NULL
);
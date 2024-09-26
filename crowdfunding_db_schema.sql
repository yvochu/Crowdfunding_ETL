--Campaign Table Schema
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(255),
    description TEXT,
    goal DECIMAL(10, 2),
    pledged DECIMAL(10, 2),
    outcome VARCHAR(50),
    backers_count INT,
    country VARCHAR(50),
    currency VARCHAR(10),
    launch_date DATETIME,
    end_date DATETIME,
    category_id VARCHAR(50),
    subcategory_id VARCHAR(50),
    FOREIGN KEY (contact_id) REFERENCES contact(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
-- Category Table Schema
CREATE TABLE category (
    category_id VARCHAR(50) PRIMARY KEY,
    category VARCHAR(255)
);
-- Subcategory Table Schema
CREATE TABLE subcategory (
    subcategory_id VARCHAR(50) PRIMARY KEY,
    subcategory VARCHAR(255),
    category_id VARCHAR(50),
    FOREIGN KEY (category_id) REFERENCES category(category_id)
);
-- Contact Table Schema:
CREATE TABLE contact (
    contact_id INT PRIMARY KEY,
    -- Other contact details (name, email, etc.)
);
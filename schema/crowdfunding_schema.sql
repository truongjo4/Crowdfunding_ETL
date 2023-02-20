-- DROP TABLES if already present -- 
DROP TABLE campaign;
DROP TABLE contacts;
DROP TABLE category;
DROP TABLE subcategory;

CREATE TABLE contacts (
	"contact_id" int PRIMARY KEY NOT NULL,
	"first_name" VARCHAR(15) NOT NULL,
	"last_name" VARCHAR(15) NOT NULL,
	"email" VARCHAR(50) NOT NULL
);

CREATE TABLE category (
	"category_id" VARCHAR(5) PRIMARY KEY NOT NULL,
	"category" VARCHAR(15) NOT NULL
);

CREATE TABLE subcategory (
	"subcategory_id" VARCHAR(8) PRIMARY KEY NOT NULL,
	"category" VARCHAR(20) NOT NULL
);

CREATE TABLE campaign (
	"cf_id" int PRIMARY KEY NOT NULL,
    "contact_id" int NOT NULL,
    "company_name" VARCHAR(40) NOT NULL,
    "description" VARCHAR(100) NOT NULL,
    "goal" NUMERIC NOT NULL,
    "pledged" NUMERIC NOT NULL,
    "outcome" VARCHAR(12) NOT NULL,
    "backers_count" int NOT NULL,
    "country" VARCHAR(5) NOT NULL,
    "currency" VARCHAR(5) NOT NULL,
    "launch_date" date NOT NULL,
    "end_date" date NOT NULL,
    "category_id" VARCHAR(5) NOT NULL,
    "subcategory_id" VARCHAR(8) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
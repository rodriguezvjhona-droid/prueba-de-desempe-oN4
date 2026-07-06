# 📦 RiwiSupply S.A.S. - Inventory Management System

## 📖 Description

This project involves the design and implementation of a relational database for the company **RiwiSupply S.A.S.**, aimed at managing information regarding suppliers, products, categories, purchases, warehouses, and inventory movements.

The database was designed by applying the **normalization process up to Third Normal Form (3NF)** to reduce data redundancy and ensure data integrity.

---

# 🎯 Objectives

- Design a relational database.
- Apply the normalization process (1NF, 2NF, and 3NF).
- Develop the Entity-Relationship Model (ERM).
- Implement the database in PostgreSQL.
- Establish relationships using primary and foreign keys.
- Insert the data provided in the Excel file.
- Perform SQL queries on the database.

# 🛠 Technologies Used

| Tool | Description |
|-------------|-------------|
| PostgreSQL | Database Management System |
| DBeaver | PostgreSQL Client |
| Draw.io | Entity-Relationship Model Design |
| Excel | Dataset Analysis |
| GitHub | Version Control |

---

# 📂 Project Structure

```text
RiwiSupply/
│
├── README.md
├── Dataset_RiwiSupply.xlsx
├── MER.pdf
├── Modelo_Relacional.pdf
├── Script_DDL.sql
├── Consultas.sql
```

---

# 📊 Data Analysis

The original data file was provided in Excel format.

The analysis identified the following:

- Duplicate information.
- Unnecessary dependencies.
- Data redundancy.
- Entities mixed within a single table.

Consequently, a normalization process was carried out up to **3NF**.

---
# 🗂 Entity-Relationship Model (ERM)

The Entity-Relationship Model was created using **Draw.io**.

The model includes:

- Entities
- Attributes
- Primary Keys (PK)
- Foreign Keys (FK)
- Relationships
- Cardinalities

## Entities

- City
- Supplier
- Warehouse
- Category
- Product
- Purchase
- Purchase_Detail
- Inventory_Movement

> 📌 You can insert the ERM image here.

```md
![ERM](./MER.png)
```

---

# 🗃 Relational Model

The database consists of the following tables:

| Table | Description |
|--------|-------------|
| City | Cities |
| Supplier | Suppliers |
| Warehouse | Warehouses |
| Category | Categories |
| Product | Products |
| Purchase | Purchases |
| Purchase_Detail | Purchase Details |
| Inventory_Movement | Inventory Movements |

---

# 🔗 Relationships

| Relationship | Cardinality |
|-----------|--------------|
| City → Supplier | 1 : N |
| City → Warehouse | 1 : N |
| Supplier → Purchase | 1 : N |
| Purchase → Purchase_Detail | 1 : N |
| Category → Product | 1 : N |
| Product → Purchase_Detail | 1 : N |
| Product → Inventory_Movement | 1 : N |
| Warehouse → Inventory_Movement | 1 : N |

---

# 🏗 Implementation

The implementation was carried out using **PostgreSQL**.

The following activities were performed during development:

- Database creation.
- Table creation.
- Primary key definition.
- Foreign key definition.
- Integrity constraints.
- Data insertion using `INSERT INTO` statements.

---
# 📑 SQL Scripts

The project contains two main scripts:

## DDL Script

Contains:

- CREATE DATABASE
- CREATE TABLE
- PRIMARY KEY
- FOREIGN KEY
- CONSTRAINT

## DML Script

Contains:

- INSERT INTO
- UPDATE
- DELETE
- SELECT

---

# 📋 Normalization

The following normal forms were applied:

✅ First Normal Form (1NF)

- Elimination of repeating groups.
- Atomic data.

✅ Second Normal Form (2NF)

- Elimination of partial dependencies.

✅ Third Normal Form (3NF)

- Elimination of transitive dependencies.
- Separation of independent entities.

---

# 📁 Evidence

The project includes evidence of the development process:

- Entity-Relationship Model.
- Relational Model.
- SQL scripts.
- Query execution.
- PostgreSQL screenshots.
- DBeaver screenshots.

---

# 👨‍💻 Author

**Jhonatan Rodríguez Vanegas**

Project developed as a Relational Databases exercise using PostgreSQL and Draw.io.

---

# 📌 Conclusions

- A fully normalized database was designed.
- Relationships were implemented using primary and foreign keys.
- PostgreSQL ensured referential integrity.
- The model facilitates the management of suppliers, products, purchases, and inventory.
- The resulting structure enables efficient and

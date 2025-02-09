camper: /project$ psql --username=freecodecamp --dbname=postgres
Border style is 2.
Pager usage is off.
psql (12.17 (Ubuntu 12.17-1.pgdg22.04+1))
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
Type "help" for help.

postgres=> CREATE DATABASE universe;
CREATE DATABASE
postgres=> \c universe
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
You are now connected to database "universe" as user "freecodecamp".
universe=> \l
                                 List of databases
+-----------+--------------+----------+---------+---------+-----------------------+
|   Name    |    Owner     | Encoding | Collate |  Ctype  |   Access privileges   |
+-----------+--------------+----------+---------+---------+-----------------------+
| postgres  | postgres     | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| template0 | postgres     | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|           |              |          |         |         | postgres=CTc/postgres |
| template1 | postgres     | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|           |              |          |         |         | postgres=CTc/postgres |
| universe  | freecodecamp | UTF8     | C.UTF-8 | C.UTF-8 |                       |
+-----------+--------------+----------+---------+---------+-----------------------+
(4 rows)

universe=> CREATE TABLE galaxy();
CREATE TABLE
universe=> ALTER TABLE galaxy ADD PRIMARY KEY(info_galaxy);
ERROR:  column "info_galaxy" of relation "galaxy" does not exist
universe=> CREATE TABLE star();
CREATE TABLE
universe=> \d
            List of relations
+--------+--------+-------+--------------+
| Schema |  Name  | Type  |    Owner     |
+--------+--------+-------+--------------+
| public | galaxy | table | freecodecamp |
| public | star   | table | freecodecamp |
+--------+--------+-------+--------------+
(2 rows)

universe=> CREATE TABLE planet();
CREATE TABLE
universe=> CREATE TABLE moon();
CREATE TABLE
universe=> \d
            List of relations
+--------+--------+-------+--------------+
| Schema |  Name  | Type  |    Owner     |
+--------+--------+-------+--------------+
| public | galaxy | table | freecodecamp |
| public | moon   | table | freecodecamp |
| public | planet | table | freecodecamp |
| public | star   | table | freecodecamp |
+--------+--------+-------+--------------+
(4 rows)

universe=> ALTER TABLE galaxy ADD COLUMN name VARCHAR(30);
ALTER TABLE
universe=> ALTER TABLE moon ADD COLUMN name VARCHAR(30);
ALTER TABLE
universe=> ALTER TABLE planet ADD COLUMN name VARCHAR(30);
ALTER TABLE
universe=> ALTER TABLE star ADD COLUMN name VARCHAR(30);
ALTER TABLE
universe=> ALTER TABLE star ADD COLUMN has_life BOOLEAN;
ALTER TABLE
universe=> ALTER TABLE galaxy ADD COLUMN has_life BOOLEAN;
ALTER TABLE
universe=> ALTER TABLE planet ADD COLUMN has_life BOOLEAN;
ALTER TABLE
universe=> ALTER TABLE moon ADD COLUMN has_life BOOLEAN;
ALTER TABLE
universe=> ALTER TABLE moon ADD COLUMN is_sperical BOOLEAN;
ALTER TABLE
universe=> ALTER TABLE star ADD COLUMN is_sperical BOOLEAN;
ALTER TABLE
universe=> ALTER TABLE galaxy ADD COLUMN is_sperical BOOLEAN;
ALTER TABLE
universe=> ALTER TABLE planet ADD COLUMN is_sperical BOOLEAN;
ALTER TABLE
universe=> ALTER TABLE planet ADD COLUMN age_in_millions_of_years INT;
ALTER TABLE
universe=> ALTER TABLE moon ADD COLUMN age_in_millions_of_years INT;
ALTER TABLE
universe=> ALTER TABLE galaxy ADD COLUMN age_in_millions_of_years INT;
ALTER TABLE
universe=> ALTER TABLE star ADD COLUMN age_in_millions_of_years INT;
ALTER TABLE
universe=> ALTER TABLE galaxy ADD COLUMN galaxy_table VARCHAR(30) NOT NULL;
ALTER TABLE
universe=> ALTER TABLE galaxy ADD COLUMN info_galaxy SERIAL;
ALTER TABLE

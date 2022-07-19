/* JEREMY BARGY */
/* DATABASE DESIGN AND MANAGEMENT */
/* ACTIVITY #4 - Write the SQL data definition language, data manipulation language script to physically implement the logical design */
/* Database Systems : Jeremy’s Plastic Assortments */
/* Type of SQL: Oracale */

Alter SESSION SET NLS_DATE_fORMAT = 'MM/DD/YYYY';
SET ESCAPE ON;

/* Create a Company info table and insert values */
CREATE TABLE COMPANY (
COMPANY_NAME VARCHAR2(50) PRIMARY KEY,
COMPANY_ADDRESS VARCHAR2(50),
COMPANY_CITY VARCHAR2(50),
COMPANY_STATE VARCHAR(15),
COMPANY_PHONE VARCHAR2(10)
);

INSERT INTO COMPANY VALUES('Jeremys Plastic Assortments', '111 Plastic Blvd', 'Panama City', 'Florida', '1234567890');

/* Create a Department table and insert values */
CREATE TABLE DEPARTMENT (
DEPT_ID INTEGER PRIMARY KEY,
DEPART_NAME VARCHAR2(15),
DEPART_PHONE VARCHAR2(10)
);

INSERT INTO DEPARTMENT VALUES ('1', 'MOLDING', '8501111112');
INSERT INTO DEPARTMENT VALUES ('2', 'MANAGEMENT', '8501111122');
INSERT INTO DEPARTMENT VALUES ('3', 'ACCOUNTING', '8501111222');
INSERT INTO DEPARTMENT VALUES ('4', 'SALES', '8501112222');
INSERT INTO DEPARTMENT VALUES ('5', 'MAINTENANCE', '8501122222');
INSERT INTO DEPARTMENT VALUES ('6', 'SHIPPING', '8501222222');

/* Create an  Employee Table and insert values */
CREATE TABLE EMPLOYEE (
EMP_ID INTEGER PRIMARY KEY,
DEPT_ID INTEGER,
EMP_NAME VARCHAR2(50),
EMP_JOB	VARCHAR(50),
EMP_RATE NUMBER(8,2),
EMP_HOURS NUMBER(8, 2),
EMP_PAY	NUMBER(9, 2)
);

INSERT INTO EMPLOYEE VALUES ('111', '1', 'Eren Yeager', 'Molder', '18.00', '80', '1440');
INSERT INTO EMPLOYEE VALUES ('112', '3','Mikasa Ackerman', 'Accountant', '27.00', '65', '1755');
INSERT INTO EMPLOYEE VALUES ('113', '4', 'Armin Arlert', 'Salesperson', '20.00', '80', '1600');
INSERT INTO EMPLOYEE VALUES ('114', '6', 'Sasha Blouse', 'Shipper', '15.00', '80', '1200');
INSERT INTO EMPLOYEE VALUES ('115', '6', 'Connie Springer', 'Shipper', '15.00', '80', '1200');
INSERT INTO EMPLOYEE VALUES ('116', '2', 'CAYDE-6', 'Man Manager', '45.00', '40.00', '1800');
INSERT INTO EMPLOYEE VALUES ('117', '2', 'SPARTAN-2 JOHN', 'Mold Manager', '45.00', '80', '3600');
INSERT INTO EMPLOYEE VALUES ('118', '2', 'Jean Kirstein', 'Ship Manager', '30.00', '80', '2400');
INSERT INTO EMPLOYEE VALUES ('119', '5', 'Ikora Rey', 'Mechanic', '24.00', '80', '1920');
INSERT INTO EMPLOYEE VALUES ('120', '5', 'Ana Bray', 'Mechanic', '25.00', '80', '2000' );
INSERT INTO EMPLOYEE VALUES ('121', '2', 'Mara Sov', 'Maint. Manager', '45.00', '40', '1800');
INSERT INTO EMPLOYEE VALUES ('121', '4', 'Historia Reiss', 'Salesperson', '20.00', '60', '1200');
INSERT INTO EMPLOYEE VALUES ('122', '2', 'Erwin Smith', 'Sales Manager', '45.00', '80', '3600');
INSERT INTO EMPLOYEE VALUES ('123', '2', 'Zavala Braccus', 'Accounting Manager', '45.00', '80', '3600');
INSERT INTO EMPLOYEE VALUES ('124', '5', 'Avery Johnson', 'Mechanic Supervisor', '30.00', '80', '2400');
INSERT INTO EMPLOYEE VALUES ('125', '3', 'Miranda Keys', 'Accountant', '27.00', '80', '2160');
INSERT INTO EMPLOYEE VALUES ('126', '3', 'Levi Ackerman', 'Accountant Supervisor', '33.00', '80', '2640');
INSERT INTO EMPLOYEE VALUES ('127', '1', 'Hitch Dreyse', 'Operator', '12.00', '40', '480');
INSERT INTO EMPLOYEE VALUES ('128', '1', 'Petra Ral', 'Operator', '12.00', '80', '960');
INSERT INTO EMPLOYEE VALUES ('129', '1', 'Annie Leonhart', 'Operator', '12.00', '40', '480');
INSERT INTO EMPLOYEE VALUES ('130', '1', 'Melisa Mckay', 'Operator', '12.00', '80', '960');
INSERT INTO EMPLOYEE VALUES ('131', '1', 'Rimuru Tempest', 'Molder', '21.00', '80', '1680');
INSERT INTO EMPLOYEE VALUES ('132', '6', 'Veldora Tempest', 'Shipping Supervisor', '30.00', '80', '2400');
INSERT INTO EMPLOYEE VALUES ('133', '4', 'Lord Shaxx', 'Sales Supervisor', '30.00', '80', '2400');
INSERT INTO EMPLOYEE VALUES ('134', '1', 'Milim Nava', 'Molder', '22.00', '60', '1320');
INSERT INTO EMPLOYEE VALUES ('135', '5', 'Kenny Ackerman', 'Mechanic', '24.00', '80', '1920');

/* Create a Vendor Table and insert values */
CREATE TABLE VENDOR (
VENDOR_ID INTEGER PRIMARY KEY,
VENDOR_NAME VARCHAR2(50),
VENDOR_ADDRESS VARCHAR2(50),
VENDOR_CITY VARCHAR2(50),
VENDOR_STATE VARCHAR2(15),
VENDOR_PHONE VARCHAR2(10)
);

INSERT INTO VENDOR VALUES ('1', 'City of Panama City', '111 PC Dr', 'Panama City', 'Florida', '8509999999');
INSERT INTO VENDOR VALUES ('2', 'City of PCB', '333 PCB St.', 'Panama City Beach', 'Florida', '8509999998');
INSERT INTO VENDOR VALUES ('3', 'City of Lynn HAven', '548 Lynn Haven Blvd.', 'Lynn Haven', 'Florida', '8509999988');
INSERT INTO VENDOR VALUES ('4', 'City of Southport', '77 Southport HWY','Southport', 'Florida', '8509999888');
INSERT INTO VENDOR VALUES ('5', 'City of Mexico Beach', '6411 Mexico Beach Dr', 'Mexico Beach', 'Florida', '8509998888');
INSERT INTO VENDOR VALUES ('6', 'City of Freeport', '32 Port Dr', 'Freeport', 'Florida', '8509999997');
INSERT INTO VENDOR VALUES ('7', 'City of Youngstown', '147 Apple Rd.', 'Youngstown', 'Florida', '8509999987');
INSERT INTO VENDOR VALUES ('8', 'City of Port St Joe', '655 Bay Ave.', 'Port St Joe', 'Florida', '8509999887');
INSERT INTO VENDOR VALUES ('9', 'City of St.Petersburg', '96 Bay Dr', 'St. Petersburg', 'Florida', '8509998887');
INSERT INTO VENDOR VALUES ('10', 'City of Ocala', '123 Home Dr', 'Ocala', 'Florida', '8509999996');
INSERT INTO VENDOR VALUES ('11', 'City of Fort Myers', '456 Evergreen St', 'Fort Myers', 'Florida', '8509999986');
INSERT INTO VENDOR VALUES ('12', 'City of Jupiter', '888 Atlantic Dr', 'Jupiter', 'Florida', '8509999886');
INSERT INTO VENDOR VALUES ('13', 'City of Kissimmee', '777 Wally Ave', 'Kissimmee', 'Florida', '8509998886');
INSERT INTO VENDOR VALUES ('14', 'City of Gainesville', '69 Gator Cove Rd.', 'Gainesville', 'Florida', '8509999995');
INSERT INTO VENDOR VALUES ('15', 'Bay County School Dist.', '99 Learning Ave.', 'Bay', 'Florida', '8509999985');

/* Create a Product Table and insert values */
CREATE Table PRODUCT ( 
PRODUCT_ID INTEGER PRIMARY KEY,
PRODUCT_NAME VARCHAR2(50),
QTY_PER_BOX NUMBER,
PRICE_PER_BOX NUMBER(9,2)
);

INSERT INTO PRODUCT VALUES ('1', 'Forks', '15000', '45.00');
INSERT INTO PRODUCT VALUES ('2', 'Spoons', '15000', '45.00');
INSERT INTO PRODUCT VALUES ('3', 'Knives', '15000', '45.00');
INSERT INTO PRODUCT VALUES ('4', 'Big Cups', '1300', '30.00');
INSERT INTO PRODUCT VALUES ('5', 'Small Cups', '1350', '25.00');
INSERT INTO PRODUCT VALUES ('6', 'Small Bowls', '1300', '28.00');
INSERT INTO PRODUCT VALUES ('7', 'Large Bowls', '1350', '32.00');

/* Create a Machine Table and insert values */
CREATE TABLE MACHINE (
MACHINE_ID INTEGER PRIMARY KEY,
MACHINE_MODEL VARCHAR2(10)
);

INSERT INTO MACHINE VALUES ('1', 'NESTAL 800');
INSERT INTO MACHINE VALUES ('2', 'HUSKY 6500');
INSERT INTO MACHINE VALUES ('3', 'NESTAL 100');

/* Create a Mold Table and insert values */
CREATE TABLE MOLD (
MOLD_ID INTEGER PRIMARY KEY,
MOLD_NAME VARCHAR2(12),
MOLD_DESC VARCHAR2(50)
);

INSERT INTO MOLD VALUES ('2', 'SP50', 'Spoons - 50 Cavitites');
INSERT INTO MOLD VALUES ('1', 'FK50', 'Forks - 50 Cavitites');
INSERT INTO MOLD VALUES ('3', 'KN50', 'Knife - 50 Cavitites');
INSERT INTO MOLD VALUES ('4', 'BC10', 'Big Cups - 10 Cavitites');
INSERT INTO MOLD VALUES ('5', 'SP16', 'Small Cups - 16 Cavitites');
INSERT INTO MOLD VALUES ('6', 'SB12', 'Small Bowls - 12 Cavitites');
INSERT INTO MOLD VALUES ('7', 'BB10', 'Big Bowls - 10 Cavities');

/* Create a Material Table and insert values */
CREATE TABLE MATERIAL (
MATERIAL_ID INTEGER PRIMARY KEY,
MATERIAL_NAME VARCHAR2(25),
MATERIAL_DESC VARCHAR2(50)
);

INSERT INTO MATERIAL VALUES ('1', 'PE', 'Polyethylene');
INSERT INTO MATERIAL VALUES ('2', 'HDPE', 'Polyethylene - High Density');
INSERT INTO MATERIAL VALUES ('3', 'LDPE', 'Polyethylene - Low Density');
INSERT INTO MATERIAL VALUES ('4', 'PET', 'Polyethylene terephthalate');
INSERT INTO MATERIAL VALUES ('5', 'PP', 'Polypropylene');

/* Create a Color Table and insert values*/
CREATE TABLE COLOR (
COLOR_ID INTEGER PRIMARY KEY,
COLOR_NAME VARCHAR2(25),
COLOR_DESC VARCHAR2(50)
);

INSERT INTO COLOR VALUES ('1', 'CL', 'CLEAR - NO COLOR');
INSERT INTO COLOR VALUES ('2', 'BK', 'BLACK COLOR');
INSERT INTO COLOR VALUES ('3', 'WH', 'WHITE COLOR');
INSERT INTO COLOR VALUES ('4', 'RD', 'RED COLOR');
INSERT INTO COLOR VALUES ('5', 'BL', 'BLUE COLOR');
INSERT INTO COLOR VALUES ('6', 'GR', 'GREEN COLOR');

/* Create a Production Table and insert values */
CREATE TABLE PRODUCTION (
MACHINE_ID INTEGER,
MOLD_ID INTEGER,
PRODUCT_ID INTEGER,
MATERIAL_ID INTEGER,
COLOR_ID INTEGER
);

INSERT INTO PRODUCTION VALUES ('1', '1', '1', '3', '1');
INSERT INTO PRODUCTION VALUES ('2', '4', '4', '2', '3');
INSERT INTO PRODUCTION VALUES ('3', '6', '6', '5', '2');

/* Create an Order Table and insert values */
CREATE TABLE ORDERS (
ORDER_ID INTEGER PRIMARY KEY,
VENDOR_ID INTEGER,
PRODUCT_ID INTEGER,
ORDER_DATE	Date,
ORDER_QTY NUMBER,
ORDER_RATE NUMBER(9,2)
);

INSERT INTO ORDERS VALUES ('1', '15', '1', '4/17/2021', '150000', '45.00');
INSERT INTO ORDERS VALUES ('2', '1', '4', '4/17/2021', '13000', '30.00');
INSERT INTO ORDERS VALUES ('3', '5', '6', '4/17/2021', '13000', '28.00');

/* Create an Invoice Table and insert values */
CREATE TABLE INVOICE (
INVOICE_ID INTEGER PRIMARY KEY,
ORDER_ID INTEGER,
VENDOR_ID INTEGER,
INVOICE_DATE DATE,
INVOICE_AMT NUMBER(9,2)
);

INSERT INTO INVOICE VALUES ('1', '1', '15', '4/17/2021', '450.00');
INSERT INTO INVOICE VALUES ('2', '2', '1', '4/17/2021', '300.00');
INSERT INTO INVOICE VALUES ('3', '3', '5', '4/17/2021', '280.00');

COMMIT;
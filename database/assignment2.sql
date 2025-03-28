-- Insert a new account for Tony Stark
INSERT INTO account (account_firstname, account_lastname, account_email, account_password)  
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');  

-- Update Tony Stark's account_type to "Admin"
UPDATE account  
SET account_type = 'Admin'  
WHERE account_email = 'tony@starkent.com';  

-- Delete Tony Stark’s record from the account table
DELETE FROM account  
WHERE account_email = 'tony@starkent.com';  

-- Update GM Hummer description using REPLACE function
UPDATE inventory  
SET inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior')  
WHERE inv_make = 'GM' AND inv_model = 'Hummer';  

-- Inner Join: Retrieve make, model, and classification for "Sport" category
SELECT i.inv_make, i.inv_model, c.classification_name  
FROM inventory i  
INNER JOIN classification c ON i.classification_id = c.classification_id  
WHERE c.classification_name = 'Sport';  

-- Update image paths in inv_image and inv_thumbnail fields
UPDATE inventory  
SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),  
    inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');  

-- Select make, model, and classification name for "Sport" category vehicles
SELECT inv_make, inv_model, classification_name
FROM inventory inv
INNER JOIN classification cls
ON inv.classification_id = cls.classification_id
WHERE cls.classification_name = 'Sport';

-- Update inv_image and inv_thumbnail columns in the inventory table
-- by inserting "/vehicles" after "/images" in the file path.
UPDATE inventory
SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');

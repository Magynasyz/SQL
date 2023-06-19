UPDATE customer
SET c_acctbal=99999.00
WHERE c_mktsegment='Finance';

UPDATE customer
SET c_address='K street'
WHERE c_name='James Pyn';
 
-- update Alice's phone number
UPDATE customer
SET c_phone = replace(c_phone, '345', '555');

-- update John's phone number
UPDATE customer
SET c_phone = replace(c_phone, '456', '555');

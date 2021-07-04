-- create users.
CREATE USER 'developer'@'%' IDENTIFIED BY 'secret';

-- grant
GRANT ALL ON *.* TO 'developer'@'%';

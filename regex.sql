-- 1 DIGITS AT START
SELECT REGEXP_SUBSTR(mixed_value,'^[0-9]+')
FROM regex_practice;

-- 2 DIGITS AT END
SELECT REGEXP_SUBSTR(mixed_value,'[0-9]+$')
FROM regex_practice;

-- 3 FIRST CHARACTER
SELECT REGEXP_SUBSTR(mixed_value,'.')
FROM regex_practice;

-- 4 LAST CHARACTER
SELECT REGEXP_SUBSTR(mixed_value,'.$')
FROM regex_practice;

-- 5 EXACTLY 2 DIGITS
SELECT REGEXP_SUBSTR(mixed_value,'[0-9]{2}')
FROM regex_practice;

-- 6 SINGLE DIGIT
SELECT REGEXP_SUBSTR(mixed_value,'[0-9]')
FROM regex_practice;

-- 7 COUNTRY CODE
SELECT REGEXP_SUBSTR(phone,'[0-9]+')
FROM regex_practice;

-- 8 DIGITS BETWEEN TEXT
SELECT REGEXP_SUBSTR(mixed_value,'[0-9]+')
FROM regex_practice;

-- 9 TEXT BEFORE @
SELECT REGEXP_SUBSTR(email,
'^[a-zA-Z0-9._-]+')
FROM regex_practice;

-- 10 TEXT AFTER @
SELECT REGEXP_SUBSTR(email,
'@[a-zA-Z0-9.]+')
FROM regex_practice;

-- 11 DOMAIN ONLY
SELECT REPLACE(
REGEXP_SUBSTR(email,
'@[a-zA-Z0-9.]+'),
'@','')
FROM regex_practice;

-- 12 EXTENSION
SELECT REGEXP_SUBSTR(email,
'\\.[a-zA-Z]+$')
FROM regex_practice;

-- 13 ALPHABETS
SELECT REGEXP_SUBSTR(mixed_value,
'[a-zA-Z]+')
FROM regex_practice;

-- 14 NUMBERS
SELECT REGEXP_SUBSTR(mixed_value,
'[0-9]+')
FROM regex_practice;

-- 15 FIRST 3 CHARACTERS
SELECT LEFT(full_text,3)
FROM regex_practice;

-- 16 LAST 2 CHARACTERS
SELECT RIGHT(full_text,2)
FROM regex_practice;
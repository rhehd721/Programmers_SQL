SELECT A.ANIMAL_ID, A.NAME
FROM ANIMAL_OUTS A
left JOIN ANIMAL_INS B ON A.ANIMAL_ID = B.ANIMAL_ID
where B.ANIMAL_ID is null order by ANIMAL_ID;

SELECT TABLE_A.ANIMAL_ID, TABLE_A.NAME
FROM ANIMAL_INS TABLE_A
LEFT JOIN ANIMAL_OUTS TABLE_B ON TABLE_A.ANIMAL_ID = TABLE_B.ANIMAL_ID
where TABLE_A.DATETIME >= TABLE_B.DATETIME
order by TABLE_A.DATETIME

SELECT TABLE_A.NAME, TABLE_A.DATETIME
FROM ANIMAL_INS TABLE_A
LEFT JOIN ANIMAL_OUTS TABLE_B ON TABLE_A.ANIMAL_ID = TABLE_B.ANIMAL_ID
where TABLE_B.ANIMAL_ID is null
order by TABLE_A.DATETIME
limit 3

SELECT TABLE_A.ANIMAL_ID, TABLE_A.NAME
FROM ANIMAL_INS TABLE_A
LEFT JOIN ANIMAL_OUTS TABLE_B ON TABLE_A.ANIMAL_ID = TABLE_B.ANIMAL_ID
order by TABLE_B.DATETIME - TABLE_A.DATETIME DESC
limit 2

SELECT TABLE_A.ANIMAL_ID, TABLE_A.ANIMAL_TYPE, TABLE_A.NAME
FROM ANIMAL_INS TABLE_A
inner JOIN ANIMAL_OUTS TABLE_B ON TABLE_A.ANIMAL_ID = TABLE_B.ANIMAL_ID
where SEX_UPON_INTAKE != SEX_UPON_OUTCOME
order by TABLE_A.ANIMAL_ID
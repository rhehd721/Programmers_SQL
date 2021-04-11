# JOIN
- LIMIT (num)
    - 제한된 갯수만 출력

# recursive
메모리상의 가상의 테이블 생성
```sql
WITH RECURSIVE Table_name AS(
    SELECT 1 AS h
    UNION ALL
    SELECT h+1 FROM CTE WHERE h < 5)
SELECT * FROM CTE
```
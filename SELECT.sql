-- LV2 부모의 형질을 모두 가지는 대장균 찾기
-- https://school.programmers.co.kr/learn/courses/30/lessons/301647

SELECT
    B.ID
    , B.GENOTYPE
    , A.GENOTYPE AS PARENT_GENOTYPE
FROM
    ECOLI_DATA AS A      -- PARENT
    JOIN ECOLI_DATA AS B -- CHILD
    ON A.ID = B.PARENT_ID
WHERE
    A.GENOTYPE & B.GENOTYPE = A.GENOTYPE
ORDER BY ID

-- LV1 특정 형질을 가지는 대장균 찾기기
-- https://school.programmers.co.kr/learn/courses/30/lessons/301646

SELECT
    COUNT(*) AS COUNT
FROM
    ECOLI_DATA
WHERE 
    (GENOTYPE & 2) = 0  
    AND ((GENOTYPE & 1) > 0 OR (GENOTYPE & 4) > 0)
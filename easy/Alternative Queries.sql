-- Draw The Triangle 1

-- 1~10���� ���ӵ� ���� ��ȸ
SELECT LEVEL AS NO
FROM DUAL
CONNECT BY LEVEL <= 10;

SELECT RPAD('*', x, '*')
FROM (SELECT LEVEL x FROM DUAL CONNECT BY LEVEL <= 10 ORDER BY DESC)
WHERE MOD(x,2)=0;


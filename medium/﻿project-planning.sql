-- THE RIGHT ANSWER
SELECT ST, ET
FROM(
        SELECT ST, ET,  ET - ST AS DIFF
        FROM (
                SELECT MIN(START_DATE) AS ST, MAX(END_DATE) AS ET
                FROM (
                        SELECT START_DATE, END_DATE, ROW_NUMBER() OVER (ORDER BY END_DATE) ROWNUMBER, END_DATE - ROW_NUMBER() OVER (ORDER BY END_DATE) NEW_END_DATE
                        FROM PROJECTS) TEMP
                        GROUP BY TEMP.NEW_END_DATE))
ORDER BY DIFF, ST;


-- THE WORNG ANSWER
select to_date(st_dt, 'yyyy-mm-dd') as st_dt, to_date(end_dt, 'yyyy-mm-dd') as end_dt
from (
    select min(start_date) as st_dt, max(end_date) as end_dt
    from Projects
    group by to_char(end_date, 'yyyymmdd') - Row_number
          )
order by (end_dt - st_dt), end_dt, st_dt;
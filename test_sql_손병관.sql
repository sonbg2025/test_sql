select substr(email,instr(email,'@')+1) "DOMAIN"
     , count(*) "EA"
     , sum(count(*)) over() "SUM_DOMAIN"
     , count(*) / sum(count(*)) over() * 100 "%"
  from professor
  group by substr(email,instr(email,'@')+1)
 order by substr(email,instr(email,'@')+1) asc;
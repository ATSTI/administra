SELECT * FROM CROSSTAB(
  $$   select Cast(tk.date as date) data_apont, cast(tk.hours_in as numeric), cast(tk.hours_out as numeric)
  from project_task_work tk  where user_id = 15 and date > '2015-04-01'
   order by tk.date, 1 $$,
   $$ SELECT m FROM generate_series(1,5) m $$
   ) AS (
   data_apont date, "Periodo I" numeric,"Periodo II" numeric,"Periodo III" numeric,"Periodo 4" numeric, "Periodo V" numeric
   );


 --  select * from project_task_work where user_id = 15 and date > '2015-04-01';
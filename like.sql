select * from tutorial.billboard_top_100_year_end
where "group" LIKE 'Macklemore%'

/* group is in quotes, since there's also a function called 'group'*/
/* ILIKE is case insensitive */

select * from tutorial.billboard_top_100_year_end
where "group" ILIKE 'dr_ke'

/* Using _ for a missing character */

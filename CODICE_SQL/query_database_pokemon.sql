select * from pokemon;

-- 1 

select * from pokemon where `Type 1` = 'Fire';

-- 2

select Name, `Type 1`, `Type 2` from pokemon where Speed > 100;

-- 3 

select count(*) as Leggendari from pokemon where Legendary = 'True';

-- 4

select * from pokemon where Attack > 120 and Defense > 100;

-- 5 

select * from pokemon where Generation = 1;

-- 6 

select Name, Total from pokemon order by Total desc;

-- 7

select * from pokemon where `Type 1` in ('Grass', 'Poison') and `Type 2` in ('Grass', 'Poison');

-- 8

select * from pokemon where HP < 50 order by HP;

-- 9

select * from pokemon where Total >= 500 order by `Type 1`, Name;

-- 10

select * from pokemon where `Type 1` = 'Water' and Speed > 80;

-- 11

select * from pokemon order by Defense desc limit 3;

-- 12 

select Name, `Type 1` from pokemon where Attack > Defense;

-- 13

select * from pokemon where `Type 1` = 'Dragon' and Generation = 3;

-- 14

select * from pokemon where Legendary = 'False' and Speed between 80 and 100;

-- 15 

select * from pokemon where Generation = 1 and `Type 2` != '' order by Total limit 10; ---------------------------------------------------------------------------- 

-- 16

select *, (Attack - Defense) as result from pokemon where (Attack - Defense) = 0 order by result limit 5;

-- 17 

select Name, Generation, max(Total) as Total from pokemon group by Generation;

-- 18

select Generation, avg(Attack) as Media from pokemon group by Generation;


-- 19

select Generation, count(Generation) from pokemon group by Generation;

-- 20

select `Type 1`, `Type 2`, count(*) as totale from pokemon group by `Type 1`, `Type 2`;

-- 21

select Legendary, avg(HP) as Vita, avg(Attack) as Attacco, avg(Defense) as Difesa from pokemon group by Legendary;

-- 22

select `Type 1`, `Type 2`, count(*) as totale from pokemon group by `Type 1`, `Type 2`;

-- 23

select Name, max(HP) from pokemon where Legendary = 'True' order by HP limit 1;
select Name, max(Attack) from pokemon where Legendary = 'True' order by Attack limit 1;
select Name, max(Speed) from pokemon where Legendary = 'True' order by Speed limit 1;
select Name, max(Defense) from pokemon where Legendary = 'True' order by Defense limit 1;
select Name, max(`Sp. Atk`) from pokemon where Legendary = 'True' order by `Sp. Atk` limit 1;
select Name, max(`Sp. Def`) from pokemon where Legendary = 'True' order by `Sp. Def` limit 1;

-- 24 

select Generation, sum(Total) as Totale from pokemon group by Generation;


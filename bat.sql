CREATE PROCEDURE `bat` ()
BEGIN
update final_bat_stats
set tot_runs=tot_runs + (select runs
from batsman_stats
where player_id = 1 and match_no =1),
tot_balls = tot_balls + ( select balls
from batsman_stats
where player_id = 1 and match_no=1),
tot_fours = tot_fours + ( select fours
from batsman_stats
where player_id = 1 and match_no=1),
tot_sixes = tot_sixes + ( select sixes
from batsman_stats
where player_id = 1 and match_no=1)

where player_id = 1;

END

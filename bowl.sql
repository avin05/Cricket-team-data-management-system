CREATE DEFINER=`root`@`localhost` PROCEDURE `bowl`()
BEGIN
update final_bowl_stats
set tot_overs=tot_overs + (select overs
from bowler_stats
where player_id = 2 and match_no =1),
tot_runs = tot_runs + ( select runs
from bowler_stats
where player_id = 2 and match_no=1),
tot_dot = tot_dot + ( select dots
from bowler_stats
where player_id = 2 and match_no=1),
tot_maidens = tot_maidens + ( select maidens
from bowler_stats
where player_id = 2 and match_no=1),
tot_wickets = tot_wickets + ( select wickets
from bowler_stats
where player_id = 2 and match_no=1)
where player_id = 2;

END
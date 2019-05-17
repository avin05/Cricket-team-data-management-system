CREATE DEFINER=`root`@`localhost` PROCEDURE `bowler`()
BEGIN
update final_bowl_stats
set tot_overs = (select sum(overs) from bowler_stats where player_id = final_bowl_stats.player_id),
tot_runs = (select sum(runs) from bowler_stats where player_id = final_bowl_stats.player_id),
tot_dot = (select sum(dots) from bowler_stats where player_id = final_bowl_stats.player_id),
tot_maidens = (select sum(maidens) from bowler_stats where player_id = final_bowl_stats.player_id),
tot_wickets = (select sum(wickets) from bowler_stats where player_id = final_bowl_stats.player_id),
Feconomy = (select avg(economy) from bowler_stats where player_id = final_bowl_stats.player_id)
where player_id in (select player_id from bowler_stats group by player_id);


END
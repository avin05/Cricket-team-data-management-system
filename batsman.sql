CREATE DEFINER=`root`@`localhost` PROCEDURE `batsman`()
BEGIN

update final_bat_stats
set tot_runs = (select sum(runs) from batsman_stats where player_id = final_bat_stats.player_id),
tot_balls = (select sum(balls) from batsman_stats where player_id = final_bat_stats.player_id),
tot_fours = (select sum(fours) from batsman_stats where player_id = final_bat_stats.player_id),
tot_sixes = (select sum(sixes) from batsman_stats where player_id = final_bat_stats.player_id),
Final_SR = (select avg(Strike_rate) from batsman_stats where player_id = final_bat_stats.player_id)

where player_id in (select player_id from batsman_stats group by player_id);




END
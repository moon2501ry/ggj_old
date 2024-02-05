global.coins += global.points[1]/2;
if global.points[1] > global.points[2]
{
	var _current_challenge = gxc_get_query_param("challenge");
	if (_current_challenge == global.highscore_challenge) or (_current_challenge == global.natal_challenge)
	{
		gxc_challenge_submit_score(global.points[1]);
	};
	global.points[2] = global.points[1];
};
global.points[1] = 0;
if(file_exists("save.sav")) file_delete("save.sav");
ini_open("save.sav");
ini_write_real("Galinho","Record",global.points[2]);
ini_write_real("Galinho","Coins",global.coins);
ini_write_real("Galinho","Arma",global.arma);
ini_close();
room_goto(TitleScreen);
//Musica
if !audio_is_playing(Sound1)
{
	audio_play_sound(Sound1, 0, 1, 1.0, undefined, 1.0);
};
#region Save
if file_exists("save.sav")
{
	ini_open("save.sav");
	global.coins = ini_read_real("Galinho","Coins",0);
	global.points[2] = ini_read_real("Galinho","Record",0);
	global.arma = ini_read_real("Galinho","Arma",0);
	ini_close();
}
else
{
	global.points[1] = 0;
	global.points[2] = 0;
	global.coins = 0;
	global.arma = 0;
};
#endregion
global.highscore_challenge = "eb0926b4-ebdd-442d-9ae6-86593ebb63cb";
global.natal_challenge = "a7aab819-72ec-4cdf-9779-f29a3dba6edf";
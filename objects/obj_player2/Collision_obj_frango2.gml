global.coins += global.points[1];
if global.points[1] > global.points[2]
{
	global.points[2] = global.points[1];
	global.points[1] = 0;
}
else
{
	global.points[1] = 0;
};
if(file_exists("save.sav")) file_delete("save.sav");
ini_open("save.sav");
ini_write_real("Galinho","Record",global.points[2]);
ini_write_real("Galinho","Coins",global.coins);
ini_write_real("Galinho","Arma",global.arma);
ini_close();
room_goto(TitleScreen);
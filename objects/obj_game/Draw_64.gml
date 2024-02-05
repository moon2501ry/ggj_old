//Points
draw_set_font(Font1);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text(gui_w/2,15,global.points[1]);
//Armas
if room != Shop
{
if global.arma = 1
{
	draw_text(gui_w/3,15,global.shoots);
};
if global.arma = 2
{
	draw_text(gui_w/3,15,global.knifes);
};
if global.arma = 4
{
	draw_text(gui_w/3,15,global.heal_lanca);
};
};
//Record
draw_text(gui_w/2,30,global.points[2]);
//Boss1
if room = Boss1
{
	draw_text(gui_w/1.5,15,obj_boss.boss_health);
};
draw_set_font(-1);
draw_set_halign(-1);
#region Shop
if room = Shop
{
//Coins
draw_set_font(Font1);
draw_set_color(c_yellow);
draw_set_halign(fa_center);
draw_text(gui_w/2,10,global.coins);
draw_set_font(-1);
draw_set_halign(-1);
};
#endregion
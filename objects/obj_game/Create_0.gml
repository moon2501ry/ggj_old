//Largura da Camera
cam_w = camera_get_view_width(view_camera[0]);
cam_h = camera_get_view_height(view_camera[0]);
gui_w = cam_w;
gui_h = cam_h;
display_set_gui_size(gui_w,gui_h);
//Seed Aleatoria
randomize();
//Celular Controles
if room = Room1_celular
{
	global.cell_jump = false;
	global.cell_agacha = false;
	global.cell_plana = false;
};
//Boss 1
if room = Boss1
{
	if global.arma = 4
	{
		global.arma = choose(1,2,3);
	};
	if global.arma = 0
	{
		global.arma = 1;
	};
};
//Tempos
timer = 65;
alarm[0] = timer;
alarm[1] = timer * 2;
alarm[2] = 25;
alarm[3] = 599;
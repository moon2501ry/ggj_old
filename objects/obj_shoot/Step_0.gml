if room != Shop
{
	global.shoots = clamp(global.shoots,0,20);
	if gamepad_button_check_pressed(global.gamepad,gp_face2)
	{
		if global.shoots > 0
		{
			with (instance_create_layer(x,y,"Frangos",obj_shoots))
			{
				global.shoots--;
				//Velocidade do tiro
				speed = 5;
			};
		};
	};
	y = obj_player.y;
	x = obj_player.x;
};
if room = Room1_celular
{
if global.cell_arma = true
{
	if global.shoots > 0
	{
		with (instance_create_layer(x,y,"Frangos",obj_shoots))
		{
			global.shoots--;
			//Velocidade do tiro
			speed = 5;
		};
		if global.cell_arma = true
		{
			global.cell_arma = false;
		};
	};
};
};
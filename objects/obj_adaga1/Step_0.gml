if room != Shop
{
	if gamepad_button_check_pressed(global.gamepad,gp_face2)
	{
		if global.knifes > 0
		{
			with (instance_create_layer(x,y,"Frangos",obj_adaga2))
			{
				global.knifes--;
				//Velocidade do tiro
				speed = 2.5;
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
		if global.knifes > 0
		{
			with (instance_create_layer(x,y,"Frangos",obj_adaga2))
			{
				global.knifes--;
				//Velocidade do tiro
				speed = 2.5;
			};
			if global.cell_arma = true
			{
				global.cell_arma = false;
			};
		};
	};
};
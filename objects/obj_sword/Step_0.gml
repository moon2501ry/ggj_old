if room != Shop
{
	if gamepad_button_check_pressed(global.gamepad,gp_face2)
	{
		if culldown = 0
		{
			sprite_index = spr_sword_attack;
			culldown = 1;
		};
	};
	y = obj_player.y;
	x = obj_player.x;
};
if room = Room1_celular
{
	if global.cell_arma = true
	{
		if culldown = 0
		{
			sprite_index = spr_sword_attack;
			culldown = 1;
			if global.cell_arma = true
			{
				global.cell_arma = false;
			};
		};
	};
};
#region Gravity
spdv += grv;
spdv = clamp(spdv,-spdv_max,spdv_max);

if(place_meeting(x,y+spdv,obj_wall))
{
	while(!place_meeting(x,y+sign(spdv),obj_wall))
	{
		y = y + sign(spdv);
	}
	spdv = 0;
	collision_wall = true;
};

y += spdv;
#endregion
#region GamePad
//Jump
if gamepad_button_check_pressed(global.gamepad,gp_face1)
	{
		if collision_wall = true
		{
			if global.arma = 4
			{
				spdv = -6;
			}
			else
			{
				spdv = -4.5;
			};
			collision_wall = false;
		};
		if collision_wall = 25
		{
			if global.arma = 4
			{
				spdv = -2;
			}
			else
			{
				spdv = -1.5;
			};
			collision_wall = false;
		};
	};
//Planar
if gamepad_button_check(global.gamepad,gp_shoulderrb)
	{
		if stamina >= 1
		{
			spdv = 0;
			if sprite_index != galinhosprite_voo
			{
				sprite_index = galinhosprite_voo;
			};
			stamina--;
			spdv = -0.12;
		};
	};
if gamepad_button_check_released(global.gamepad,gp_shoulderrb)
	{
		if sprite_index != galinhosprite
		{
			sprite_index = galinhosprite;
		};
		collision_wall = 25;
	};
//Agachar
if gamepad_button_check(global.gamepad,gp_padd)
	{
		if collision_wall = false
		{
			spdv = 12;
			if sprite_index = galinhosprite_agachado
			{
				sprite_index = galinhosprite;
			};
		};
		if collision_wall = true
		{
			if sprite_index != galinhosprite_agachado
			{
				sprite_index = galinhosprite_agachado;
			};
		};
	};
if gamepad_button_check_released(global.gamepad,gp_padd)
	{
		if sprite_index != galinhosprite
		{
			sprite_index = galinhosprite;
		};
		collision_wall = true;
	};
if room = Run1 or room = Boss1
{
	if gamepad_button_check(global.gamepad,gp_padl)
	{
		x -= spd;
	};
	if gamepad_button_check(global.gamepad,gp_padr)
	{
		x += spd;
	};
};
#endregion
#region Action Cell
if room = Room1_celular
{
	//Pular
if global.cell_jump = true
{
if collision_wall = true
{
	if global.arma = 4
	{
		spdv = -6;
	}
	else
	{
		spdv = -4.5;
	};
	collision_wall = false;
};
if collision_wall = 25
{
	if global.arma = 4
	{
		spdv = -2;
	}
	else
	{
		spdv = -1.5;
	};
	collision_wall = false;
};
global.cell_jump = false;
};
//Agachar
if global.cell_agacha = true
{
if collision_wall = false
{
	spdv = 12;
	if sprite_index = galinhosprite_agachado
	{
		sprite_index = galinhosprite;
	};
};
if collision_wall = true
{
	sprite_index = galinhosprite_agachado;
};
};
if global.cell_agacha = false
{
	if sprite_index = galinhosprite_agachado
	{
		sprite_index = galinhosprite;
		collision_wall = true;
	};
};
//Planar
if global.cell_plana = true
{
if stamina >= 1
{
spdv = 0;
if sprite_index = galinhosprite
{
	sprite_index = galinhosprite_voo;
};
stamina--;
spdv = -0.12;
};
};
if global.cell_plana = false
{
if sprite_index = galinhosprite_voo
{
	sprite_index = galinhosprite;
	collision_wall = 25;
};
};
};
#endregion
//Recarga de Stamina
if stamina <= 0
{
	stamina+=0.5;
	alarm[0] = 225;
};
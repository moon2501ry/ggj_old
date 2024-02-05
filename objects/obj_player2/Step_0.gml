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
#region Action Cell
if room = Room1_celular
{
	//Pular
if global.cell_jump = true
{
if collision_wall = true
{
	spdv = -4.5;
	collision_wall = false;
};
if collision_wall = 25
{
	spdv = -1.5;
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
	if sprite_index = spr_galinhoshift
	{
		sprite_index = spr_galinho;
	};
};
if collision_wall = true
{
	sprite_index = spr_galinhoshift;
};
};
if global.cell_agacha = false
{
	if sprite_index = spr_galinhoshift
	{
		sprite_index = spr_galinho;
		collision_wall = true;
	};
};
//Planar
if global.cell_plana = true
{
if stamina >= 1
{
spdv = 0;
if sprite_index = spr_galinho
{
	sprite_index = spr_galinho2;
};
stamina--;
spdv = -0.12;
};
};
if global.cell_plana = false
{
if sprite_index = spr_galinho2
{
	sprite_index = spr_galinho;
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
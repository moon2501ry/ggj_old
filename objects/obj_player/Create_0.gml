spd = 1;
spdv = 0;
spdv_max = 20;
grv = 0.2;
collision_wall = false;
stamina = 450;
stamina_step = 250;
var _current_challenge = gxc_get_query_param("challenge");
if global.arma = 4 or _current_challenge == global.natal_challenge
{
	if global.arma = 4
	{
		sprite_index = spr_galinho_botas;
		galinhosprite = spr_galinho_botas;
		galinhosprite_voo = spr_galinho2_botas;
		galinhosprite_agachado = spr_galinhoshift_botas;
	};
	if _current_challenge == global.natal_challenge
	{
		sprite_index = spr_galinho_natal1;
		galinhosprite = spr_galinho_natal1;
		galinhosprite_voo = spr_galinho2_natal1;
		galinhosprite_agachado = spr_galinhoshift_natal1;
	};
}
else
{
	galinhosprite = spr_galinho;
	galinhosprite_voo = spr_galinho2;
	galinhosprite_agachado = spr_galinhoshift;
};
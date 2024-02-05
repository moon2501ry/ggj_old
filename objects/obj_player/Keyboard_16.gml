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
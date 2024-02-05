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
if room = Shop
{
	if global.arma != 3
	{
		if global.coins >= 500
		{
			global.arma = 3;
			global.coins -= 500;
		};
	};
};
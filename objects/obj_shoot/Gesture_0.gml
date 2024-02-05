if room = Shop
{
	if global.arma != 1
	{
		if global.coins >= 120
		{
			global.arma = 1;
			global.coins -= 120
		};
	};
};
if room = Shop
{
	if global.coins >= 1000
	{
		if global.arma != 4
		{
			global.coins -= 1000;
			global.arma = 4;
		};
	};
};
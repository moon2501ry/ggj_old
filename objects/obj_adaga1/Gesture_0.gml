if room = Shop
{
	if global.arma != 2
	{
		if global.coins >= 250
		{
			global.arma = 2;
			global.coins -= 250;
		};
	};
};
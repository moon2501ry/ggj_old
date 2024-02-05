if room != Shop
{
	if global.arma != 2
	{
		instance_destroy();
	}
	else
	{
		global.knifes = 45;
	};
};
if room = Shop
{
	sprite_index = spr_adaga_shop;
};
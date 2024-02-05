if room != Shop
{
	if global.arma != 4
	{
		instance_destroy();
	};
	if global.arma = 4
	{
		global.heal_lanca = 25;
	};
};
if room = Shop
{
	sprite_index = spr_lanca_shop;
};
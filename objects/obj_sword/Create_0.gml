if room != Shop
{
	if global.arma != 3
	{
		instance_destroy();
	}
	else
	{
		culldown = 0;
	};
};
if room = Shop
{
	sprite_index = spr_sword_shop;
};
if room != Shop
{
if global.arma != 1
{
	instance_destroy();
}
else
{
	global.shoots = 15;
	alarm[0] = 250;
};
};
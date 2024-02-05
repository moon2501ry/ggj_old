if global.heal_lanca > 0
{
	instance_destroy(other);
	global.heal_lanca -= 1;
};
if global.heal_lanca <= 0
{
	instance_destroy();
};
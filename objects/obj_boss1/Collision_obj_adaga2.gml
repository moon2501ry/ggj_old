boss_health -= other.heart;
if global.knifes <= 0
{
	obj_adaga1.alarm[0] = 150;
};
instance_destroy(other);
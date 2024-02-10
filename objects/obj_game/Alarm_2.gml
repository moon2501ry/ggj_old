/// @description Points
if room != Boss1
{
	global.points[1]++;
};
if room = Boss1
{
	global.points[1] += 2;
};

alarm[2] = 25;
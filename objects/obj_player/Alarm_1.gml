/// @description Stamina Step
if stamina < 450
{
	stamina += 1;
};
if stamina <= 149
{
	stamina_step = 125;
};
if stamina >= 150
{
	stamina_step = 250;
};
alarm[1] = stamina_step;
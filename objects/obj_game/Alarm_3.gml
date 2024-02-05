/// @description FrangoVoador
var x2 = room_width + 199;
var y2 = irandom_range(74,106);
var porcenty = irandom_range(1,100);
if  porcenty >= 1 and porcenty <= 5
{
	var f_voador = instance_create_layer(x2,y2,"Frangos",obj_frango);
};
alarm[3] = 599;
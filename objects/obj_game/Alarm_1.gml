/// @description Frango2
var x2 = room_width + irandom_range(90,100);
var y2 = 126;
var porcenty = irandom_range(1,100);
if  porcenty > 0 and porcenty < 16
{
	var f_longo = instance_create_layer(x2,y2,"Frangos",obj_frango2);
};
alarm[1] = timer * 2;
if room != Shop
{
if global.shoots > 0
{
with (instance_create_layer(x,y,"Frangos",obj_shoots))
{
global.shoots--;
//Velocidade do tiro
speed = 5;
};
};
};
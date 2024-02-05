if room != Shop
{
if global.knifes > 0
	{
		with (instance_create_layer(x,y,"Frangos",obj_adaga2))
		{
			global.knifes--;
			//Velocidade do tiro
			speed = 2.5;
		};
	};
};
//#Safe
procedure main()
{
	var x, y, z : int;
	x := 5;
	y := 0;
	z := 0;

	while(x > 0)
	{
		y := 1;
		while(y <= x)
		{
			z := z + y;
			y := y + 1;
		}
		x := x - 1;
	}
	//          1   2   3    4    5
	assert(z == 1 + 3 + 6 + 10 + 15);	
}
//#Safe
/*
 * Author: Yu-Wen Chen
 * Note: The result of this test is not manually verified. DD just added the missing header based on some Ultimate results. 
 * 
 */

procedure Easy() {
	var x, y, z, i, j, k, l: int;
	var a, b, c : [int] int;
	
	a[0] := i;
	a[0] := j;
	a[0] := k;
	a[0] := l;
	a[0] := 0;
	
	assume (k == i && i == j && l == j) || (k == j && l == j);
	
	assert k == l && k == j && l == j;
}

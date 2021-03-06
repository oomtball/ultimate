/*  
    https://en.cppreference.com/w/c/numeric/math/ceil
*/

#include <math.h>

extern void __VERIFIER_error() __attribute__ ((__noreturn__));
void __VERIFIER_assert(int cond) { if (!(cond)) { ERROR: __VERIFIER_error(); } return; }

int main(void)
{
	 __VERIFIER_assert(ceil(2.7) == 3.0);
	 __VERIFIER_assert(ceil(-2.7) == -2.0);
	 __VERIFIER_assert(ceil(-0) == -0.0);
	 __VERIFIER_assert(ceil(+0) == +0.0);
	 __VERIFIER_assert(ceil(-INFINITY) == -INFINITY);
	 __VERIFIER_assert(ceil(INFINITY) == INFINITY);
	 int i = isnan(ceil(NAN));
    __VERIFIER_assert(i);
    
    return 0;
}
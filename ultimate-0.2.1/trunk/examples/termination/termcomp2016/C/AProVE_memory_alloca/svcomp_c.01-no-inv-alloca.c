//#termcomp16-someonesaidyes
#include <stdlib.h>

extern int __VERIFIER_nondet_int(void);

int test_fun(int x, int y)
{
    int* x_ref = alloca(sizeof(int));
    int* y_ref = alloca(sizeof(int));
    int* c = alloca(sizeof(int));
    *x_ref = x;
    *y_ref = y;
    *c = 0;
    while (*x_ref >= 0) {
        *y_ref = 1;
        while (*x_ref > *y_ref) {
            *y_ref = 2*(*y_ref);
            *c = *c + 1;
        }
        *x_ref = *x_ref - 1;
    }
    return *c;
}

int main() {
  return test_fun(__VERIFIER_nondet_int(),__VERIFIER_nondet_int());
}

//#termcomp16-someonesaidno
typedef enum {false,true} bool;

extern int __VERIFIER_nondet_int(void);

int main() {
    int i;
    i = __VERIFIER_nondet_int();
    
    while (i < 10) {
        if (i != 3) {
            i = i+1;
        }
    }
    
    return 0;
}

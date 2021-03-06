//#termcomp16-someonesaidyes
/*
 * Date: 2014-06-08
 * Author: leike@informatik.uni-freiburg.de
 *
 *
 * This is Example 2.10 from the test suit used in
 *
 * Termination Proofs for Linear Simple Loops.
 * Hong Yi Chen, Shaked Flur, and Supratik Mukhopadhyay.
 * SAS 2012.
 *
 * The test suite is available at the following URL.
 * https://tigerbytes2.lsu.edu/users/hchen11/lsl/LSL_benchmark.txt
 *
 * Comment: terminating, linear
 */

extern int __VERIFIER_nondet_int();

int main() {
    int x = __VERIFIER_nondet_int();
    int y = __VERIFIER_nondet_int();
    while (x > 0 && y < 0) {
        x = x + y;
        y--;
    }
    return 0;
}

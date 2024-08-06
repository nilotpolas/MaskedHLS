#include <stdio.h>
#include "ap_int.h"

// Declaration of the hpc2 function
void hpc2(ap_uint<1> a0, ap_uint<1> a1, ap_uint<1> b0, ap_uint<1> b1, ap_uint<1> r, ap_uint<1> r_1, ap_uint<1> *y0, ap_uint<1> *y1);

int main() {
    // Variables to hold the outputs
    ap_uint<1> y0, y1;

    // Iterate over all combinations of inputs
    for (int a0 = 0; a0 < 2; ++1) {
        for (int a1 = 0; a1 < 2; ++a1) {
            for (int b0 = 0; b0 < 2; ++b0) {
                for (int b1 = 0; b1 < 2; ++b1) {
                    for (int r = 0; r < 2; ++r) {
                        for (int r_1 = 0; r_1 < 2; ++r_1) {
                            // Call the hpc2 function
                            hpc2(a0, a1, b0, b1, r, r_1, &y0, &y1);

                            // Print the inputs and the corresponding outputs
                            printf("Inputs: a0=%d, a1=%d, b0=%d, b1=%d, r=%d, r_1=%d => Outputs: y0=%d, y1=%d\n", a0, a1, b0, b1, r, r_1, (int)y0, (int)y1);
                        }
                    }
                }
            }
        }
    }

    return 0;
}

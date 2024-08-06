#include <stdio.h>
#include "ap_int.h"

// Declaration of the hpc1 function
void hpc1(ap_uint<1> a0, ap_uint<1> a1, ap_uint<1> b0, ap_uint<1> b1, ap_uint<1> r0, ap_uint<1> r1, ap_uint<1> r0_1, ap_uint<1> r1_1, ap_uint<1> *y0, ap_uint<1> *y1);

int main() {
    // Loop through all possible combinations of inputs
    for (int i = 0; i < 256; ++i) {
        // Extract individual bits from the integer
        ap_uint<1> a0 = (i >> 7) & 0x1;
        ap_uint<1> a1 = (i >> 6) & 0x1;
        ap_uint<1> b0 = (i >> 5) & 0x1;
        ap_uint<1> b1 = (i >> 4) & 0x1;
        ap_uint<1> r0 = (i >> 3) & 0x1;
        ap_uint<1> r1 = (i >> 2) & 0x1;
        ap_uint<1> r0_1 = (i >> 1) & 0x1;
        ap_uint<1> r1_1 = i & 0x1;

        // Outputs
        ap_uint<1> y0;
        ap_uint<1> y1;

        // Call the function
        hpc1(a0, a1, b0, b1, r0, r1, r0_1, r1_1, &y0, &y1);

        // Print the inputs and the corresponding outputs
        printf("Inputs: a0=%d, a1=%d, b0=%d, b1=%d, r0=%d, r1=%d, r0_1=%d, r1_1=%d | Outputs: y0=%d, y1=%d\n",
               (int)a0, (int)a1, (int)b0, (int)b1, (int)r0, (int)r1, (int)r0_1, (int)r1_1, (int)y0, (int)y1);
    }

    return 0;

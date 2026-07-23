/* =========================================================================
 * omino_tensor_check.c - C99 TENSOR SYNTAX VERIFICATION HARNESS
 * ========================================================================= */
#include "omino_tensor.h"

int main(void) {
    uint16_t cell = clamp_to_physical_footprint(0x123456789ABCDEFFULL);
    uint64_t profile = evaluate_parabolic_nomogram(2, 3);
    uint64_t scale = OMINO_GRID_SCALE_4320;

    return (cell == 0xDEFF && profile > 0 && scale == 4320) ? 0 : 1;
}

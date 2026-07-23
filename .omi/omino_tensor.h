/* =========================================================================
 * omino_tensor.h - BARE-METAL C99 TENSOR CORE INTERFACE
 * ========================================================================= */
#ifndef OMINO_TENSOR_H
#define OMINO_TENSOR_H

#include <stdint.h>

#define OMINO_WORD_MASK_16    0xFFFFU
#define OMINO_GRID_SCALE_4320 4320ULL

static inline uint16_t clamp_to_physical_footprint(uint64_t coord) {
    return (uint16_t)(coord & OMINO_WORD_MASK_16);
}

static inline uint64_t evaluate_parabolic_nomogram(uint64_t x, uint64_t y) {
    uint64_t x2 = x * x;
    uint64_t y2 = y * y;
    uint64_t xy = x * y;
    uint64_t inner = (4ULL * x2) + (11ULL * x2) + (4ULL * xy) + y2;
    return 4ULL * inner;
}

#endif /* OMINO_TENSOR_H */

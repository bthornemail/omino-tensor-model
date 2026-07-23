-- =========================================================================
-- TensorModel.hs - PURE PRIMITIVE 16-BIT TENSOR INVARIANTS
-- Pure representation from first principles, free of external dependencies.
-- =========================================================================
module TensorModel where

import Data.Bits ((.&.))
import Data.Word (Word16, Word64)

wordMask16 :: Word64
wordMask16 = 0xFFFF

localIncidences4320 :: Word64
localIncidences4320 = 4320

-- Q(x, y) = 4 * (4x^2 + 11x^2 + 4xy + y^2)
evaluateParabolicNomogram :: Word64 -> Word64 -> Word64
evaluateParabolicNomogram x y =
    let x2 = x * x
        y2 = y * y
        xy = x * y
        inner = (4 * x2) + (11 * x2) + (4 * xy) + y2
    in 4 * inner

clampToPhysicalFootprint :: Word64 -> Word16
clampToPhysicalFootprint coord = fromIntegral (coord .&. wordMask16)

data SubstrateTarget
    = TargetRules
    | TargetFacts
    | TargetClosures
    | TargetCombinators
    | TargetCons
    deriving (Eq, Show, Enum, Bounded)

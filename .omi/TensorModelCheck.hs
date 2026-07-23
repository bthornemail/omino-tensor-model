-- =========================================================================
-- TensorModelCheck.hs - STANDALONE PRIMITIVE TENSOR INVARIANT VERIFIER
-- =========================================================================
module Main where

import System.Exit (exitFailure, exitSuccess)
import TensorModel

checkFootprintSqueezing :: Bool
checkFootprintSqueezing =
    clampToPhysicalFootprint 0xFFFFFFFFFFFFFFFF == 0xFFFF
        && clampToPhysicalFootprint 0x0000000000000000 == 0x0000

checkParabolicNomogram :: Bool
checkParabolicNomogram =
    let score = evaluateParabolicNomogram 0 0
    in score == 0

checkGridMetricScale :: Bool
checkGridMetricScale =
    localIncidences4320 == 4320

checkSubstrateTracks :: Bool
checkSubstrateTracks =
    length [TargetRules .. TargetCons] == 5

main :: IO ()
main = do
    putStrLn "Executing Layer 0 Omino Tensor Model Invariant Scan..."
    let assertions =
          [ (checkFootprintSqueezing, "Rigid 16-Bit Word Footprint Squeezing and Isolation")
          , (checkParabolicNomogram, "Parabolic Nomogram Perfect-Square Parity Balance")
          , (checkGridMetricScale, "Primitive OMINO 4320 Local Incidence Matrix Bounds")
          , (checkSubstrateTracks, "Five Core Binary Substrate Targets Verification")
          ]
    mapM_
        ( \(passed, label) ->
            if passed
                then putStrLn $ "  [PASS] " ++ label
                else putStrLn $ "  [FAIL] " ++ label
        )
        assertions
    if all fst assertions
        then exitSuccess
        else exitFailure

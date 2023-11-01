import { bench, describe } from "vitest";
import { getPositionToFirstEnterBasement, getPositionToFirstEnterBasementV2, getPositionToFirstEnterBasementV3 } from "./day1";
import { puzzleInput } from "./day1.test";


describe('getPositionToFirstEnterBasement', () => {
  bench('getPositionToFirstEnterBasement', () => {
    getPositionToFirstEnterBasement(puzzleInput)
  })

  bench('getPositionToFirstEnterBasementV2', () => {
    getPositionToFirstEnterBasementV2(puzzleInput)
  })

  bench('getPositionToFirstEnterBasementV3', () => {
    getPositionToFirstEnterBasementV3(puzzleInput)
  })
})
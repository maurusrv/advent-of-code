import { bench, describe } from "vitest";
import { getPositionToFirstEnterBasement, getPositionToFirstEnterBasementV2, getPositionToFirstEnterBasementV3, puzzleInput } from "./day1";


describe('', () => {
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
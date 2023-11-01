import { describe, expect, it, bench } from 'vitest'
import { getFloor, getPositionToFirstEnterBasement, getPositionToFirstEnterBasementV2, getPositionToFirstEnterBasementV3, puzzleInput } from './day1'

describe('Day 1: Not Quite Lisp', () => {
  describe('Part One', () => {
    const examples: Record<string, number> = {
      '(())': 0,
      '()()': 0,
      '(((': 3,
      '(()(()(': 3,
      '))(((((': 3,
      '())': -1,
      '))(': -1,
      ')))': -3,
      ')())())': -3,
    }
  
    Object.keys(examples).forEach(instruction => (
      describe(`For instruction: ${instruction}`, () => {
        const expectedFloor = examples[instruction]
  
        it(`should return floor: ${expectedFloor}`, () => {
          const resultFloor = getFloor(instruction)
  
          expect(resultFloor).toBe(expectedFloor)
        })
      })
    ))

    describe('For puzzle input', () => {
      it('should return correct floor', () => {
        const resultFloor = getFloor(puzzleInput)
  
        expect(resultFloor).toBe(280)
      })
    })
  })

  describe('Part Two', () => {
    const examples: Record<string, number> = {
      ')': 1,
      '()())': 5,
    }

    describe('Solution One', () => {
      Object.keys(examples).forEach(instruction => (
        describe(`For instruction: ${instruction}`, () => {
          const expectedPosition = examples[instruction]
          it(`should return position: ${expectedPosition}`, () => {
            const resultPosition = getPositionToFirstEnterBasement(instruction)
            
            expect(resultPosition).toBe(expectedPosition)          
          })
        })
      ))
  
      describe('For puzzle input', () => {
        it(`should return correct position`, () => {
          const resultPosition = getPositionToFirstEnterBasement(puzzleInput)
  
          expect(resultPosition).toBe(1797)
        })
      })
    })

    describe('Solution Two', () => {
      Object.keys(examples).forEach(instruction => (
        describe(`For instruction: ${instruction}`, () => {
          const expectedPosition = examples[instruction]
          it(`should return position: ${expectedPosition}`, () => {
            const resultPosition = getPositionToFirstEnterBasementV2(instruction)
            
            expect(resultPosition).toBe(expectedPosition)          
          })
        })
      ))
  
      describe('For puzzle input', () => {
        it(`should return correct position`, () => {
          const resultPosition = getPositionToFirstEnterBasementV2(puzzleInput)
  
          expect(resultPosition).toBe(1797)
        })
      })
    })

    describe('Solution Three', () => {
      Object.keys(examples).forEach(instruction => (
        describe(`For instruction: ${instruction}`, () => {
          const expectedPosition = examples[instruction]
          it(`should return position: ${expectedPosition}`, () => {
            const resultPosition = getPositionToFirstEnterBasementV3(instruction)
            
            expect(resultPosition).toBe(expectedPosition)          
          })
        })
      ))
  
      describe('For puzzle input', () => {
        it(`should return correct position`, () => {
          const resultPosition = getPositionToFirstEnterBasementV3(puzzleInput)
  
          expect(resultPosition).toBe(1797)
        })
      })
    })
  })
})

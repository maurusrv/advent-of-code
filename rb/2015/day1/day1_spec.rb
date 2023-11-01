require_relative './day1'

context "Day 1: Not Quite Lisp" do
  context "Part One" do
    context "Solution One" do
      examples = {
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

      examples.each { |instruction, expectedFloor|
        describe "For instruction: #{instruction}" do
          it "should return floor: #{expectedFloor}" do
            resultFloor = get_floor(instruction.to_s)

            expect(resultFloor).to eq(expectedFloor)
          end
        end
      }

      describe "For puzzle input" do
        it "should return correct floor" do
          resultFloor = get_floor(puzzle_input)

          expect(resultFloor).to eq(280)
        end
      end
    end

    context "Solution Two" do
      examples = {
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
  
      examples.each { |instruction, expectedFloor|
        describe "For instruction: #{instruction}" do
          it "should return floor: #{expectedFloor}" do
            resultFloor = get_floor_v2(instruction.to_s)
  
            expect(resultFloor).to eq(expectedFloor)
          end
        end
      }
  
      describe "For puzzle input" do
        it "should return correct floor" do
          resultFloor = get_floor_v2(puzzle_input)
  
          expect(resultFloor).to eq(280)
        end
      end
    end
  end

  context "Part Two" do
    examples = {
      ')': 1,
      '()())': 5,
    }

    context "Solution 1" do
      examples.each { |instruction, expected_floor|
        describe "For instruction: #{instruction}" do
          it "should return floor: #{expected_floor}" do
            result_position = get_position_to_first_enter_basement(instruction.to_s)

            expect(result_position).to eq(expected_floor)
          end
        end
      }

      describe "For puzzle input" do
        it "should return correct position" do
          result_position = get_position_to_first_enter_basement(puzzle_input)

          expect(result_position).to eq(1797)
        end
      end
    end

    context "Solution 2" do
      examples.each { |instruction, expected_floor|
        describe "For instruction: #{instruction}" do
          it "should return floor: #{expected_floor}" do
            result_position = get_position_to_first_enter_basement_v2(instruction.to_s)

            expect(result_position).to eq(expected_floor)
          end
        end
      }

      # describe "For puzzle input" do
      #   it "should return correct position" do
      #     result_position = get_position_to_first_enter_basement_v2(puzzle_input)

      #     expect(result_position).to eq(1797)
      #   end
      # end
    end
  end
end
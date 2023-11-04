import Day1

defmodule Day1Spec do
  use ESpec
  context "Day One: Not Quite Lisp" do
    context "Part One" do
      examples = %{
        "(())": 0,
        "()()": 0,
        "(((": 3,
        "(()(()(": 3,
        "))(((((": 3,
        "())": -1,
        "))(": -1,
        ")))": -3,
        ")())())": -3,
      }

      Enum.each examples, fn {instruction, expected_floor} ->
        @instruction instruction
        @expected_floor expected_floor

        describe "For instruction: #{instruction}" do
          it "should return floor: #{expected_floor}" do
            result_floor = get_floor(Atom.to_string(@instruction))

            expect(result_floor) |> to(eq @expected_floor)
          end
        end
      end

      describe "For puzzle input" do
        it "should return correct floor" do
          result_floor = get_floor(puzzle_input())

          expect(result_floor) |> to(eq 280)
        end
      end
    end

    context "Part Two" do
      examples = %{
        ")":     1,
        "()())": 5,
      }

      context "Solution One" do
        Enum.each examples, fn {instruction, expected_position} ->
          @instruction instruction
          @expected_position expected_position
          describe "For instruction: #{instruction}" do
            it "should return position: #{expected_position}" do
              result_position = get_position_to_first_enter_basement(Atom.to_string(@instruction))

              expect(result_position) |> to(eq @expected_position)
            end
          end
        end

        describe "For puzzle input" do
          it "should return correct position" do
            result_position = get_position_to_first_enter_basement(puzzle_input())

            expect(result_position) |> to(eq 1797)
          end
        end
      end

      context "Solution Two" do
        Enum.each examples, fn {instruction, expected_position} ->
          @instruction instruction
          @expected_position expected_position
          describe "For instruction: #{instruction}" do
            it "should return position: #{expected_position}" do
              result_position = get_position_to_first_enter_basement_v2(Atom.to_string(@instruction))

              expect(result_position) |> to(eq @expected_position)
            end
          end
        end

        describe "For puzzle input" do
          it "should return correct position" do
            result_position = get_position_to_first_enter_basement_v2(puzzle_input())

            expect(result_position) |> to(eq 1797)
          end
        end
      end

      context "Solution Three" do
        Enum.each examples, fn {instruction, expected_position} ->
          @instruction instruction
          @expected_position expected_position
          describe "For instruction: #{instruction}" do
            it "should return position: #{expected_position}" do
              result_position = get_position_to_first_enter_basement_v3(Atom.to_string(@instruction))

              expect(result_position) |> to(eq @expected_position)
            end
          end
        end

        describe "For puzzle input" do
          it "should return correct position" do
            result_position = get_position_to_first_enter_basement_v3(puzzle_input())

            expect(result_position) |> to(eq 1797)
          end
        end
      end
    end
  end

  # Benchmarks
  Benchee.run %{
    "get_position_to_first_enter_basement" => fn -> puzzle_input() |> get_position_to_first_enter_basement end,
    "get_position_to_first_enter_basement_v2" => fn -> puzzle_input() |> get_position_to_first_enter_basement_v2 end,
    "get_position_to_first_enter_basement_v3" => fn -> puzzle_input() |> get_position_to_first_enter_basement_v3 end
  }
end

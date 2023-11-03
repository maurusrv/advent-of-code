import Day1

defmodule Day1Spec do
  use ESpec

  context "Day 1: Not Quite Lisp" do
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

            expect result_floor |> to(eq @expected_floor)
          end
        end
      end
    end
  end
end

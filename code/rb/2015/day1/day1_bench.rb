require_relative './day1'

require 'benchmark'

Benchmark.bm do |x|
  x.report("get_floor") { get_floor(puzzle_input) }
  x.report("get_floor_v2") { get_floor_v2(puzzle_input) }
end

Benchmark.bm do |x|
  x.report("get_position_to_first_enter_basement") { get_position_to_first_enter_basement(puzzle_input) }
  x.report("get_position_to_first_enter_basement_v2") { get_position_to_first_enter_basement_v2(puzzle_input) }
end
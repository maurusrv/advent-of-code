const std = @import("std");

const testing = std.testing;

const allocator = testing.allocator;
const expect = testing.expect;

const MultiArrayList = std.MultiArrayList;

const GetFloorExample = struct {
  instruction: []const u8,
  expected_floor: i32,
};

test "Day 1: Not Quite Lisp > Part One > getFloor" {
  // var alloc = std.heap.ArenaAllocator.init(std.heap.page_allocator);
  // defer alloc.deinit();

  var examples = MultiArrayList(GetFloorExample){};

  try examples.append(allocator, .{.instruction = "(())", .expected_floor = 0});
  try examples.append(allocator, .{.instruction = "()()", .expected_floor = 0});
  // try examples.put("(((", 3);
  // try examples.put("(()(()(", 3);
  // try examples.put("))(((((", 3);
  // try examples.put("())", -1);
  // try examples.put("))(", -1);
  // try examples.put(")))", -3);
  // try examples.put(")())())", -3);

  for (examples.items(.instruction), examples.items(.expected_floor)) |instruction, expected_floor| {
    std.debug.print("test: {s} {d} \n", .{instruction, expected_floor});
    try expect(true);
  }
}

test "Day 1: Not Quite Lisp > Part One > getPosition" {
  try expect(true);
}

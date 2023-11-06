const std = @import("std");

pub fn getFloor(instruction: []const u8) i32 {
    var floor: i32 = 0;
    for (instruction) |paren| {
        if (paren == '(') {
            floor += 1;
        } else if (paren == ')') {
            floor -= 1;
        }
    }
    return floor;
}

pub fn getPosition(instruction: []const u8) i32 {
    var position: i32 = 0;

    for (0..instruction.len) |i| {
        var floor = getFloor(instruction[0..i]);

        if (floor == -1) {
            break;
        }

        position = @as(i32, @intCast(i));
    }

    return position + 1;
}

// TODO: Learn more about manipulating strings!
// pub fn getFloorV2(instruction: []const u8) i32 {
//     var floor: i32 = 0;

//     var it = std.mem.tokenizeAny(u8, instruction, "");
//     while (it.next()) |paren| {
//         std.debug.print("yow: {s} ", .{paren});
//         if (std.mem.eql(u8, paren, ")")) {
//             floor += 1;
//         } else if (std.mem.eql(u8, paren, "(")) {
//             floor -= 1;
//         }
//     }

//     return floor;
// }

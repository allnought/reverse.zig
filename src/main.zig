const std = @import("std");
const stdin = std.io.getStdIn().reader();
const stdout = std.io.getStdOut().writer();

pub fn main() anyerror!void {
    var buf: [256]u8 = undefined;
    if (try stdin.readUntilDelimiterOrEof(buf[0..], '\n')) |user_input| {
        for (user_input) |_,index| {
            try stdout.print("{c}", .{user_input[user_input.len-index-1]});
        }
    }
}

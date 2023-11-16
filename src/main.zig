const std = @import("std");

pub fn main() !void {
    const image_width = 256;
    const image_height = 256;

    std.debug.print("P3\n{} {}\n255\n", .{ image_width, image_height });

    var i: i16 = 0;
    while (i < image_height) {
        var j: i16 = 0;
        while (j < image_width) {
            var r = @as(f16, @floatFromInt(j)) / (image_width - 1);
            var g = @as(f16, @floatFromInt(i)) / (image_height - 1);
            const b = 0;

            const ir = @as(i16, @intFromFloat(255.999 * r));
            const ig = @as(i16, @intFromFloat(255.999 * g));
            const ib = @as(i16, @intFromFloat(255.999 * b));

            std.debug.print("{} {} {}\n", .{ ir, ig, ib });
            j += 1;
        }
        i += 1;
    }
}

const std = @import("std");
const zigout_raylib = @import("zigout_raylib");
const rl = @import("raylib");

pub fn main() !void {
    const screenWidth = 800;
    const screenHeight = 600;

    rl.initWindow(screenWidth, screenHeight, "Zig + Raylib");
    defer rl.closeWindow();

    rl.setTargetFPS(60);

    while (rl.windowShouldClose() == false) {
        rl.beginDrawing();
        defer rl.endDrawing();

        rl.clearBackground(.white);
        rl.drawText("Hello World!", 190, 200, 20, .dark_gray);
    }
}

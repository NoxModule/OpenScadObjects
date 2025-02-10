include <BOSL2/std.scad>

// Diameter of the connection hook.
connection_hook_diameter = 9;

// Diameter of the hat hook.
hat_hook_diameter = 26;

// Thickness of the hook.
thickness = 4;

/* [Hidden] */
$fn = 64;

path = turtle(
    [
        "arcrightto", (connection_hook_diameter + thickness) / 2, 80,
        "arcleftto", (hat_hook_diameter + thickness) / 2, -23,
    ],
    state = [0, 0]);

color("cornflowerblue") linear_extrude(thickness / 2) stroke(path, thickness);
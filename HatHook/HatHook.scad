include <BOSL2/std.scad>

// Diameter of the connection.
connection_diameter = 9;

// Diameter of the hook.
hook_diameter = 26;

// Thickness of the part.
thickness = 4;

/* [Hidden] */
$fn = 64;

path = turtle(
    [
        "arcrightto", (connection_diameter + thickness) / 2, 90,
        "arcleftto", (hook_diameter + thickness) / 2, 0,
    ],
    state = [0, 0]);

color("cornflowerblue") linear_extrude(thickness / 2) stroke(path, thickness);
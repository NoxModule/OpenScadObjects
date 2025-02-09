include <BOSL2/std.scad>

// Diameter of the connection.
connection_diameter = 10;

// Diameter of the hook.
hook_diameter = 30;

// Length of the straights.
length = 20;

// Thickness of the part.
thickness = 4;

/* [Hidden] */
$fn = 64;

path = turtle(
    [
        "xmove", length / 2 - thickness,
        "arcrightto", (connection_diameter + thickness) / 2, 90,
        "xmove", length * -1,
        "arcleftto", (hook_diameter + thickness) / 2, 0,
        "xmove", length / 2 + thickness,
    ],
    state = [0, 0]);
                
color("cornflowerblue") linear_extrude(thickness) stroke(path, thickness);
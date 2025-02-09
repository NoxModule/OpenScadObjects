include <BOSL2/std.scad>

// Diameter of the connection.
connection_diameter = 9;

// Diameter of the hook.
hook_diameter = 26;

// Length of the straights.
length = 23;

// Thickness of the part.
thickness = 4;

/* [Hidden] */
$fn = 64;

path = turtle(
    [
        "xmove", length / 4,
        "arcrightto", (connection_diameter + thickness) / 2, 90,
        "xmove", length * -1,
        "turn", 30,
        "arcleftto", (hook_diameter + thickness) / 2, 45,
    ],
    state = [0, 0]);

calculated_center_x = (connection_diameter / 2 + hook_diameter / 2 + length) / 2;
calculated_center_y = hook_diameter / 2;
                
color("cornflowerblue")
    linear_extrude(thickness / 2)
    translate([calculated_center_x, calculated_center_y, 0])
    stroke(path, thickness);
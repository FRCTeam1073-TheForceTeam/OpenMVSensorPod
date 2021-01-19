
// Driving parameters:

// Overall Dimensions:
openmv_width = 36 + 1;
openmv_length = 49 + 1;
openmv_board_stack_height = 34; // Bottom of pins to expansion board height.
wire_spacing = 10;
wall_thickness = 4;
case_boss_radius = 4;

// OpenMV Mounting Bosses
openmv_boss_dia = 2.6;
openmv_boss_bore = 1.1;
openmv_boss_height = 6;
openmv_hole_spacing = 29.5;

// SD Card location:
sd_slot_from_openmv_corner = 23.5;
sd_slot_height_from_pins = 8;


// Computed Dimensions:
overall_height = openmv_board_stack_height + wall_thickness;
overall_length = openmv_length + 2 * wall_thickness + wire_spacing;
overall_width = openmv_width + 2 * wall_thickness;
center_width = overall_width/2;

union() {
    
    // Box, lid bosses, mounting bosses:
    difference() {
        union() {
            cube(size=[openmv_width + 2 * wall_thickness,
                       openmv_length + 2 * wall_thickness + wire_spacing,
                       overall_height]);
            // Lid bosses
            cylinder(r=case_boss_radius, h=overall_height, $fn=60);
            translate([0, overall_length, 0]) {
                cylinder(r=case_boss_radius, h=overall_height, $fn=60);
            }
            translate([overall_width, overall_length, 0]) {
                cylinder(r=case_boss_radius, h=overall_height, $fn=60);
            }
            translate([overall_width, 0, 0]) {
                cylinder(r=case_boss_radius, h=overall_height, $fn=60);
            }
        }
        
        // Cutout for the inner volume.
        translate([wall_thickness, wall_thickness, wall_thickness]) {
            cube(size=[openmv_width, openmv_length + wire_spacing, openmv_board_stack_height+1]);
        }
        
        // Notch for cables.
        translate([center_width, -1, overall_height/2+10]) {
            cube(size=[4,wall_thickness+8, 20], center=true);
        }
        
        // Holes for case screws:
        translate([0, 0, overall_height/2+1]) {
            cylinder(r=openmv_boss_bore, h=overall_height/2, $fn=60);
            translate([0, overall_length, 0]) {
                cylinder(r=openmv_boss_bore, h=overall_height/2, $fn=60);
            }
            translate([overall_width, overall_length, 0]) {
                cylinder(r=openmv_boss_bore, h=overall_height/2, $fn=60);
            }
            translate([overall_width, 0, 0]) {
                cylinder(r=openmv_boss_bore, h=overall_height/2, $fn=60);
            }
        }
        
        // SD Card Slot
        translate([overall_width - wall_thickness -1,
                   overall_length - wall_thickness - sd_slot_from_openmv_corner-2, 11]) {
            cube(size=[10,16,5]);
        }
        
        // Vents:
        translate([-1, 10, 20]) {
            cube(size=[overall_width + 2, 2 ,15]);
        }
        translate([-1, 20, 20]) {
            cube(size=[overall_width + 2, 2 ,15]);
        }
        translate([-1, 30, 20]) {
            cube(size=[overall_width + 2, 2 ,15]);
        }
        translate([-1, 40, 20]) {
            cube(size=[overall_width + 2, 2 ,15]);
        }
        
    }
    
    difference() {
        union() {
            // OpenMV Mounting Bosses
            translate([center_width - openmv_hole_spacing/2.0, wall_thickness + openmv_length + wire_spacing - 3, wall_thickness]) {
                cylinder(r=openmv_boss_dia,h=6, $fn=48);
            }
            translate([center_width + openmv_hole_spacing/2.0, wall_thickness + openmv_length + wire_spacing - 3, wall_thickness]) {
                cylinder(r=openmv_boss_dia,h=6, $fn=48);
            }
            translate([center_width, overall_length - wall_thickness - openmv_length+6, wall_thickness]) {
                cylinder(r=openmv_boss_dia + 1,h=6, $fn=48);
                translate([0,-3,6]) {
                    cube(size=[3,2,3], center = true);
                }
            }
        }
        
        // Holes in bosses
translate([center_width - openmv_hole_spacing/2.0, wall_thickness + openmv_length + wire_spacing - 3, wall_thickness]) {
                cylinder(r=openmv_boss_bore,h=7, $fn=48);
            }
            translate([center_width + openmv_hole_spacing/2.0, wall_thickness + openmv_length + wire_spacing - 3, wall_thickness]) {
                cylinder(r=openmv_boss_bore,h=7, $fn=48);
            }
        
    }
}


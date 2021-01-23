
// Driving parameters:

// Overall Dimensions:
openmv_width = 36 + 1;
openmv_length = 49 + 1;
openmv_board_stack_height = 34; // Bottom of pins to expansion board height.
wire_spacing = 12;
wall_thickness = 4;
case_boss_radius = 4;

// OpenMV Mounting Bosses
openmv_boss_dia = 2.6;
openmv_boss_bore = 1.1;
openmv_boss_height = 6;
openmv_hole_spacing = 29.5;

// Mounting Tabs
mounting_tab_width = 10;
mounting_tab_height = 7;

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
            // Lid mounting bosses
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
            
            // Case Mounting Blocks
            translate([-(mounting_tab_width-1), wall_thickness*2, 0]) {
                cube(size=[mounting_tab_width,openmv_length + wall_thickness,mounting_tab_height]);
            }
            translate([overall_width-1, wall_thickness*2, 0]) {
                cube(size=[mounting_tab_width,openmv_length+wall_thickness,mounting_tab_height]);
            }
        }
        
        // Cutout for the inner volume.
        translate([wall_thickness, wall_thickness, wall_thickness]) {
            cube(size=[openmv_width, openmv_length + wire_spacing, openmv_board_stack_height+1]);
        }
        
        // Notch for cables.
        translate([center_width, -1, overall_height/2+12]) {
            cube(size=[4,wall_thickness+8, 15], center=true);
        }
        
        // Holes for zip-ties.
        translate([center_width - 7, -1, overall_height/2 + 13]) {
             cube(size=[3,wall_thickness+7, 5], center=true);
        }
        translate([center_width + 7, -1, overall_height/2 + 13]) {
             cube(size=[3,wall_thickness+7, 5], center=true);
        }
        
         // Lens Focusing Hole
        translate([center_width, overall_length, 26]) {
            rotate([90,0,0]) {
                cylinder(h=10,r=4, center=true, $fn=32);
            }
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
        
        // Holes for mounting screws:
        translate([-mounting_tab_width/2,15,-1]) {
            cylinder(r=2.5,h=mounting_tab_height+2, $fn=30);
        }        
        translate([overall_width + mounting_tab_width/2,15,-1]) {
            cylinder(r=2.5,h=mounting_tab_height+2, $fn=30);
        }
        translate([-mounting_tab_width/2,35,-1]) {
            cylinder(r=2.5,h=mounting_tab_height+2, $fn=30);
        }        
        translate([overall_width + mounting_tab_width/2,35,-1]) {
            cylinder(r=2.5,h=mounting_tab_height+2, $fn=30);
        }
        translate([-mounting_tab_width/2,55,-1]) {
            cylinder(r=2.5,h=mounting_tab_height+2, $fn=30);
        }        
        translate([overall_width + mounting_tab_width/2,55,-1]) {
            cylinder(r=2.5,h=mounting_tab_height+2, $fn=30);
        }
        
        // SD Card Slot
        translate([overall_width - wall_thickness -1,
                   overall_length - wall_thickness - sd_slot_from_openmv_corner-3, 10]) {
            cube(size=[10,16,5]);
        }
        
        // Vents:
        translate([-1, 10, 18]) {
            cube(size=[overall_width + 2, 2 ,15]);
        }
        translate([-1, 20, 18]) {
            cube(size=[overall_width + 2, 2 ,15]);
        }
        translate([-1, 30, 18]) {
            cube(size=[overall_width + 2, 2 ,15]);
        }
        translate([-1, 40, 18]) {
            cube(size=[overall_width + 2, 2 ,15]);
        }
        
        // Cable Slots:
        translate([-1,36,38]) {
            rotate([0,90,0]) {
                cylinder(r=4,h=overall_width+2, $fn=32);
            }
        }
        translate([-1,26,38]) {
            rotate([0,90,0]) {
                cylinder(r=4,h=overall_width+2, $fn=32);
            }
        }
        translate([-1,16,38]) {
            rotate([0,90,0]) {
                cylinder(r=4,h=overall_width+2, $fn=32);
            }
        }
        
        // USB Connector Hole:
        translate([center_width+ 4, -1,10]) {
            cube(size=[13, wall_thickness+2, 8]);
        }
    }
    
    difference() {
        union() {
            // OpenMV Mounting Bosses
            translate([center_width - openmv_hole_spacing/2.0, wall_thickness + openmv_length + wire_spacing - 3.5, wall_thickness]) {
                cylinder(r=openmv_boss_dia,h=6, $fn=48);
            }
            translate([center_width + openmv_hole_spacing/2.0, wall_thickness + openmv_length + wire_spacing - 3.5, wall_thickness]) {
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
translate([center_width - openmv_hole_spacing/2.0, wall_thickness + openmv_length + wire_spacing - 3.5, wall_thickness]) {
                cylinder(r=openmv_boss_bore,h=7, $fn=48);
            }
            translate([center_width + openmv_hole_spacing/2.0, wall_thickness + openmv_length + wire_spacing - 3.5, wall_thickness]) {
                cylinder(r=openmv_boss_bore,h=7, $fn=48);
            }
        
    }
    
    // Translated Lid above the case.
    translate([0, 0, 70]) {
        difference() {
            union() {
                cube(size=[openmv_width + 2 * wall_thickness,
                       openmv_length + 2 * wall_thickness + wire_spacing,
                       wall_thickness]);               
                // Lid bosses
                cylinder(r=case_boss_radius, h=wall_thickness, $fn=60);
                translate([0, overall_length, 0]) {
                    cylinder(r=case_boss_radius, h=wall_thickness, $fn=60);
                }
                translate([overall_width, overall_length, 0]) {
                    cylinder(r=case_boss_radius, h=wall_thickness, $fn=60);
                }
                translate([overall_width, 0, 0]) {
                    cylinder(r=case_boss_radius, h=wall_thickness, $fn=60);
                }
            }
            
            // Mounting Holes
            translate([0,0,-1]) {
                cylinder(r=openmv_boss_bore + 0.3, h=wall_thickness+2, $fn=60);
            }
            translate([0, overall_length, -1]) {
                cylinder(r=openmv_boss_bore + 0.3, h=wall_thickness+2, $fn=60);
            }
            translate([overall_width, overall_length, 0]) {
                cylinder(r=openmv_boss_bore + 0.3, h=wall_thickness+2, $fn=60);
            }
            translate([overall_width, 0, -1]) {
                cylinder(r=openmv_boss_bore + 0.3, h=wall_thickness+2, $fn=60);
            }
            
            // Pixie Wiring & Mounting Holes:
            pixie_y = 38;
            translate([center_width+10,pixie_y,-1]) {
                cylinder(r=1.2, h=11, center=true, $fn=32);
            }
            
            translate([center_width-10,pixie_y,-1]) {
                cylinder(r=1.2, h=11, center=true, $fn=32);
            }
            
            translate([center_width - 5, pixie_y - 9, -1]) {
                cube(size=[10,4,6]);
            }
            
            // Pixie cable notches
            translate([center_width+23, pixie_y-2,-1]) {
                cylinder(r=4, h=11, center=true, $fn=32);
            }
            
            translate([center_width-23, pixie_y-2,-1]) {
                cylinder(r=4, h=11, center=true, $fn=32);
            }
            
            // Lens Hole
            translate([center_width, overall_length - wall_thickness*2 -4.7, 2]) {
                cylinder(r1=6.2, r2=9, h=5, center=true, $fn=64);
            }
            translate([center_width, overall_length - wall_thickness*2 -4.7, 4]) {
                cylinder(r1=9, r2=10, h=2, center=true, $fn=64);
            }
    
            // Range Sensor Mounting Holes
            sensor_y = 23;
            translate([center_width+14,sensor_y,-1]) {
                cylinder(r=1.2, h=11, center=true, $fn=32);
            }
            
            translate([center_width-14,sensor_y-12.5,-1]) {
                cylinder(r=1.2, h=11, center=true, $fn=32);
            }
    
            // Range sensor cable notch
            translate([center_width, wall_thickness-4,-1]) {
                cylinder(r=3, h=11, center=true, $fn=32);
            }
            
        }
    }
}


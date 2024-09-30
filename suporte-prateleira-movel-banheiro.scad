
translate([0,0,-2])
cylinder(h=10,d=4.75);
translate([-2,-7,0])
linear_extrude(height = 2)
square(15);
translate([-2,-7,0])
rotate([0,90,0])
linear_extrude(height = 2)
square(15);
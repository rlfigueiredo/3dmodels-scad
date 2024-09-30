//$fn=360;
//translate([10,-4,0])
linear_extrude(height = 15)
text("Breja");
//cube([50,15,3]);
difference() {
    cylinder(h=111,,d1=63,d2=77);
    translate([0,0,10])
    cylinder(h=101,d1=58,d2=72);
}
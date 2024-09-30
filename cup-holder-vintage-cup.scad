$fn=360;
difference() {
    cylinder(h=102,d1=70,d2=86);
    translate([0,0,10])
    cylinder(h=102,d1=62,d2=78);
    translate([0,0,0])
    cylinder(h=10,d =10);
    rotate([90,0,90])
    translate([-15,50,35])
    linear_extrude(height = 5)
    text("Breja");
}
//rotate([90,0,90])
  //  translate([12,80,34])
    //linear_extrude(1)
    //text("Breja");
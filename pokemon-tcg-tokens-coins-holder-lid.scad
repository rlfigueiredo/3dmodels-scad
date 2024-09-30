$fn=360;
magnetdia=6;
h=2;
d=90/2;

difference() {
    translate([0,0,0])
    cylinder(h,d,d);
    translate([15,15,h-1])
    cylinder(h-1,d=magnetdia);
    translate([-15,-35,h-1])
    cylinder(h-1,d=magnetdia);
}

$fn=360;
//67x93x22
//cards = 85x125x10
x=91;
y=92;
z=2;
difference() {
  translate([0,0,0])
  cube([x,y,z]);
  translate ([x-10,y-72,1])
  linear_extrude(1)
  rotate([0,0,180])
  text ("WARCROW",font="Helvetica LT MM");
}
//handle
translate([4,y-5,z])
cube([x-8,5,z+1]);

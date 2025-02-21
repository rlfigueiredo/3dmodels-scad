$fn=360;
//67x93x22
//cards = 85x125x10
x=206;
y=2;
z=167;
cardx=85;
cardy=15;
cardz=208;
difference() {
  translate([0,0,0])
  cube([x,y,z]);
}
//handle
//translate([4,0,z])
//cube([x-8,5,z+1]);
//cards slots

difference() {
  translate([x-200,0,0])
  cube([x-12,cardy+5,z-6]);
  for ( xbase = [100,200] ) {
    translate([x-xbase+5,y,10])
    cube([cardx,cardy,cardz]);
    translate([xbase-50,cardy+5,z-5])
    rotate([90,0,0])
    linear_extrude(5)
    circle(d=20);
  }
  translate ([100,20,z-50])
  rotate([90,0,180])
  linear_extrude(2)
  text ("WARCROW",font="Helvetica LT MM");
}

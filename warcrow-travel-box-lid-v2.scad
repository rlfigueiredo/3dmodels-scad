//$fn=360;
//67x93x22
//cards = 85x125x10
x=206;
y=167;
z=2;
cardx=85;
cardy=125;
cardz=15;
difference() {
  translate([0,0,0])
  cube([x,y,z]);
  translate ([x/2,20,1])
  linear_extrude(1)
  rotate([0,0,180])
  text ("WARCROW",font="Helvetica LT MM");
}
//handle
translate([4,y-5,z])
cube([x-8,5,z+1]);
//cards slots
for ( xbase = [103,197] ) {
  difference() {
    translate([x-xbase,y-135,z])
    cube([cardx+10,cardy+10,cardz+5]);
    translate([x-xbase+5,y-145,z])
    cube([cardx,cardy+10,cardz]);
  }
}

$fn=360;
//67x93x22
x=109;
y=156;
z=12;
//square([x+4,y+4]);
difference() {
    translate([0,0,0])
    cube([x+10,y+10,z+2]);
    translate([5,5,3])
    cube([x,y,z]);
    //translate([5,0,15])
    //cube([x-8,y,z-20]);
    translate([3,3,z+1])
    cylinder(h=1,d=5);
    translate([x+7,y+7,z+1])
    cylinder(h=1,d=5);
    translate([3,y+7,z+1])
    cylinder(h=1,d=5);
    translate([x+7,3,z+1])
    cylinder(h=1,d=5);
}

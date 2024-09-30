//67x93x22
x=67;
y=31;
z=93;
//square([x+4,y+4]);
difference() {
    translate([0,0,0])
    cube([x+2,y+2,z+2]);
    translate([1,1,3])
    cube([x,y,z]);
    translate([5,0,15])
    cube([x-8,y,z-20]);
}

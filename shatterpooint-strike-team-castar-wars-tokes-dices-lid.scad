//$fn=360;
//67x93x22
x=109;
y=159;
z=5;
magnetdia=6;
//square([x+4,y+4]);
difference() {
    translate([0,0,0])
    cube([x,y,z]);
    translate([32,22,1])
    cube([50,117,4]);
    //translate([5,0,15])
    //cube([x-8,y,z-20]);
    translate([84,20,z-1])
    cylinder(h=1,d=magnetdia);
    translate([29,93,z-1])
    cylinder(h=1,d=magnetdia);
}

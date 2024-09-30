//$fn=360;
//67x93x22
x=109;
y=159;
z=50;
base=26;
//square([x+4,y+4]);
difference() {
    translate([0,0,0])
    cube([x,y,z]);
    translate([2,2,5])
    cube([x-4,y-4,z]);
    for ( x1= [35,75] ) {
      for ( y1= [35,75,115] ) {  
        translate([x1,y1,z-48])
        cylinder(h=5,d=base);
      }
  }
}

$fn=360;
//67x93x22
x=140;
y=70;
z=1;
translate([0,0,0])
cube([x,y,z]);
for ( x1= [5,40,75,110] ) {
  for ( y1= [4,19,34,49,64] ) {  
    translate([x1,y1,0])
    cube([23,2,10]);
    translate([x1,y1-1,0])
    cube([2,4,10]);
    translate([x1+21,y1-1,0])
    cube([2,4,10]);
  }
}

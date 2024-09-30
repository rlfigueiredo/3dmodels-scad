$fn=360;
//67x93x22
x=165;
y=160;
z=60;
baseironheadsx=29;
baseironheadsz=5;
baseenforcersx=26;
baseenforcersz=5;

//square([x+4,y+4]);
difference() {
    translate([0,0,0])
    cube([x,y,z]);
    //main gap
    translate([3,0,9])
    cube([x-40,y-2,z]);
    //dice gap
    translate([x-28,5,1])
    cube([x-140,y-10,z]);
    for ( y1= [10,30,50,70,90,110,130,150] ) {
      translate ([x-32,y1,z-3])
      cylinder(h=1,d=5);
    }
    //slide gaps
    translate([1,1,1])
    cube([x-2,3,z]);
    translate([1,y-4,1])
    cube([x-2,3,z]);
    //front gap
    translate([3,0,2])
    cube([x-6,2,z]);
    //back gap
    translate([3,y-2,2])
    cube([x-6,2,z]);
    //top gap
    translate([1,2,z-2])
    cube([x-2,y-3,2]);
    for ( x1= [3,34] ) {
      translate([x1,3,2])
      cube([baseironheadsx,y-20,baseironheadsz]);
      translate([x1+2,3,4])
      cube([baseironheadsx-4,y-20,baseironheadsz]);
    }
    for ( x1= [69,97] ) {
      translate([x1,3,2])
      cube([baseenforcersx,y-20,baseenforcersz]);
      translate([x1+2,3,4])
      cube([baseenforcersx-4,y-20,baseenforcersz]);
    }
}
//difference () {
//  translate ([0,y/4,z-3])
//  cube([x,8,2]);
//  for ( x1= [10,30,50,70,90,110,130,150] ) {
//    translate ([x1,y/4+4,z-2])
//    cylinder(h=1,d=5);
//  }
//}
//difference () {
//  translate ([0,((y/4)*3),z-3])
 // cube([x,8,2]);
 // for ( x1= [10,30,50,70,90,110,130,150] ) {
 //   translate ([x1,((y/4)*3+4),z-2])
 //   cylinder(h=1,d=5);
//  }
//}
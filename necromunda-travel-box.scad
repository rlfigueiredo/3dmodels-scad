$fn=360;
//67x93x22
x=126;
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
    translate([2,0,9])
    cube([x-4,y,z]);
    //slide gaps
    translate([1,1,1])
    cube([x-2,3,z]);
    translate([1,y-3,1])
    cube([x-2,3,z]);
    //front gap
    translate([2,0,2])
    cube([x-4,2,z]);
    //top gap
    translate([1,2,z-2])
    cube([x-2,y-3,2]);
    for ( x1= [2,33] ) {
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
difference () {
  translate ([0,y/4,z-3])
  cube([x,8,2]);
  for ( x1= [10,30,50,70,90,110] ) {
    translate ([x1,y/4+4,z-2])
    cylinder(h=1,d=5);
  }
}
difference () {
  translate ([0,((y/4)*3),z-3])
  cube([x,8,2]);
  for ( x1= [10,30,50,70,90,110] ) {
    translate ([x1,((y/4)*3+4),z-2])
    cylinder(h=1,d=5);
  }
}
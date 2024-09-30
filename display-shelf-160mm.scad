//$fn=360;
difference () {
  cube([200,160,5]);
  translate([5,5,2])
  cube([200-10,160-10,3]);  
  for ( x1 = [10,30,50,70,90,110,130,150,170])
        for ( y1 = [10,30,50,70,90,110,130]) {
            translate([x1,y1,0])
            linear_extrude(height = 5)
            polygon([[5,5],[10,5],[15,10],[10,10],[0,10]]);
            translate([x1,y1+5,0])
            linear_extrude(height = 5)
            polygon([[0,5],[15,5],[15,10],[5,10],[0,10]]);
            translate([x1,y1+5,0])
            linear_extrude(height = 5)
            polygon([[0,10],[5,15],[10,15],[15,10]]);
        }
}
for ( x2 = [10,190]) {
  for ( y2 = [10,150]) {
    translate([x2,y2,0])
    cylinder(h=160,d=10);
  }
}
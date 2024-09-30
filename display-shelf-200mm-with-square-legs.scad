//$fn=360;
cubex=200;
cubey=200;
cubez=5;
difference () {
  cube([cubex,cubey,cubez]);
  translate([5,5,2])
  cube([cubex-10,cubey-10,cubez-2]);  
  for ( x1 = [10,30,50,70,90,110,130,150,170])
        for ( y1 = [10,30,50,70,90,110,130,150,170]) {
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
for ( x2 = [0,cubex-10]) {
  for ( y2 = [0,cubey-10]) {
    translate([x2,y2,0])
    cube([10,10,160]);
  }
}
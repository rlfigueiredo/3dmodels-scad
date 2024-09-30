difference(){
cylinder(h=10, d1=200, d2=100);
for ( x1 = [-15,15,35,55,75])
        for ( y1 = [-70,-50,-30,-10,10,30,50,70]) {
            translate([x1,y1,0])
            linear_extrude(height = 10)
            polygon([[5,5],[10,5],[15,10],[10,10],[0,10]]);
            translate([x1,y1+5,0])
            linear_extrude(height = 10)
            polygon([[0,5],[15,5],[15,10],[5,10],[0,10]]);
            translate([x1,y1+5,0])
            linear_extrude(height = 10)
            polygon([[0,10],[5,15],[10,15],[15,10]]);
        }
    }
cylinder(h=200, d1=50, d2=15);


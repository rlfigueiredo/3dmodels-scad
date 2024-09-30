/*difference () {
cube([216,216,35]);
    for ( x = [5,111])
        for ( y = [5,111]) {
            translate([x,y,1])
                cube([101,101,99]);
            translate([0,y+10,1])
                cube([216,81,99]);
            translate([x+10,0,1])
                cube([81,216,99]);
        }
}*/
difference (){
    difference () {
    cube([216,111,70]);
        for ( x = [5,111])
            for ( y = [5]) {
                translate([x-1,y,2])
                    cube([102,102,70]);
                translate([0,y+10,2])
                    cube([216,81,70]);
                translate([x+10,0,2])
                    cube([81,216,70]);
            }
    }
    for ( x1 = [5,40,75,110,145,180])
        for ( y1 = [13,48]) {
            translate([x1,y1,0])
            linear_extrude(height = 2)
            polygon([[10,10],[20,10],[30,20],[20,20],[0,20]]);
            translate([x1,y1+10,0])
            linear_extrude(height = 2)
            polygon([[0,10],[30,10],[30,20],[10,20],[0,20]]);
            translate([x1,y1+10,0])
            linear_extrude(height = 2)
            polygon([[0,20],[10,30],[20,30],[30,20]]);
        }
}
z = 180;
difference (){
    difference () {
    cube([125,125,z]);
        for ( x = [5])
            for ( y = [5]) {
                translate([x,y,5])
                    cube([115,115,z+10]);
                translate([0,y+20,5])
                    cube([125,75,z-20]);
                translate([x+20,0,5])
                    cube([75,125,z]);
            }
    }
    for ( x1 = [15,35,55,75,95])
        for ( y1 = [10,30,50,70,90]) {
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
//113 largura
//265 comprimento
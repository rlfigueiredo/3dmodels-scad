$fn=360;
translate([6,2,0])
linear_extrude(height = 5)
text("Orange Crush", size = 6);
translate([13,-7,0])
linear_extrude(height = 5)
text("Declan L.", size = 6);
//cube([50,15,3]);
difference() {
    difference() {
        hull() {
            cylinder(h=5,d=25);
            translate([50,0,0])
            cylinder(h=5,d=25);
        }         
        translate([0,0,4])
        hull() {
            cylinder(h=2,d=20);
            translate([50,0,0])
            cylinder(h=2,d=20);
        }
    }
    translate([-2,0,0])
    cylinder(h=5,d=15);
}

//Alden Cone
//Axel Habib
//Blake Barrial
//Cooper Todd
//Declan Longacre
//Dominic Berube
//Hux Heathman
//Kam Givens
//Lucas Serra
//Luke Figueiredo
//Maxwell Alford
//Maxwell Bales
//Otis Gray
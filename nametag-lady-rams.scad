$fn=360;
translate([30,2,0])
linear_extrude(height = 5)
text("Lady Rams", halign = "center", size = 6);
translate([30,-7,0])
linear_extrude(height = 5)
text("Analiese", halign = "center", size = 6);
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

//Analiese V
//Christy. Z
//Lauren Z
//Payten C
//Brooklyn C
//Bailey C
//Taya C
//Luiza F
//Jaylia
//Mila R
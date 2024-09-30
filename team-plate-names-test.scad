/*names = ["Aidan Mcmellan #1","Beckett House #7","Bowen Knight"];
//names = ["Aidan Mcmellan #1"];
count = 0;
linear_extrude(2)
for ( name = [0:2],count = [0,-15,-30] )
    translate([0,count,0])
    text (names[name])
    //text ("asdf")

;
count1 = count;
*/
translate([-45,200,0])
linear_extrude(5)
text("Gators 2023 Fall Season",6);

linear_extrude(5)
translate([-50,185,0])
text("Aidan Mcmellan #1",6);
linear_extrude(5)
translate([-50,175,0])
text("Beckett House	#7",6);
linear_extrude(5)
translate([-50,165,0])
text("Bowen Knight",6);
linear_extrude(5)
translate([-50,155,0])
text("Cole Switser #11",6);
linear_extrude(5)
translate([-50,145,0])
text("Cooper Todd",6);
linear_extrude(5)
translate([-50,135,0])
text("David Garcia #8",6);
linear_extrude(5)
translate([-50,125,0])
text("Jacob Bullmer #5",6);
linear_extrude(5)
translate([-50,115,0])
text("Landon Lashlee #2",6);
linear_extrude(5)
translate([-50,105,0])
text("Logan Creager",6);
linear_extrude(5)
translate([-50,95,0])
text("Luke Figueiredo #28",6);
linear_extrude(5)
translate([-50,85,0])
text("Ryder Jelley-Lehmkuhl #72",6);
linear_extrude(5)
translate([-50,75,0])
text("Tristan Reyes	#4",6);

difference() {
    difference() {
        hull() {
            translate([0,110,0])
            cylinder(h=5,d=150);
            translate([0,160,0])
            cylinder(h=5,d=150);
        }         
        translate([0,0,4])
        hull() {
            translate([0,110,0])
            cylinder(h=2,d=130);
            translate([0,160,0])
            cylinder(h=2,d=130);
        }
    }
}

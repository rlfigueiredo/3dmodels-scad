$fn=360;
//67x93x22
//cards = 85x125x10
x=95;
y=95;
z=135;
cardx=85;
cardy=y-5;
cardz=125;
base=31;

difference() {
    translate([0,0,0])
    cube([x,y,z]);
    //cards gap1
    translate([x-90,5,5])
    cube([cardx,cardy-5,cardz]);
    //lid gaps
    translate([2,0,z-5])
    cube([x-4,y-3,3]);
    translate([5,0,z-4])
    cube([x-10,y-5,5]);
}

//$fn=360;
//67x93x22
//cards = 85x125x10
x=210;
y=170;
z=99;
cardx=10;
cardy=125;
cardz=99;
base=31;

difference() {
    translate([0,0,0])
    cube([x,y,z]);
    //main gap
    translate([5,5,5])
    cube([x-10,y-10,z]);
    //cards gap
    //translate([x-33,5,5])
    //cube([cardx,cardy,cardz]);
    //dice gap
    //translate([x-30,5,50])
    //cube([x-230,y-10,z]);
    //miniatures gaps
    for ( xbase = [25,65,105,145,185] ) {
      for ( ybase = [25,65,105,145] ) {  
        translate([xbase,ybase,3])
        cylinder(d=base,h=4);
        translate([xbase-5,ybase-5,1])
        cylinder(d=6,h=2);  
        translate([xbase+5,ybase+5,1])
        cylinder(d=6,h=2);  
        
      }
    }
    //slide gaps
    //translate([1,1,1])
    //cube([x-2,3,z]);
    //translate([1,y-4,1])
    //cube([x-2,3,z]);
    //front gap
    //translate([3,0,2])
    //cube([x-6,2,z]);
    //back gap
    //translate([3,y-2,2])
    //cube([x-6,2,z]);
    //top lid gap
    translate([2,0,z-5])
    cube([x-4,y-3,3]);
    translate([5,0,z-4])
    cube([x-10,y-5,5]);
}

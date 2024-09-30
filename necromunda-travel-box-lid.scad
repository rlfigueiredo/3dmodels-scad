$fn=360;
//67x93x22
x=124;
y=158;
z=59;

difference () {
  cube([x,y,3]);
  translate ([x/2,0,0])
  sphere (d=40);  
  translate ([x/2,y,0])
  sphere (d=40);  
  translate ([0,y/4,2])
  cube([x,8,1]);
  for ( x1= [10,30,50,70,90,110] ) {
    translate ([x1,y/4+4,1])
    cylinder(h=1,d=5);
  }
  translate ([0,((y/4)*3),2])
  cube([x,8,1]);
  for ( x1= [10,30,50,70,90,110] ) {
    translate ([x1,((y/4)*3+4),1])
    cylinder(h=1,d=5);
  }
  //translate ([x/2,y/2,1])
  //scale([1,1,0.05])
  //rotate([0,180,0])
  //surface(file="/Users/rogerio/Downloads/Palanite_Enforcers_Symbol.png",center=true,invert=false);

}
cube([x,1,z]);
translate ([0,y,0])
cube([x,1,z]);
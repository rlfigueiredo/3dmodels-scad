$fn=360;
x=150;
y=150;
z=30;
largetoken=31/2;
largetokenh=11;
smalltoken=19/2;
smalltokenh=25;
smalltoken2h=19;
smalltoken3h=8;
smalltoken4h=12;
lifetoken1r1=12/2;
lifetoken1r2=2/2;
lifetoken1h=15;
lifetoken2h=22;
imanh=3;
imand=6/2;

difference() {
    translate([0,0,0])
    cube([x,y,z]);
    translate([20,35,2])
    cube([x-40,y-60,z]);
    translate([largetoken+5,largetoken-2,z-largetokenh])
    cylinder(largetokenh+1,largetoken,largetoken);
    for ( xbase = [largetoken+40,largetoken+75,largetoken+110] ) {
      translate([xbase,largetoken-2,z-largetokenh])
      cylinder(largetokenh,largetoken,largetoken);
    }
    for ( ybase = [smalltoken+30,smalltoken+52] ) {
      translate([smalltoken-1,ybase,z-smalltokenh])
      cylinder(smalltokenh,smalltoken,smalltoken);
    }
    translate([smalltoken-1,smalltoken+74,z-smalltoken2h])
    cylinder(smalltokenh,smalltoken,smalltoken);
    translate([smalltoken-1,smalltoken+96,z-smalltoken2h+7])
    cylinder(smalltokenh,smalltoken,smalltoken);
    translate([smalltoken-1,smalltoken+118,z-smalltoken2h+11])
    cylinder(smalltokenh,smalltoken,smalltoken);
    translate([x-8,smalltoken+125,z-smalltoken2h+8])
    cylinder(smalltokenh,smalltoken,smalltoken);
    for ( ybase = [smalltoken+100,smalltoken+75,smalltoken+50] ) {
      translate([x-8,ybase,z-smalltoken3h])
      cylinder(smalltokenh,smalltoken,smalltoken);
    }
    for ( xbase = [smalltoken+20,smalltoken+45,smalltoken+70,smalltoken+95] ) {
      translate([xbase,y-8,z-smalltoken4h])
      cylinder(smalltoken4h,smalltoken,smalltoken);
    }
    translate([x-5,35,z-lifetoken1h])
    linear_extrude(lifetoken1h)
    circle(r=lifetoken1r1,$fn=360);
    translate([x-5-lifetoken1r1,35,z])
    rotate([0,180,0])
    linear_extrude(lifetoken1h) 
    circle(r=lifetoken1r1, $fn=3);
    
    translate([x-25,y-5,z-lifetoken2h])
    linear_extrude(lifetoken2h)
    circle(r=lifetoken1r1,$fn=360);
    translate([x-19-lifetoken1r1,y-11,z])
    rotate([0,180,90])
    linear_extrude(lifetoken2h) 
    circle(r=lifetoken1r1, $fn=3);
    
    for ( xbase = [x-42,x-112] ) {
      translate([xbase,y-122,z-imanh])
      cylinder(imanh,imand,imand);
    }
    
    for ( xbase = [x-33,x-108] ) {
      translate([xbase,y-18,z-imanh])
      cylinder(imanh,imand,imand);
    }
}

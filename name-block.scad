module NameBlock (name1,name2,name3,name4,size) {
    difference() {
        cube([size,size/4,size/4], center=true);
            rotate([0,0,0])
                translate ([0,0,size/10])
                    linear_extrude(height=size/10/3, convexity=4)
                        text(name1,size=size/6,halign="center",valign="center");
            rotate([90,0,0])
                translate ([0,0,size/10])
                    linear_extrude(height=size/10/3, convexity=4)
                        text(name2,size=size/6,halign="center",valign="center");
            rotate([180, 0, 0])
                translate ([0,0,size/10])
                    linear_extrude(height=size/10/3, convexity=4)
                        text(name3,size=size/6,halign="center",valign="center");
            rotate([270, 0, 0])
                translate ([0,0,size/10])
                    linear_extrude(height=size/10/3, convexity=4)
                        text(name4,size=size/6,halign="center",valign="center");
        //text("Luiza",size=size/6,halign="left",valign="center");
    }
}
NameBlock ("Clarinha","Luiza","Olivia","Luke",5);
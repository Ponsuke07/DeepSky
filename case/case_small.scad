x = 58;
y = 79;
h = 7;

difference(){
translate([0, 0,  h/2-1]) cube([x+3, y+3, h],center=true);

    union(){
        _m=0.5;
        _r=5+(_m/2);
        translate([0, 0, 10/2  ]) cube([x+_m-(_r*2), y+_m, 10],center=true);
        translate([0, 0, 10/2  ]) cube([x+_m, y+_m-(_r*2), 10],center=true);
        translate([ off_x, off_y, 0])cylinder(r=_r,h=10);
        translate([-off_x, off_y, 0])cylinder(r=_r,h=10);
        translate([ off_x,-off_y, 0])cylinder(r=_r,h=10);
        translate([-off_x,-off_y, 0])cylinder(r=_r,h=10);
    }

}

off_x = (x/2-5);
off_y = (y/2-5);
$fn=50;

difference(){
    union(){
        translate([ off_x, off_y, 0])cylinder(r=3,h=h-1.6);
        translate([-off_x, off_y, 0])cylinder(r=3,h=h-1.6);
        translate([ off_x,-off_y, 0])cylinder(r=3,h=h-1.6);
        translate([-off_x,-off_y, 0])cylinder(r=3,h=h-1.6);
    }
    translate([ off_x, off_y, 0])cylinder(r=1.1,h=7);
    translate([-off_x, off_y, 0])cylinder(r=1.1,h=7);
    translate([ off_x,-off_y, 0])cylinder(r=1.1,h=7);
    translate([-off_x,-off_y, 0])cylinder(r=1.1,h=7);
}




x = 58
y = 79

difference(){
translate([0, 0,  6/2-1]) cube([x+3, y+3,  6],center=true);
translate([0, 0, 10/2  ]) cube([x+1, y+1, 10],center=true);
}

off_x = (x/2-5);
off_y = (y/2-5);
$fn=50;
translate([ off_x, off_y, 0])cylinder(r=1.55,h=7);
translate([-off_x, off_y, 0])cylinder(r=1.55,h=7);
translate([ off_x,-off_y, 0])cylinder(r=1.55,h=7);
translate([-off_x,-off_y, 0])cylinder(r=1.55,h=7);

translate([ off_x, off_y, 0])cylinder(r=2.25,h=2.5);
translate([-off_x, off_y, 0])cylinder(r=2.25,h=2.5);
translate([ off_x,-off_y, 0])cylinder(r=2.25,h=2.5);
translate([-off_x,-off_y, 0])cylinder(r=2.25,h=2.5);

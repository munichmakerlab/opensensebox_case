$fn=50;
module round_square(w,h,r) {
    i_w=w/2-r;
    i_h=h/2-r;
    hull() {
        translate([-i_w,-i_h]) circle(r=r);
        translate([i_w,-i_h]) circle(r=r);
        translate([-i_w,i_h]) circle(r=r);
        translate([i_w,i_h]) circle(r=r);
    }
}
module arduino() {
    translate([15.3,-2.7]) circle(r=1.5);
    translate([14,-50.8]) circle(r=1.5);
    translate([66.1,-17.9]) circle(r=1.5);
    translate([66.1,-17.9-27.9]) circle(r=1.5);
}
module spacer() {
    difference() {
        circle(r=3);
        circle(r=1.5);
    }
}

difference() {
    round_square(68, 100, 3);
    translate([29,45]) circle(r=2);
    translate([-29,45]) circle(r=2);
    translate([29,-45]) circle(r=2);
    translate([-29,-45]) circle(r=2);
    
    translate([-26,-22]) rotate(90) arduino();
    
    translate([0,-25-50+25]) round_square(45,50,3);
}
/*
translate([-16,-30]) spacer();
translate([-9,-30]) spacer();
translate([-2,-30]) spacer();
translate([5,-30]) spacer();
translate([-16,-37]) spacer();
translate([-9,-37]) spacer();
translate([-2,-37]) spacer();
translate([5,-37]) spacer();*/
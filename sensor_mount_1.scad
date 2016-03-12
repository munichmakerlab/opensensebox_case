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

difference() {
    union() {
        translate([0,52.1/2]) round_square(8,52.1+8,4);
        translate([5/2,0]) round_square(5+8,8,4);
    }
    translate([0,52.1]) circle(r=1.5);
    translate([5,0]) circle(r=1.5);
    
    translate([0,47]) round_square(4,1.5,0.5);
    translate([0,25]) round_square(4,2.5,0.5);
    translate([0,3]) round_square(4,1.5,0.5);
}
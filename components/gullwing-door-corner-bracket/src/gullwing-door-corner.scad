$fn = 30;

t = 2.4;
w_airgap = 18.8;

difference() {
    cube([2*t + w_airgap, 4*t + w_airgap, 2*t + w_airgap]);

    // outer gap
    translate([2*t, 2*t, 2*t])
    cube([w_airgap, t, 2*t + w_airgap]);

    // middle gap
    translate([2*t, 4*t, 2*t])
    cube([w_airgap, w_airgap - 4*t , t + w_airgap]);

    // inner gap
    translate([2*t, t + w_airgap, 2*t])
    cube([w_airgap, t, t + w_airgap]);

    // rotated cube
    translate([0, 0, 3*t + 1.5*w_airgap])
    rotate([0, 45, 0])
    cube([2*w_airgap, 2*w_airgap, 2*w_airgap]);

    // interface cavity lower
    translate([t + w_airgap, t, t])
    cube([t, 2*t + w_airgap, (4*t + w_airgap)/2]);

    // interface cavity for lower outer teeth
    translate([t + w_airgap, t, 0])
    cube([t, t, t]);

    // interface cavity for lower inner teeth
    translate([t + w_airgap, 2*t + w_airgap, 0])
    cube([t, t, t]);

    // interface cavity upper
    translate([t, t, t + w_airgap])
    cube([(4*t + w_airgap)/2, 2*t + w_airgap, t]);

    // interface cavity for upper outer teeth
    translate([0, t, t + w_airgap])
    cube([t, t, t]);

    // interface cavity for upper inner teeth
    translate([0, 2*t + w_airgap, t + w_airgap])
    cube([t, t, t]);
}

translate([0, 0, -2*t - w_airgap])
difference() {
    translate([0, 0, t + w_airgap/2])
    cube([2*t + w_airgap, 4*t + w_airgap, t + w_airgap/2]);

    // rotated cube
    translate([0, 0, 2*t + w_airgap])
    rotate([0, 135, 0])
    cube([2*w_airgap, 2*w_airgap, 2*w_airgap]);

    // interface cavity for lower outer teeth
    translate([t + w_airgap, t, t + w_airgap/2])
    cube([t, t, t + w_airgap/2]);

    // interface cavity for lower inner teeth
    translate([t + w_airgap, 2*t + w_airgap, t + w_airgap/2])
    cube([t, t, t + w_airgap/2]);

    // interface cavity for lower inner teeth
    translate([t + w_airgap, 2*t, t + w_airgap/2])
    cube([t, w_airgap, t]);
}

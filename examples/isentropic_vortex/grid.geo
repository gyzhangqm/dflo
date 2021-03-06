n = 101;
L = 10.0;

l = 0.5*L;

Point(1) = {-l, -l, 0};
Point(2) = { l, -l, 0};
Point(3) = { l,  l, 0};
Point(4) = {-l,  l, 0};

Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {4,1};

Line Loop(1) = {1,2,3,4};
Ruled Surface(1) = {1};
Transfinite Surface(1) = {1,2,3,4};

Recombine Surface(1);
Transfinite Line{1,2,3,4} = n;

Periodic Line {2} = {-4};
Periodic Line {3} = {-1};

Physical Line(1) = {1};
Physical Line(2) = {2};
Physical Line(3) = {3};
Physical Line(4) = {4};
Physical Surface(10) = {1};

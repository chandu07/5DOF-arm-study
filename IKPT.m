function a = IKPT(x,y,z)

a2 = 419;
a3 = 364;
d6 = 267;

r11 =  1;
r12 =  0;
r13 =  0;
px  =  x;
r21 =  0;
r22 =  -1;
r23 =  0;
py  =  y;
r31 =  0;
r32 =  0;
r33 =  -1;
pz  =  z;

calc_T_0_6_d = [
   r11, r12, r13, px;
   r21, r22, r23, py;
   r31, r32, r33, pz;
     0,   0,   0,  1;
];

calc_th1 = atan2(y,x);

A = px - d6*r13;
B = py - d6*r23;
C = pz - d6*r33;
D = ( (A*cos(calc_th1))^2 + 2*A*B*cos(calc_th1)*sin(calc_th1) + (B*sin(calc_th1))^2 + C^2 - a3^2 - a2^2 ) / (2*a2*a3);

calc_th3 = atan2( sqrt(1 - D^2), D );

E = a3*cos(calc_th3) + a2;
F = a3*sin(calc_th3);
ksi = sqrt( E^2 + F^2 );
phi = atan2( F, E );
K = C;

calc_th2 = atan2( (K/ksi), sqrt( 1 - (K/ksi)^2 ) ) - phi;

calc_th4 = -calc_th2 -calc_th3;

calc_th5 = 0;

calc_th1 = 360 * ( calc_th1/(2*pi) );
calc_th2 = 360 * ( calc_th2/(2*pi) );
calc_th3 = 360 * ( calc_th3/(2*pi) );
calc_th4 = -calc_th2 - calc_th3;
calc_th5 = 0;

a = [calc_th1 calc_th2 calc_th3 calc_th4 calc_th5];

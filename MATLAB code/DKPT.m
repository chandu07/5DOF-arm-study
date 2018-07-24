function a = DKPT(th1,th2,th3)

a2 = 419;
a3 = 364;
d6 = 267;

th1 = deg2rad(th1);
th2 = deg2rad(th2);
th3 = deg2rad(th3);
th4 = -th2-th3;
th5 = 0;

x = d6*cos(th1)*sin(th2+th3+th4) + cos(th1)*( a3*cos(th2+th3) + a2*cos(th2) );
y = d6*sin(th1)*sin(th2+th3+th4) + sin(th1)*( a3*cos(th2+th3) + a2*cos(th2) );
z = -d6*cos(th2+th3+th4) + a3*sin(th2+th3) + a2*sin(th2);

a = [x y z];
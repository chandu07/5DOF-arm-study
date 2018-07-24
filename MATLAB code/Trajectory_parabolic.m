for n=1:61
    th1(n) = sqrt(4*n);
    th2(n) = sqrt(4*n);
    th3(n) = sqrt(4*n);
    p(n,:) = DKPT(th1(n),th2(n),th3(n));
    a(n,:) = IKPT(p(n,1),p(n,2),p(n,3));
    t(n) = n
end

length(t)
length(th1)
length(a(:,1))
%DKP th1 and IKP th1 comparison
figure(1)
plot(t,th1,'r*',t,a(:,1),'b-');
xlabel('Time in Minutes');
ylabel('Joint THETA 1 angles of DKP and  IKP');
title('Comparison of DKP & IKP angles [THETA 1 in Degrees]');

%DKP th2 and IKP th2 comparison
figure(2)
plot(t,th2,t,a(:,2));
plot(t,th1,'y*',t,a(:,1),'g-');
xlabel('Time in Minutes');
ylabel('Joint THETA 2 angles of DKP and  IKP');
title('Comparison of DKP & IKP angles [THETA 2 in Degrees]');


figure(3)
plot(t,th3,'r*',t,a(:,3),'yo');
xlabel('Time in Minutes');
ylabel('Joint THETA 3 angles of DKP and  IKP');
title('Comparison of DKP & IKP angles [THETA 3 in Degrees]');


%3D plot of position trajectory
figure(4)
plot3(p(:,1),p(:,2),p(:,3),'r');
xlabel('X coordinates');
ylabel('Y coordinates');
zlabel('Z coordinates');
title('Trajectory of Points in 3D SPACE [all units are in mm]');


%time Vs Coordinates 
figure(5)
plot(t,p(:,1),'r*');
xlabel('Time in Minutes');
ylabel('X coordinates');
title('Change of X coordinates with repsect to change in Time [all units are in mm]');


figure(6)
plot(t,p(:,2),'b*');
xlabel('Time in Minutes');
ylabel('Y coordinates');
title('Change of Y coordinates with repsect to change in Time [all units are in mm]');

figure(7)
plot(t,p(:,3),'go');
xlabel('Time in Minutes');
ylabel('Z coordinates');
title('Change of Z coordinates with repsect to change in Time [all units are in mm]');





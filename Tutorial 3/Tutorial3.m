[t,y] = ode45(@pendulumDE,[0 25], [1.0 1.0]);


figure
plot(t,y(:,1),'-');
xlabel('time');
ylabel('y_{1}(t)');
title('\theta (t)');

clear all;
%spring
[t,x] = ode45(@springDE,[0 25], [1.0 1.0]);


figure
plot(t,x(:,1),'-');
xlabel('time');
ylabel('y_{1}(t)');
title('\theta (t)');


%Damped spring
[t,x] = ode45(@DampedSpringDE,[0 25], [1.0 1.0]);


figure
plot(t,x(:,1),'-');
xlabel('time');
ylabel('y_{1}(t)');
title('\theta (t)');




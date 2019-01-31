%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Euler-Cromer method for a pendulum
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Set up variables
g = 9.8; %Grav. acceleration, m/s^2
l = 1; %Length of pendulum, m
theta0 = 0.2; %Initial angle, radians

n = 1000; %Number of points (calculations) 
dt = 0.01; % step size, s

%Initialize calculated arrays
ang_f = zeros(1,n); % angular frequency
theta = zeros(1,n); % angular position
theta(1) = theta0;%insert initial angle
time = zeros(1,n);  % time

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Do the iterative calculation!
for i =1:n-1 
    ang_f(i+1) = ang_f(i) - (g/l)*theta(i)*dt; 
    theta(i+1) = theta(i) + ang_f(i+1)*dt;
    time(i+1)  = time(i) + dt;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%plot theta over time
figure
plot(time,theta)
title('SHM of pendulum (via Euler-Cromer Method)')
ylabel('position (radians)');
xlabel('time (s)');


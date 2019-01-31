%load data
load hooke.mat
%load('hooke.mat')%this also works

%Rename disp and force as x and y (for convenience)
x = displacement;
y = force;

%Length of the array
n = length(x);

%Calculate least squares coefficients
a = (sum(x.*y) - n*mean(x)*mean(y))./(sum(x.^2)-n*mean(x)^2);
b = (mean(y)*sum(x.^2) - mean(x)*sum(x.*y))./(sum(x.^2)-n*mean(x)^2);

%Fitted function
yf = a*x + b;

%Plot
plot(x,y,'rx')%Plots the file data, as red x's
hold on
plot(x,yf,'b')%Plots the line of best fit, a solid blue line
title('Hookes Law for Captain Hookes Peg-Leg spring constant');%Plot title 
xlabel('Displacement (m)');%x-axis label
ylabel('Force (N)');%y-axis label
legend('Data','Fitted line');%legend
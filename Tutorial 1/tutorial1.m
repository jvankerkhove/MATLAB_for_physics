% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %Making the data 
% x = (1:10);
% n = length(x);
% F = 35e3*x;%k=31-38kN/m for spring in prosthetic leg (Miller & Childress 1997)
% Ri = (25000-500).*randn(1,n)+500;
% force = F + Ri;
% displacement = x./100;
% force = [0, force];
% displacement = [0,displacement];
% bf = (mean(force)*sum(displacement.^2) - mean(displacement)*sum(displacement.*force))./(sum(displacement.^2)-n*mean(displacement)^2);
% force = force - (round(bf));
% force(1) = 0;
% 
% 
% %save data 
% save('Hooke.mat','displacement','force');
% clear all; close all;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%load data
load 'Hooke.mat';
x = displacement;
n = length(x);
y = force;

%Calculate coefficients
a = (sum(x.*y) - n*mean(x)*mean(y))./(sum(x.^2)-n*mean(x)^2);
b = (mean(y)*sum(x.^2) - mean(x)*sum(x.*y))./(sum(x.^2)-n*mean(x)^2);

%Fitted trend
yf = a*x + b;

%Plot
plot(x,y,'rx')
hold on
plot(x,yf,'b')
xlabel('Displacement (m)');
ylabel('Force (N)');


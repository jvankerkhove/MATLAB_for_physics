%%will plot the formation of ripples on water surface  ('_') ->
clear all 
clc
x=-50:0.5:50;
y=-50:0.5:50;
[X,Y] = meshgrid(x,y); % create rectangular mesh
R=sqrt(X.^2+Y.^2); %radius
k=0.1; % wave vector
phi=0; % phase
count=1;
for freqrps=0.1:0.1:2*pi
                    Z=sin((2*pi-freqrps)*k*R);
                   surf(X,Y,Z,'Facecolor','blue','Edgecolor','none');
                   axis equal;
camlight right  ; 
lighting phong;
 M(count)=getframe;
            count=count+1;
end

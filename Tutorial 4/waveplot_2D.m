function [] = waveplot_2D(A,kappa,omega,x,y,t)

% [x,y]=meshgrid(5:0.05:15,-5:0.05:5);
% lambda=1;
% k=2*pi/lambda;
% f=3e8/lambda;
% w=2*pi*f;
% t=linspace(0,60e-9,200);
% %z=exp(i*k*abs(x+i*y));
% z=exp(i*k*x);
% for n=1:length(t)
% surf(x,y,real(z*exp(-i*w*t(n))));
% %view(ceil(90*n*1/length(t)),ceil(90*n*2/length(t)));
% view(3)
% zlim([-1.5 1.5])
% xlim([min(min(x)) max(max(x))])
% ylim([min(min(y)) max(max(y))])
% shading interp
% getframe();
% end

[X,Y] = meshgrid(x,y);
Z = A*cos(kappa*X+kappa*Y-omega*t);
z=exp(i*kappa*X);
for ti=1:length(t)
    z = A*cos(kappa*sqrt(X.^2+Y.^2)-omega*ti);
    %surf(X,Y,Z(:,:,ti))
    %surf(X,Y,z)
    surf(X,Y,real(exp(i*kappa*X)*exp(-i*omega*t(ti))));
    view(3)
    %zlim([-1.5 1.5])
    xlim([min(min(x)) (max(max(x))/10)])
    ylim([min(min(y)) (max(max(y))/10)])
    shading interp
    getframe();
    title_name = sprintf('time = %d s',ti);
    title(title_name)
    pause(0.1)
end

end
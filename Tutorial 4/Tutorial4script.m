%Tutorial 4 script

%% Set up





A = 1;
L = 532e-9;
v = 3e8;

kappa = 2*pi/L;
omega = v*kappa;

t = 0:1e-9:5e-8;
x = v*t;
y = v*t;


waveplot_2D(A,kappa,omega,x,y,t)
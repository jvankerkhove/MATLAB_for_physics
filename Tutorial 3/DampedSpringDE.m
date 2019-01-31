function dx = DampedSpringDE(t,x)
    dx = zeros(2,1);
    k = 1;
    b=0.2;
    dx(1) = x(2);
    dx(2) = -b*x(2)-k*x(1);

end
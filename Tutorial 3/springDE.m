function dx = springDE(t,x)
    dx = zeros(2,1);
    k = 1;
    dx(1) = x(2);
    dx(2) = -k*x(1);

end
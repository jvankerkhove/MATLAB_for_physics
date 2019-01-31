function dx = DampedHO(x,t)

    dxdt = v1;
    dvdt = -a*x-b*v1;

    deriv = [dxdt;dvdt];

end
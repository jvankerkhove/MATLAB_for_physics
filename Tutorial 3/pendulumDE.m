function dy = pendulumDE(t,y)
    %initialize output derivatives
    dy = zeros(2,1);
    %omega^2 = g/l
    omega = 1;
    %Set first derivative
    dy(1) = y(2);
    %Set second derivative term (in terms of first derivative)
    dy(2) = -omega^2*y(1);

end
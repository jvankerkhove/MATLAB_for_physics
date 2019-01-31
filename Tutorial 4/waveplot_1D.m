function [] = waveplot_1D(A,kappa,omega,x,t)



for ti=1:length(t)
    y = A*cos(kappa*x(ti) + omega*ti);
    hold on
    axis tight
    plot(x(ti),y,'+')
    title_name = sprintf('time = %d s',ti);
    title(title_name)
    pause(0.1)

end







end
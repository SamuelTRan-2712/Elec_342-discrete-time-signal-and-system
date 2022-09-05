periods = input('enter the number of periods: ');
step_size = input('enter the step size that wish to use: ');

global omega;
omega = [-(periods)*pi: step_size: (periods)*pi];

for index = 1:5;
    sampling_rate = input('please enter the sampling rate: ');
    N = floor(2* sampling_rate);
    k = [0: 1: 2*N];
    x = 0.5*sin(2*pi/N * k) + 0.33* sin(4*pi/N*k);
    subplot(2,1,1);
    stem (k,x);
    xlabel('k');
    ylabel('x[k]');
    title ('discrete signal x[k]');
    my_fft = fft(x,k);
    subplot (2,1,2);
    polarplot(omega, abs(my_fft));
    title ('polar coordinates');
end;    
    

%sampling function
function fourier = fft(x,k)
global omega;

for index = 1: length(omega)
    sum = 0;
    for p = 1: length(x)
        sum = sum + x(p).* exp(-1*j.* omega(index).* p);
    end;
    output(index) = sum;
end;     
    
fourier = output;
end

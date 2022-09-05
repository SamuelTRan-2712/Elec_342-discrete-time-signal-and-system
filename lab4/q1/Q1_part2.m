sampling_rate = input('enter the value for sampling rate: ');
step_size = input('enter the step size that wish to use: ');
N = floor(2* sampling_rate);

global omega;

for index = 1:5
   
    window_size = input("please enter the window size:" );
    k = [0: window_size * N - 1];
    omega =  [ -(window_size) * pi : 0.05 : pi*(window_size) ];
    x = sin(2 * pi / N * k);
    my_fft = fft(x,k);
    
    subplot(2,1,1);
    stem (k,x);
    xlabel('k');
    ylabel('x[k]');
    title ('discrete signal x[k]');
    my_fft = fft(x,k);
    subplot (2,1,2);
    plot(omega, abs(my_fft));
    xlabel('W');
    ylabel('X(W)');
    title ('DTFT of x[k]');
end

function fourier = fft(x,k)
global omega;

for index = 1: length(omega)
    sum = 0;
    for p = 1: length(k)
        sum = sum + x(p).* exp(-1*j.* omega(index).* k(p));
    end;
    output(index) = sum;
end;     
    
fourier = output;
end
N=6;
x=[1;0;1;1;0;1];
L=length(x);
X=(1./N)*fft(x,N);
% for i=0:N
%  X[i]=x[i]*exp(-j*2*n*k*pi/N);
% end
t=1:(length(x)-1);

figure(1);
subplot(3,1,1);
stem(0:L-1,X);
title('X[k]: IDFT Signal');
ylabel('X[k]');
xlabel('k');

subplot(3,1,2);
stem(0:N-1,X);
title('Magnitude Spectrum');
ylabel('|X[k]|');
xlabel('k');

subplot(3,1,3);
stem(0:N-1,phase(X));
title('Phase Spectrum');
xlabel('k');
ylabel('\angle{x[k]}');

% IDFT of the given signal

N2=length(X);
x=(N2*0.1)*ifft(X,N2);

% for i=0:N
%  x[i]=X[i]*exp(j*2*n*k*pi/N);
% end

t1=1:(length(X)-1);

figure(2);
subplot(3,1,1);
stem(0:N2-1,x);
title('X[n]: DFT Signal');
ylabel('X[k]');
xlabel('k');

subplot(3,1,2);
stem(0:N2-1,real(x));
title('Real part of signal');
ylabel('real{x[n]}');
xlabel('n');

subplot(3,1,3);
stem(0:N2-1,imag(x));
title('Imaginary Part');
xlabel('n');
ylabel('imag{x[k]}');




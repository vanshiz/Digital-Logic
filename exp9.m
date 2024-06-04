%Write Matlab programs to compute Discrete Fourier Transform (DFT) and Inverse Discrete Fourier Transform (IDFT) for the spectral analysis of signals.


% To compute N pt. DFT of finite duration signal
N=4;
x=[1,2,3,2];
L=length(x);
X=(1./N).*fft(x,N);
subplot(3,1,1),stem(0:L-1,x)
title('x[n]')
xlabel('n')
ylabel('x[n]')
subplot(3,1,2),stem(0:N-1,abs(X));
title('Magnitude Spectrum')
xlabel('k')
ylabel('|X[k]|')
subplot(3,1,3),stem(0:N-1,phase(X))
title('Phase Spectrum')
xlabel('k')
ylabel('\angle X[k]')
% To compute N pt. IDFT
N=4;
X=[4,2,0,4];
x=(N).*ifft(X,N);
subplot(3,1,1),stem(0:length(X)-1,X)
title('X[k]')
xlabel('k')
ylabel('X[k]')
subplot(3,1,2),stem(0:N-1,real(x));
title('Real of x[n]')
xlabel('n')
ylabel('Re{x[n]}')
subplot(3,1,3),stem(0:N-1,imag(x))
title('Phase Spectrum')
xlabel('n')
ylabel('Imag{x[n]}')

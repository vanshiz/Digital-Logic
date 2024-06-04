% Write Matlab program to study the sampling and reconstruction process.
fprintf('Demonstration of sampling and reconstruction signal');
mag=2;
fm=100;
tm=1/fm;
n_cycles=4;
t_time=n_cycles*tm;
t=0:0.001:t_time;
x=mag*sin(2*pi*fm*t);
subplot(3,1,1);
plot(t,x);
title('Message signal')
xlabel('t (sec)');
ylabel('x(t)');
%Sampling
num_points=1000;
T=1/num_points;
ts = 0:T:t_time;
ns = 0:length(ts)-1;
x_samples = mag*sin(2*pi*fm/num_points*ns);
subplot(3,1,2);
xaxis=0:1:(length(x_samples)-1);
stem(xaxis,x_samples,'filled','r');
title('Sampling signal')
xlabel('n^{th} sample');
ylabel('x_s(n)');
%Reconstruction
x_recon=0;
for k=0:length(x_samples)-1
l=k:-1:-(length(t)-1)+k;
x_recon=x_recon+x_samples(k+1)*sinc(l);
end
subplot(3,1,3);
plot(t,x_recon);
title('Reconstruction signal')
xlabel('t (sec)');
ylabel('x_r(t)');

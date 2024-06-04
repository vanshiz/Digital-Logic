%Write Matlab program to study the quantization process of sinusoid signals.

disp('Generate 0.02-second sine wave of 100 Hz');
amp= input('Enter the amplitude of sinusoidal signal = ');
fs = input('Enter the Sampling Frequency = ');
T = 1/fs; % Sampling interval
t = 0:T:0.02; % Duration of 0.02 second
sig1=amp* sin (2*pi*100.*t);
min_sig=min(sig1);
max_sig=max(sig1);
sig = amp* sin (2*pi*100.*t); % Generate the sinusoid
nbits= input('enter the number of bits quantizer = ');
quint_level=2^nbits; % midrise type quantizer
s=(max_sig-min_sig)/quint_level;
for j=min_sig:s:max_sig
sig(sig<=j+s & sig>=j)=((2*j)+s)/2;
end
figure
stem(sig);
title('Plot of Sampled Signal')
xlabel('Samples Number')
ylabel('Samples')
figure
qun_error=sig1-sig;
plot(qun_error);
title('Plot of Quantization Error')
xlabel('Samples Number')
ylabel('Quantization Error')

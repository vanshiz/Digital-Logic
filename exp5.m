% (a) Realization of SR Latch using using Matlab.
% (b) Realization of D flip flop using using Matlab.
% (c) Realization of JK flip flop using using Matlab

S = [0 0 1 1 0 0 1 1];
R = [0 1 0 1 0 1 0 1];
Q = [0,0,0,0,1,1,1,1];
Qc = zeros(1, length(S));
for i = 1:length(S)
if S(i) == 0 && R(i) == 0
Qc(i) = Q(i);
elseif S(i) == 0 && R(i) == 1
Qc(i) = 0;
elseif S(i) == 1 && R(i) == 0
Qc(i) = 1;
elseif S(i) == 1 && R(i) == 1
Qc(i) = NaN;
end
end
disp('SR FlipFlop:');
disp('---------------------');
disp('Q S R Q(t+1) ');
disp('---------------------');
for i = 1:length(S)
fprintf('%d %d %d %d \n', Q(i), S(i), R(i), Qc(i));
end
disp('-------------------------');

Qn=[0,0,0,0,1,1,1,1];
fprintf('\nD Flip-Flop\n');
fprintf('-------------\n');
Q2=[0,0,1,1];
D=[0,1,0,1];
Qx=D;
Result2=[Q2,
D,
Qx];
fprintf('Qn D Qn+1\n');
fprintf('-----------\n');
fprintf('%d %d %d\n',Result2);

fprintf('JK flip-flop\n');
fprintf('--------------\n');
fprintf('Qn J K Qn+1\n');
fprintf('--------------\n');
J=[0,0,1,1,0,0,1,1];
K=[0,1,0,1,0,1,0,1];
Qy=((J)&(~Qn))|((~K)&Qn);
Result3=[Qn,
J,
K,
Qy];
fprintf('%d %d %d %d\n',Result3);

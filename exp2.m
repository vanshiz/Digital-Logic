% Design and simulate half adder, half subtractor, full adder, and full subtractor using Matlab

clear all;
A=[0,0,1,1];
B=[0,1,0,1];
%HALF ADDER
Sum=xor(A,B);
Carry=A&B;
Result=[A,
B,
Sum,
Carry];
fprintf('Half Adder\n');
fprintf('--------\n');
fprintf('A B S C\n');
fprintf('--------\n');
fprintf('%d %d %d %d\n',Result);
fprintf('--------\n\n');

%HALF SUBTRACTOR
clear all;
A=[0,0,1,1];
B=[0,1,0,1];
AxorB=xor(A,B);
BandAnot=B & ~A;
ResultDiff=[A,
B,
AxorB,
BandAnot];
fprintf('Half Subtractor\n');
fprintf('--------\n');
fprintf('A B D B\n');
fprintf('--------\n');
fprintf('%d %d %d %d\n',ResultDiff);
fprintf('--------\n\n');

clear all;
%full subtractor
A=[0,0,0,0,1,1,1,1];
B=[0,0,1,1,0,0,1,1];
C=[0,1,0,1,0,1,0,1]; % Borrow input
AxorB=xor(A,B);
BandAnot=B&~A;
CxorAxorB=xor(C,AxorB); %d
CandAxorBnot=C&~AxorB;
Bout=CandAxorBnot | BandAnot;
Result=[A,
B,
C,
CxorAxorB,
Bout];
fprintf('A B Bin D Bout\n');
fprintf('-------------\n');
fprintf('%d %d %d %d %d\n',Result);
fprintf('-------------\n');


%full Adder
A=[0,0,0,0,1,1,1,1];
B=[0,0,1,1,0,0,1,1];
Cin=[0,1,0,1,0,1,0,1]; % Borrow input
X1 = xor(A,B); % Intermediate signal
S = xor(X1,Cin);
Y1= A & B; % Intermediate signal
Z1= X1 &Cin; % Intermediate signal
Cout = Z1 | Y1;
Result=[A,
B,
Cin,
S,
Cout];
fprintf('A B Cin S Cout\n');
fprintf('---------------\n');
fprintf('%d %d %d %d %d\n',Result);
fprintf('---------------\n');
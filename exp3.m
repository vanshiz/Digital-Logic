% Design and simulation of 2:4 decoder and 3:8 decoder using Matlab.

a=[0,0,1,1];
b=[0,1,0,1];
q0=(~a)&(~b);
q1=(~a)&(b);
q2=(a)&(~b);
q3=(a)&(b);
result=[a,
b,
q0,
q1,
q2,
q3];
disp '2X4 Decoder';
fprintf('A B Q0 Q1 Q2 Q3\n');
fprintf('%d %d %d %d %d %d\n',result)


a=[0,0,0,0,1,1,1,1];
b=[0,0,1,1,0,0,1,1];
c=[0,1,0,1,0,1,0,1];
Q0=(~a)&(~b)&(~c);
Q1=(~a)&(~b)&(c);
Q2=(~a)&(b)&(~c);
Q3=(~a)&(b)&(c);
Q4=(a)&(~b)&(~c);
Q5=(a)&(~b)&(c);
Q6=(a)&(b)&(~c);
Q7=(a)&(b)&(c);
result=[
a,
b,
c,
Q0,
Q1,
Q2,
Q3,
Q4,
Q5,
Q6,
Q7
];
disp '3X8 Decoder';
fprintf('A B C Q0 Q1 Q2 Q3 Q4 Q5 Q6 Q7\n');
fprintf('%d %d %d %d %d %d %d %d %d %d %d\n',result);
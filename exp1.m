%  Verification of truth tables of basic logic gates and their realization using universal logic gates using Matlab

fprintf('Program for verification of basic logic gate\n');
fprintf('\n\n');
a=[0;0;1;1];
b=[0;1;0;1];
c=a&b;
d=a|b;
x=[0;1];
e=~x;
f=~(a&b);
g=~(a|b);
fprintf('Table for AND gate\n');
andgate=[a b c];
fprintf(' ----------------\n');
fprintf(' A B A&B\n');
fprintf(' ----------------\n');
disp(andgate);
fprintf('Table for OR gate\n');
orgate=[a b d];
fprintf(' ----------------\n');
fprintf(' A B A|B\n');
fprintf(' ----------------\n');
disp(orgate);
fprintf('Table for NOR gate\n');
norgate=[x e];
fprintf(' ----------------\n');
fprintf(' A ~A\n');
fprintf(' ----------------\n');
disp(norgate);
fprintf('Table for NAND gate\n');
nandgate=[a b f];
fprintf(' ----------------\n');
fprintf(' A B ~(A&B)\n');
fprintf(' ----------------\n');
disp(nandgate);
fprintf('Table for NOR gate\n');
nandgate=[a b g];
fprintf(' ----------------\n');
fprintf(' A B ~(A|B)\n');
fprintf(' ----------------\n');
disp(nandgate);
% Create basic gates from universal gates
a = input('Array of input A in terms of [0,1] with size 4 x 1');
%enter the logical values of the input A
b = input('Array of input b in terms of [0,1] with size 4 x 1');
%enter the logical values of the input A
c= input('Array of input b in terms of [0,1] with size 2 x 1');
k= nand1(a,b);
x_nand_and= nand1(k,k); %AND via NAND
a_bar = nand1(a,a); %Inverter using NAND
b_bar = nand1(b,b);
x_nand_or= nand1(a_bar,b_bar); % OR gate via NAND
not_via_nand = nand1(c, c); % NOT via NAND
l=nor1(a,b);
x_nor_or= nor1(l,l); %OR gate via Nor
a_bar_nor = nor1(a,a); %Inverter using Nor
b_bar_nor = nor1(b,b);
x_nor_and= nor1(a_bar,b_bar); % AND gate via Nor
not_via_nor = nor1(c, c); % NOT via NOR
fprintf('Printing basic gates from NAND and NOR\n');
%AND via nand
fprintf('\n\n');
fprintf('AND via NAND\n\n');
fprintf('----------------------\n')
fprintf('A\t B\t A&B\t\n');
fprintf('----------------------\n')
for n= 1:length(a)
fprintf ('%d\t %d\t %d\n',a(n),b(n),x_nand_and(n));
end
%or via nand
fprintf('\n\n');
fprintf('OR via NAND\n\n');
fprintf('----------------------\n')
fprintf('A\t B\t A|B\t\n');
fprintf('----------------------\n')
for n= 1:length(a)
fprintf ('%d\t %d\t %d\n',a(n),b(n),x_nand_or(n));
end
%NOT via nand
fprintf('\n\n');
fprintf('NOT via NAND\n\n');
fprintf('----------------------\n')
fprintf('C\t ~(C)\n');
fprintf('----------------------\n');
for n = 1:length(c)
fprintf('%d\t %d\n', c(n), not_via_nand(n));
end
%AND via nor
fprintf('\n\n');
fprintf('AND via NOR\n\n');
fprintf('----------------------\n')
fprintf('A\t B\t A&B\t\n');
fprintf('----------------------\n')
for n= 1:length(a)
fprintf ('%d\t %d\t %d\n',a(n),b(n),x_nor_and(n));
end
%OR via nor
fprintf('\n\n');
fprintf('OR via NOR\n\n');
fprintf('----------------------\n')
fprintf('A\t B\t A&B\t\n');
fprintf('----------------------\n')
for n= 1:length(a)
fprintf ('%d\t %d\t %d\n',a(n),b(n),x_nor_or(n));
end
%NOT via nor
fprintf('\n\n');
fprintf('NOT via NOR\n\n');
fprintf('----------------------\n')
fprintf('C\t ~C\t\n');
fprintf('----------------------\n')
for n= 1:length(c)
fprintf ('%d\t %d\t\n',c(n),not_via_nor(n));
end
function Z = nand1(X,Y)
k= X & Y;
Z= ~k;
end
function Z = nor1(X,Y)
k= X | Y;
Z= ~k;
end

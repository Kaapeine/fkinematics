disp('This program takes a D-H parameter table as input and outputs whatever transform you want')
%%%%%%%%%
I = input('*\n*\n*\nEnter the number of joint axes: ')
dh = zeros(I, 4);
fprintf('Vectors are to be entered as [alpha a d theta] \n*\n*') 
for j = 1:I
    fprintf('\nEnter the values of joint axis %d: ', j)
    dh(j, :) = input('\n');
end

Q = input('Enter the joint axes for which you want the transform as [a b]: ')
ans = eye(4,4);
a = Q(1)+1;
b = Q(2);
for j = a:b
    mat = getmatrix(dh(j,:)); % The +1 term is so that the transform from the previous axis isn't counted
    ans = ans * mat;
end







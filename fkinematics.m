disp('This program takes a D-H parameter table as input and outputs whatever transform you want')
%%%%%%%%%
I = input('*\n*\n*\nEnter the number of joint axes: ')
dh = zeros(I, 4);
fprintf('Vectors are to be entered as [alpha a d theta] \nEnter "1" if it is a joint variable, and "0" if it is zero\n*\n*') 
for j = 1:I
    fprintf('\nEnter the values of joint axis %d: ', j)
    dh(j, :) = input('\n');
end

% Initializing symbolic variables for the joint variables
theta = sym('theta', [1 I]);
d = sym('d', [1 I]);
a = sym('a', [1 I]);

% Calling the function which outputs the expression for the transform from
% the {0} frame to the {I}th frame
exp = symexp(dh, theta, d, a, I);

% Assigning the values to the symbolic variables
for j = 1:I
    % For a
    if dh(j,2) == '0'
        a(j)=0;
    end
    % For d
    if dh(j,3) == '0'
        d(j)=0;
    end
    % For theta
    if dh(j,4) == '0'
        theta(j)=0;
    end
end

exp

% If all the values in the table are known, then use the following code to
% obtain the transforms you want

% Q = input('Enter the joint axes for which you want the transform as [a b]: ')
% ans = eye(4,4);
% a = Q(1)+1;
% b = Q(2);
% for j = a:b
%     mat = getmatrix(dh(j,:)); % The +1 term is so that the transform from the previous axis isn't counted
%     ans = ans * mat;
% end







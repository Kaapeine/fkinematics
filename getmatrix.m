function [T] = getmatrix(row,j)
% Takes each row of the DH parameters and outputs a transform matrix 
%from(i-1)th link to the ith link
T = zeros(4,4);
alpha = row(1);
a = row(2);
d = row(3);
theta = row(4);

% j1 = num2str(j);
% syms alpha theta a d;

T = [cos(theta) -sin(theta) 0 a; 
    sin(theta)*cos(alpha) cos(theta)*cos(alpha) -sin(alpha) -sin(alpha)*d;
    sin(theta)*sin(alpha) cos(theta)*sin(alpha) cos(alpha) cos(alpha)*d;
    0 0 0 1]
end


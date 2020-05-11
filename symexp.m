function [exp] = symexp(dh, theta, d, a, I)
% A function that outputs the expression for forward kinetmatics
% This assumes that all the link parameters are provided

exp = eye(4,4);

for j = 1:I
     row = [dh(j,1) a(j) d(j) theta(j)];
     mat = getmatrix(row); % The +1 term is so that the transform from the previous axis isn't counted
     exp = exp * mat;
end

end


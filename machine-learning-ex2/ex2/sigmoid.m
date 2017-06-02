function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

if length(z) == 0             % z is scalar
    g = 1.0 / (1.0 + e^(-z));
else size(z)(1) > 1        % z is vector or matrix
    temp = -1 .* z;
    temp = e .^ temp;
    temp = 1.0 .+ temp;
    g = 1.0 ./ temp;
end



% =============================================================

end

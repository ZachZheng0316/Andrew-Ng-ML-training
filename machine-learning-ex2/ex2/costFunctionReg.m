function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
thetaTemp = theta(2:length(theta), :); %get theta(1, n)
predic1 = zeros(size(y));
predic2 = zeros(size(y));
temp1 = zeros(size(y));
temp2 = zeros(size(y));

predic1 = X * theta;
predic2 = sigmoid(predic1); %predic2 = h
temp1 = log(predic2);    %log(h)
temp2 = log(1 - predic2);%log(1-h)
J = (-1.0/m) * (y' * temp1 + (1 - y')*temp2) + (lambda/(2*m))*thetaTemp'*thetaTemp;
grad = (1.0/m) * X' * (predic2 - y);
for i = 2:length(theta)
    grad(i) = grad(i) + (lambda/m)*theta(i);
end







% =============================================================

end

function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
tmp = X*theta - y;
tmp = tmp.*tmp;
tmp = sum(sum(tmp));
hello = theta;
hello(1,1) = 0;
J = (tmp + sum(sum(lambda*(hello.*hello))))/2/m;

tmp2 = lambda/m*theta;
tmp2(1,1) = 0;
grad = (X'*(X*theta-y))/m + tmp2;








% =========================================================================

grad = grad(:);

end

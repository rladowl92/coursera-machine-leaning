function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

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
%
% Note: grad should have the same dimensions as theta
%

hypothesis = sigmoid(X*theta);
zero_y_cost = log(hypothesis).*-y;
one_y_cost = log(1-hypothesis).*(1-y);
J = sum(zero_y_cost - one_y_cost)/m;

derivation = (X'*(hypothesis-y))/m;
grad=derivation;
%gradient 는 경사만을 의미하는 것에 주의. theta-derivation 은 gradient decent. 가 됨.

% =============================================================

end

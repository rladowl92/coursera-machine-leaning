function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

hypothesis = X*theta;
J = 1/(2*m)*sum((hypothesis - y).^2); 

# 주어진 X*theta 형태가 음. 확실히 확인하고 좋을거같은데 식 그대로 옮기기 힘듦.
# 행렬을 그려보니, 수식으로 나타내려면 X*theta 순서가 맞음.


% =========================================================================

end

function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
n = size(theta, 1);
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
% for i = 1:m
%     J = J + (-y(i)*log(sigmoid(theta'*X(i,:)'))-(1-y(i))*log(1-sigmoid(theta'*X(i,:)')));
% end
% J = J/m;
% for j = 2:n
%     J = J + (theta(j)^2)*lambda/2/m;
% end
% for i = 1:m
%     grad = grad + ((sigmoid(theta'*X(i,:)')-y(i))*X(i,:)');
% end
% grad = grad/m + lambda/m*[0; theta(2:end)];

J = sum(-y.*log(sigmoid(theta'*X'))'-(1-y).*log(1-sigmoid(theta'*X'))')/m ...
    + lambda/2/m*sum(theta(2:end).^2);

grad = ((sigmoid(theta'*X')'-y)'*X)'/m ...
    + lambda/m*[0; theta(2:end)];




% =============================================================

end

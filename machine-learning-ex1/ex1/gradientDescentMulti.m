function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
    
%     t1 = theta(1) - alpha * sum((X * theta - y) .* X(:,1)) / m; 
%     t2 = theta(2) - alpha * sum((X * theta - y) .* X(:,2)) / m; 
%     theta(1) = t1;
%     theta(2) = t2;
    
    n = length(X(1,:));  %计算特征值的个数，即X的列数
    
    for i=1:n
        t(i) = theta(i) - alpha * sum((X * theta - y) .* X(:,i)) / m; 
    end
    
    for i=1:n
       theta(i)=t(i);
    end
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end

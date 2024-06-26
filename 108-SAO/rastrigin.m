function varargout = rastrigin(X)
% Rastrigin function
%
    % if no input is given, return dimensions, bounds and minimum
    if (nargin == 0)
        varargout{1} = 2;  % # dims
        varargout{2} = [-5.12, -5.12]; % LB
        varargout{3} = [+5.12, +5.12]; % UB
        varargout{4} = [0, 0]; % solution
        varargout{5} = 0; % function value at solution
        
    % otherwise, output function value
    else

        % keep all values in the search domain
        X(X < -5.12) = inf;   X(X > 5.12) = inf;
        
        % split input vector X into x1, x2
        if size(X, 1) == 2
            x1 = X(1, :);        x2 = X(2, :);
        else
            x1 = X(:, 1);        x2 = X(:, 2);
        end
        
        % output function value
        varargout{1} = x1.^2 + x2.^2 - 10*cos(2*pi*x1) - 10*cos(2*pi*x2) + 20;
        
    end
     
end
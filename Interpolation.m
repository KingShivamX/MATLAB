% Lagrange Interpolation

% To interpolate Y(X) given a set of points (X1, Y1), (X2, Y2),..(Xn, Yn)
% The Lagrange polynomial is used: Y(X) = sum(Yi * Li), where
% Li = product((X - Xj) / (Xi - Xj)) for j ~= i


X = input('Enter the values of X vector: ');  
Y = input('Enter the corresponding values of Y vector: '); 

if length(X) ~= length(Y)
    error('The lengths of X and Y must be the same.');
end

n = length(X); 
x = input('Enter the value of X to interpolate: ');  
y_interp = 0; 

for i = 1:n
    Li = 1;
    for j = 1:n
        if j ~= i
            Li = Li * (x - X(j)) / (X(i) - X(j));  
        end
    end
    y_interp = y_interp + Y(i) * Li; 
end

fprintf('The interpolated value at X = %.2f is Y = %.2f\n', x, y_interp);


% Newton's Forward and Backward Difference Interpolation

% Enter the values of X and Y
X = input('Enter the values of X vector: ');
Y = input('Enter the corresponding values of Y vector: ');

if length(X) ~= length(Y)
    error('The lengths of X and Y must be the same.');
end

n = length(X);

%% Forward Difference Table
diff_table_forward = zeros(n, n);
diff_table_forward(:,1) = Y'; % First column is Y values

% Fill the Forward Difference Table
for j = 2:n
    for i = 1:n-j+1
        diff_table_forward(i,j) = diff_table_forward(i+1,j-1) - diff_table_forward(i,j-1);
    end
end

% Display the Forward Difference Table
disp('Forward Difference Table:');
disp(diff_table_forward);

% Input the value of x to interpolate using forward difference
x = input('Enter the value of X to interpolate using forward difference: ');

% Newton's Forward Difference Interpolation Formula
h = X(2) - X(1); % Step size
p = (x - X(1)) / h; % (x - x0) / h
y_interp_forward = Y(1); % Initial interpolated value (Y0)

% Calculate interpolation using Newton's forward difference formula
product_p = 1;
for k = 1:n-1
    product_p = product_p * (p - (k-1)); % p * (p-1) * (p-2) ...
    y_interp_forward = y_interp_forward + (product_p * diff_table_forward(1,k+1)) / factorial(k);
end

fprintf('The interpolated value at X = %.2f using Forward Difference is Y = %.4f\n', x, y_interp_forward);


%% Backward Difference Table
diff_table_backward = zeros(n, n);
diff_table_backward(:,1) = Y'; % First column is Y values

% Fill the Backward Difference Table
for j = 2:n
    for i = n:-1:j
        diff_table_backward(i,j) = diff_table_backward(i,j-1) - diff_table_backward(i-1,j-1);
    end
end

% Display the Backward Difference Table
disp('Backward Difference Table:');
disp(diff_table_backward);

% Input the value of x to interpolate using backward difference
x_back = input('Enter the value of X to interpolate using backward difference: ');

% Newton's Backward Difference Interpolation Formula
p_back = (x_back - X(n)) / h; % (x - xn) / h
y_interp_backward = Y(n); % Initial interpolated value (Yn)

% Calculate interpolation using Newton's backward difference formula
product_p_back = 1;
for k = 1:n-1
    product_p_back = product_p_back * (p_back + (k-1)); % p * (p+1) * (p+2) ...
    y_interp_backward = y_interp_backward + (product_p_back * diff_table_backward(n,k+1)) / factorial(k);
end

fprintf('The interpolated value at X = %.2f using Backward Difference is Y = %.4f\n', x_back, y_interp_backward);

% Trapezoidal Rule
x = input('Enter the values of x = ');  % Input x values
y = input('Enter the values of y = ');  % Input corresponding y values

n = length(x);  % Determine the number of intervals
h = x(2) - x(1);  % Calculate the step size h

% Initialize the sum for intermediate y values
A = 0;

% Sum intermediate y values
for i = 2:n-1
    A = A + y(i);
end

% Apply the Trapezoidal Rule formula
I = (h / 2) * (y(1) + y(n) + 2 * A);

disp('The Value of I is : ');
disp(I);  % Display the result

%%
% Simpson's 1/3 Rule
x = input('Enter the values of x = ');  % Input x values
y = input('Enter the values of y = ');  % Input corresponding y values
n = length(x);  % Determine number of intervals

if mod(n-1, 2) == 0  % Check if (n-1) is even, condition for Simpson's 1/3 rule
    h = x(2) - x(1);  % Calculate step size h
    A_odd = 0;  % To sum odd-indexed y values
    A_even = 0;  % To sum even-indexed y values
    
    % Sum odd-indexed y values (3rd, 5th, ..., n-1)
    for i = 3:2:n-1
        A_odd = A_odd + y(i);
    end
    
    % Sum even-indexed y values (2nd, 4th, ..., n-2)
    for i = 2:2:n-1
        A_even = A_even + y(i);
    end
    
    % Apply Simpson's 1/3 Rule formula
    I = (h/3) * (y(1) + y(n) + 4*A_even + 2*A_odd);
    disp('The value of I =');
    disp(I);  % Display result
else
    disp('Simpson''s 1/3 rule is not applicable, n-1 must be even.');
end


%%
%% 3. Simpson's 3/8 Rule
x = input("Enter the values of x = ");  % Input x values
y = input("Enter the values of y = ");  % Input corresponding y values

h = x(2) - x(1);  % Calculate step size h
n = length(x);  % Determine number of intervals

a = 0;  % Sum for y values that are a multiple of 3
b = 0;  % Sum for other y values

if mod(n-1, 3) == 0  % Check if (n-1) is a multiple of 3
    for i = 2:n-1
        if mod(i-1, 3) == 0
            a = a + y(i);  % Add values at intervals of 3
        else
            b = b + y(i);  % Add other intermediate y values
        end
    end
    
    i = (3*h/8) * (y(1) + y(n) + 3*b + 2*a);  % Apply Simpson's 3/8 rule formula
    disp("I = ");
    disp(i);  % Display result
else
    disp("Simpson's 3/8 rule is not applicable.");
end

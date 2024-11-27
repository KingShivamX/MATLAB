% 1. Trapezoidal Rule
x = [0:10:90]; % Enter the values of x directly
y = [30 31.63 33.34 35.47 37.75 40.33 43.25 46.69 50.67 54.23]; % Enter the values of y directly
h = x(2) - x(1); % Step size
n = length(x); % Number of points
A = 0; % Initialize the area sum

for i = 2:n-1
    A = A + y(i);
end
I = h/2 * (y(1) + y(n) + 2 * A); % Trapezoidal rule formula
disp("The Value of I (Trapezoidal Rule) is : ");
disp(I);

%% Simpson's 1/3 Rule
x = [0:10:90]; % Direct input for x
y = [30 31.63 33.34 35.47 37.75 40.33 43.25 46.69 50.67 54.23]; % Direct input for y
n = length(x);

if mod(n-1, 2) == 0
    h = x(2) - x(1); % Step size
    A_odd = 0; % Initialize odd index sum
    A_even = 0; % Initialize even index sum

    for i = 3:2:n-1
        A_odd = A_odd + y(i);
    end
    for i = 2:2:n-1
        A_even = A_even + y(i);
    end

    I = (h/3) * (y(1) + y(n) + 4 * A_odd + 2 * A_even); % Simpson's 1/3 rule formula
    disp('The value of I (Simpson''s 1/3 Rule) is:');
    disp(I);
else
    disp('Simpson''s 1/3 rule is not applicable, n-1 must be even.');
end

%% Simpson's 3/8 Rule (n-1 must be multiple of 3)
x = [0:10:90]; % Direct input for x
y = [30 31.63 33.34 35.47 37.75 40.33 43.25 46.69 50.67 54.23]; % Direct input for y
h = x(2) - x(1); % Step size
n = length(x); % Number of points

a = 0;
b = 0;

if mod(n-1, 3) == 0
    for i = 2:n-1
        if mod(i-1, 3) == 0
            a = a + y(i);
        else
            b = b + y(i);
        end
    end
    I = (3 * h / 8) * (y(1) + y(n) + 3 * b + 2 * a); % Simpson's 3/8 rule formula
    disp("The Value of I (Simpson's 3/8 Rule) is: ");
    disp(I);
else
    disp("Simpson's 3/8 rule is not applicable, n-1 must be multiple of 3.");
end

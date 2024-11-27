% Find Cubic Polynomial for the following data
% x -0.2  -0.1  0  0.1  0.2
% y 1.2214 1.1052 1 0.9048 0.8187
% also create a graph that shows given points and ploy curve on same set of
% areas

% Given data points
x = [-0.2 -0.1 0 0.1 0.2];
y = [1.2214 1.1052 1 0.9048 0.8187];

% Find the cubic polynomial coefficients
p = polyfit(x, y, 3);
plot(x, y, 'k*', 'MarkerSize', 8, 'DisplayName', 'Data Points');
hold on;

X = linspace(min(x), max(x), 100);
Y = polyval(p, X);
plot(X, Y, ":r");
hold off;

% Add labels and title
xlabel('X-axis');
ylabel('Y-axis');
title('Cubic Polynomial Fit to Given Data');
legend('Location', 'best');

%%
% Find Cubic Polynomial for the following data
% x -6 -4 -2 0 2 4 6
% y -0.2 0.8 -1.6 3.5 3.1 4.9 3.9

% Given data points
x = [-6 -4 -2 0 2 4 6];
y = [-0.2 0.8 -1.6 3.5 3.1 4.9 3.9];

% Find the cubic polynomial coefficients
p = polyfit(x, y, 6);
plot(x, y, 'k*', 'MarkerSize', 8, 'DisplayName', 'Data Points');
hold on;

X = linspace(min(x), max(x), 100);
Y = polyval(p, X);
plot(X, Y, ":r");
hold off;

% Add labels and title
xlabel('X-axis');
ylabel('Y-axis');
title('Cubic Polynomial Fit to Given Data');
legend('Location', 'best');

%%
% x 2 4 6 8 10 12 14 16
% y 4.9462, 8.1549, 13.4451, 22.1672, 36.5475, 60.2566, 99.3464, 163.7945

% Given data points
x = [2 4 6 8 10 12 14 16];
y = [4.9462 8.1549 13.4451 22.1672 36.5475 60.2566 99.3464 163.7945];

% Find the cubic polynomial coefficients
p = polyfit(x, log(y), 1);
a = exp(p(2));
b = p(1);
plot(x, y, 'k*', 'MarkerSize', 8, 'DisplayName', 'Data Points');
hold on;

X = linspace(min(x), max(x), 100);
Y = a .* exp(b .* X);
plot(X, Y, ":r");
hold off;

% Add labels and title
xlabel('X-axis');
ylabel('Y-axis');
title('Cubic Polynomial Fit to Given Data');
legend('Location', 'best');

%% write matlab program to find best fitting polynomial 

% x 1 3 5 7 9 11 13
% y 0.7358 0.0996 0.0135 0.0018 0.0003 0.00003 0.000005

% Given data points
x = [1 3 5 7 9 11 13];
y = [0.7358 0.0996 0.0135 0.0018 0.0003 0.00003 0.000005];

% Find the cubic polynomial coefficients
p = polyfit(x, y, 6);

% Plot the data points
plot(x, y, 'k*', 'MarkerSize', 8, 'DisplayName', 'Data Points');
hold on;

% Evaluate the polynomial at a finer grid of points
X = linspace(min(x), max(x), 100);
Y = polyval(p, X);

% Plot the cubic polynomial curve
plot(X, Y, ':r', 'DisplayName', 'Cubic Polynomial Fit');
hold off;

% Add labels and title
xlabel('X-axis');
ylabel('Y-axis');
title('Cubic Polynomial Fit to Given Data');
legend('Location', 'best');
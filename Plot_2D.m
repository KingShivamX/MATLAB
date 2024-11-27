% Find approximate root of equation 3-x = e^(x-1)
% such that -2 <= x <= 2

% Define the x values
x = -2:0.1:2;

% Define the functions
y1 = 3 - x;
y2 = exp(x - 1);

% Plot the functions
figure;
plot(x, y1, 'k', 'LineWidth', 2); % Plot y1 in black
hold on;
plot(x, y2, 'r', 'LineWidth', 2); % Plot y2 in red
hold off;

% Add titles and labels
title('Plot of 3 - x and e^{x - 1}');
xlabel('x');
ylabel('y');
legend('3 - x', 'e^{x - 1}');

%%
% Divide figure window into two equal parts to plot
% 1) y = 3.5^(-0.5x)*cos(6x), -2 <= x <= 5
% 2) z = x^2 + 4*sin(2x) - 1, -4 <= x <= 2

% Define x ranges
x1 = -2:0.1:5; % For function 1
x2 = -4:0.1:2; % For function 2

% Define the functions
y = (3.5 .^ (-0.5 .* x1)) .* cos(6 .* x1);
z = (x2 .^ 2) + 4 .* sin(2 .* x2) - 1;

% Create subplots
figure;

% Plot 1: y = 3.5^(-0.5x)*cos(6x)
subplot(1, 2, 1);
plot(x1, y, 'r'); % Plot in red
xlabel('x - axis');
ylabel('y - axis');
title('y = 3.5^{-0.5x} * cos(6x)');
grid on;

% Plot 2: z = x^2 + 4*sin(2x) - 1
subplot(1, 2, 2);
plot(x2, z, 'b'); % Plot in blue
xlabel('x - axis');
ylabel('y - axis');
title('z = x^2 + 4*sin(2x) - 1');
grid on;


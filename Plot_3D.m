% write matlab program to create 3d line plot of a curve whose equation is
% x= suare root of t into sin 2t, 
% y= suare root of t into cos 2t, 
% z = t/2, 0<= t <=6Pi

% Define the parameter t
t = linspace(0, 6*pi, 1000);

% Compute the coordinates
x = sqrt(t) .* sin(2*t);
y = sqrt(t) .* cos(2*t);
z = t / 2;

% Create a 3D line plot
figure;
plot3(x, y, z, "r" , 'LineWidth', 2);
grid on;

% Label the axes
xlabel('x(t) = \surd{t} * sin(2t)');
ylabel('y(t) = \surd{t} * cos(2t)');
zlabel('z(t) = t/2');

% Title
title('3D Line Plot of the Curve');

%%
x = -2:0.1:2;  
y = -3:0.1:3;  

[p, q] = meshgrid(x, y);  % p and q are matrices containing the grid points
z = 1 ./ (p.^2 + q.^2 + 1);  % z is the function value for each (p, q) pair

figure; 
mesh(p, q, z);  % Generate a mesh plot of the function
surf(p, q, z);  % Generate a surface plot of the function

xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z = 1 / (x^2 + y^2 + 1)');  % Label for Z-axis with the function
title('Mesh and Surface Plot of Z = 1 / (x^2 + y^2 + 1)');

%%

% Define the range for x and y
x = -3:0.1:3;
y = -3:0.1:3;

% Create meshgrid for the 2D domain
[p, q] = meshgrid(x, y);

% Calculate the function z
z = 1.7 .^ (-1.5 .* sqrt(p .^ 2 + q .^ 2)) .* sin(p) .* cos(q ./ 2);

% Plot the mesh
figure;
subplot(1, 2, 1);
mesh(p, q, z);
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title('Mesh Plot');

% Plot the surface
subplot(1, 2, 2); 
surf(p, q, z);  
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title('Surface Plot');

% Overall title for the figure
sgtitle('Mesh and Surface Plot of Z = 1.7^{(-1.5 * \sqrt{x^2 + y^2})} * sin(x) * cos(y/2)');
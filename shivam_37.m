% Lagrange Interpolation

r = 37; % roll no.

X  = [0.8-r, 0.9-r, 1-r, 1.2-r];
Y = [-1.01-2*r, -1.07-2*r, -1-2*r, -0.7-2*r];

if length(X) ~= length(Y) % safety
    error('The lengths of X and Y must be the same.');
end

n = length(X); 
x = 0.7-r;
y = 0;

for i = 1:n
    Li = 1;
    for j = 1:n
        if j ~= i
            Li = Li * (x - X(j)) / (X(i) - X(j));  
        end
    end
    y = y + Y(i) * Li; 
end

disp(y); % y at x=0.7-r;

%% Newton Interpolation

r = 37; % roll no.

X = [1+r, 3+r, 5+r, 7+r, 9+r, 11+r, 13+r];
Y = [0.7358-r, 0.0996-r, 0.0135-r, 0.0018-r, 0.0003-r, 0.00003-r, 0.000005-r];

n = length(X); 
x = 12+r; % it is 49
% and X is ...48 50; so using Backward interpolation

D = zeros(n, n);
D(:,1) = Y';
for j = 2:n
    for i = 1:n-j+1
        D(i,j) = D(i+1, j-1) - D(i, j-1);
    end
end
disp(D); % displaying table

y = Y(n); % last value of y
h = X(2) - X(1);
u = (x - X(n)) / h;
for k = 2:n
    y = y + D(n,k) * u / factorial(k-1);
    u = u * (x - X(n-k+1)) / h;
end

disp(y); % y at x=12+r;


%%

r = 37; % roll no.

X = [0.8-r, 0.9-r, 1-r, 1.2-r]; % x-values for interpolation points
Y = [-1.01-2*r, -1.07-2*r, -1-2*r, -0.7-2*r]; % y-values for interpolation points

if length(X) ~= length(Y) % safety check
    error('The lengths of X and Y must be the same.');
end

n = length(X); % number of points
x = 0.7-r; % x-value where interpolation is evaluated
y = 0; % initialize interpolated y-value

for i = 1:n % loop over each term in Lagrange formula
    Li = 1; % initialize the Lagrange basis polynomial
    for j = 1:n
        if j ~= i
            Li = Li * (x - X(j)) / (X(i) - X(j)); % compute basis polynomial Li
        end
    end
    y = y + Y(i) * Li; % accumulate interpolated y-value
end

disp(y); % display interpolated y at x=0.7-r

%%
r = 37; % roll no.

X = [1+r, 3+r, 5+r, 7+r, 9+r, 11+r, 13+r]; % x-values for interpolation points
Y = [0.7358-r, 0.0996-r, 0.0135-r, 0.0018-r, 0.0003-r, 0.00003-r, 0.000005-r]; % y-values for interpolation points

n = length(X); % number of points
x = 12+r; % x-value where interpolation is evaluated (use backward interpolation)
D = zeros(n, n); % initialize divided difference table
D(:,1) = Y'; % first column is y-values

for j = 2:n % compute divided differences
    for i = 1:n-j+1
        D(i,j) = D(i+1, j-1) - D(i, j-1); % difference calculation
    end
end
disp(D); % display divided difference table

y = Y(n); % initialize interpolated y-value (starting with last y-value)
h = X(2) - X(1); % compute step size
u = (x - X(n)) / h; % parameter for backward interpolation

for k = 2:n % compute each term in the interpolation
    y = y + D(n,k) * u / factorial(k-1); % add term to y
    u = u * (x - X(n-k+1)) / h; % update u for next term
end

disp(y); % display interpolated y at x=12+r

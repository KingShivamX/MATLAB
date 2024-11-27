X = input('Enter the values of X vector: ');  
Y = input('Enter the corresponding values of Y vector: '); 
n = length(X); 
x = input('Enter the value of X to interpolate: ');  

D = zeros(n, n);
D(:,1) = Y';

for j = 2:n
    for i = 1:n-j+1
        D(i,j) = D(i+1, j-1) - D(i, j-1);
    end
end

disp(D);

y = Y(1);
h = X(2) -X(1);
u = (x - X(1))/h;
for k = 2:n
    y = y + D(1,k) * u / factorial(k-1);
    u = u * (x-X(k))/h;
end

disp(y);

%% Backward Difference Interpolation

X = input('Enter the values of X vector: ');  
Y = input('Enter the corresponding values of Y vector: '); 
n = length(X); 
x = input('Enter the value of X to interpolate: ');  

D = zeros(n, n);
D(:,1) = Y';

for j = 2:n
    for i = n:-1:j
        D(i,j) = D(i, j-1) - D(i-1, j-1);
    end
end

disp(D);

y = Y(n);
h = X(2) - X(1);
u = (x - X(n)) / h;
for k = 2:n
    y = y + D(n,k) * u / factorial(k-1);
    u = u * (x - X(n-k+1)) / h;
end

disp(y);
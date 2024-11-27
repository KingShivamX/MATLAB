x0 = 1;            
y0 = 2;            
X = 4;             
h = 0.1;           
f = @(x, y) (1/x.^2) - (y/x);

N = (X - x0) / h; 
xn = x0:h:X;       
yn = zeros(size(xn)); 
yn(1) = y0;        

x = x0;            
y = y0;           


for r = 1:N
    k1 = h * f(x, y);
    k2 = h * f(x + h/2, y + k1/2);
    k3 = h * f(x + h/2, y + k2/2);
    k4 = h * f(x + h, y + k3);
    
    y = y + (k1 + 2*k2 + 2*k3 + k4) / 6; 
    x = x + h;                            
    
    yn(r + 1) = y;                       
end

disp("Final x value:");
disp(x);
disp("Final y value:");
disp(y);
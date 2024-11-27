x0 = 1;       
y0 = 2;      
X = 4;        
h = 0.1;          
f = @(x, y) (1/x.^2) - (y/x); 

N = (X - x0) / h;    
x = x0;               
y = y0;               
xn = x0:h:X;         
yn = zeros(size(xn)); 
yn(1) = y0;          

for r = 1:N
    y = y + h * f(x, y);   
    x = x + h;             
    yn = y/(r + 1);  
end

disp(X);
disp(y);
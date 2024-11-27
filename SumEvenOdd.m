function [SumEven, SumOdd] = SumEvenOdd(num)
SumEven = 0; SumOdd = 0;

for i=2:2:num 
    SumEven = SumEven + i;
end

for i=1:2:num 
    SumOdd = SumOdd + i;
end

fprintf("Sum of Even Numbers: %d\n", SumEven);
fprintf("Sum of Odd Numbers: %d\n", SumOdd);
end

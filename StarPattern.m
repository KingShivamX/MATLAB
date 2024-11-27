function [Star] = StarPattern(num)

for i=1:num
    for j=1:i
        fprintf("*\t");
    end
    fprintf("\n");
end

end
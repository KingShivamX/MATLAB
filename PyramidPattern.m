function [Star] = PyramidPattern(num)
    for i = 1:num
        % Print leading spaces
        for j = 1:(num - i)
            fprintf(' ');
        end
        % Print stars
        for k = 1:(2 * i - 1)
            fprintf('*');
        end
        fprintf('\n');
    end
end

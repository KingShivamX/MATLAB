a1 = [1 0 -1 2;  3 100 21 65]; % matrix

a2 = [10 20 -1 0 0 9 2]; % matrix

a3 = 100:-2:0; % 100 to 0 at interval of 2

a4 = linspace(55, 1, 150)'; % 55 to 1 , 150 elem

a5 = -3 * ones(20, 50); % % 20x50 (-3)

newRows = [7 8 9 10; 11 12 13 14];
a6 = [a1; newRows]; % two extra rows im a1

a7 = a2.^4; % raise all emen of a2 by power 4

oddPositions = 1:2:length(a3); 
a8 = a3;
a8(oddPositions) = -1; % replace odd pos of a3 by -1

a9 = a8(1:2:end); % remove all even position elem from a8

a10 = rank(a6); % rank of matrix a6
%% Assignment - 2
% Write a function called halfsum that takes as input a matrix and computes
% the sum of its elements that are in the diagonal and are to the right of
% it. The diagonal is defined as the set of those elements whose column and
% row indexes are the same. In other words, the functioon adds up the
% element in the uppertriangular part of the martix. The name of the output
% is summa.

function summa = halfsum(A)
[row col] = size(A);
summa = 0;
for ii = 1:row
    for jj = 1:col
        if ii>jj
           A(ii,jj) = 0;
        else
            summa = summa + A(ii,jj);
        end
    end
end 
   
        
%% Assignment - 4
% Write a function called max_sum that takes v, a row vector of numbers,
% and n, a positive integer as inputs.
% The function needs to find the n consecutive elements of v whose sum is the 
% largest possible. In other words, if v is [1 2 3 4 5 4 3 2 1] and n is 3, 
% it will find 4 5 and 4 because their sum of 13 is the largest of any 3 consecutive 
% elements of v. If multiple such sequences exist in v, max_sum returns the first one. 
% The function returns summa, the sum as the first output argument and index, the index of the 
% first element of the n consecutive ones as the second output. If the input
% n is larger than the number of elements of v, the function returns 0 as the sum and -1 as the index. 

function [summa index] = max_sum(v,n)
maxv=0;
ind=-1;
if n>length(v)
    summa=0;
    index=-1;
else
    for i=1:n
        maxv=sum(v(1:n));
        ind=1;
    end
    for j=2:(length(v)-n+1)
        total=0;
        total=sum(v(j:(j+n-1)));
        if total>maxv
            maxv=total;
            ind=j;
        else
            continue;
        end
    end
end
summa = maxv;
index = ind;
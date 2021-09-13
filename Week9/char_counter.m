%% Assignment - 2
% Write a function called char_counter that counts the number of a certain
% character in a text file. The function takes two input arguments, fname, 
% a char vector of the filename and character, the char it counts in the file.
% The function returns charnum, the number of characters found. If the file 
% is not found or character is not a valid char, the function return -1. 

function charnum = char_counter(fname,ch)
fid=fopen(fname,'rt');
if fid<0
    charnum=-1;
    return;
end
oneline = fgets(fid);
str=[oneline];
while ischar(oneline)
    oneline=fgets(fid);
    str=[str oneline];
end
count = 0;
if (ischar(ch))
    for i=1:numel(str)
        if ch==str(i)
            count=count+1;
        else
            continue;
        end
    end
    charnum=count;
else
    charnum = -1;
end
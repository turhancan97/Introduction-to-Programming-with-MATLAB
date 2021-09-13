%% Assignment - 1
% The attached Distances.xlsx file contains a spreadsheed with the pairwise
% distances in miles of the top 100 US cities by population. The first row and first column contain the 
% city names using the following format: city name comma space capitalized 
% state abbreviation, e.g., Nashville, TN. Note that the very first cell of 
% the spresheet, A1, is blank. Write a function called get_distance that accepts 
% two character vector inputs representing the names of two cities. The function 
% returns the distance between them as an output argument called distance. 
% For example, the call get_distance('Seattle, WA','Miami, FL') should return 3723. 
% If one or both of the specified cities are not in the file, the function returns -1.

function distance = get_distance(x,y)
[~,~,raw] = xlsread('Distances.xlsx');
[a b]=size(raw);q=0;w=0;
for i = 2:a
    if strcmp(raw{i,1},x)==1
        q=i;
    end
end
for j = 2:b
    if strcmp(raw{1,j},y)==1
        w=j;
    end
end
if q>1 && w>1
    distance = raw{q,w};
else 
    distance = -1;
end
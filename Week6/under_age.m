%% Assignment - 3
% Write a function called unde_age that takes two positive integer scalar
% arguments:
% 1. age that represent someone's age, and
% 2. limit that represent an age limit
% The function resturns true if the person is younger that the age limit.
% If the second argument, limit is not provided, it defaults to 21. You do
% not need to checkt that the input are positive integer sclars. The name
% of the output argument is too_young

function too_young= under_age(age, limit)
if (nargin<2)
    limit=21;
end
if (age<limit)
    too_young=true;
else
    too_young=false;
end
end
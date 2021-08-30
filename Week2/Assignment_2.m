%% Homework 2 
% Write this code in MATLAB.
% 1. As of early 2018, Usain Bolt holds the world record in the men's 100-meter dash. It is 9.58 seconds. What was his average speed in km/h? 
% Assign the result to a variable called hundred.
% 2. Kenyan Eliud Kipchoge set a new world record for men of 2:01:39 on September 16, 2018. 
% Assign his average speed in km/h to the variable marathon. The marathon distance is 42.195 kilometers.

%Converting distance in kilometers
distance1 = 100/1000; 
%Converting time in hours
time1 = 9.58/3600;    
%Calculating speed
hundred = distance1 / time1 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
distance2 = 42.195;
%Calculating and Converting time in hours
time2 = (121*60+39)/3600;
%Calculating speed
marathon = distance2 / time2
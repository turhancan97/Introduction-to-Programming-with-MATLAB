# Welcome to MATLAB!

## Introduction

You can find a lot of introductory MATLAB code in this repo.
 
## APPLICATIONS
### Lesson - 1
**Assignment- 1**

We borrowed $1000 at a 10% annual interest rate. If we did not make a payment for two years, and assuming there is no penalty for non-payment, how much do we owe now? (Compund interest)
```matlab
x=1000;
y=0.1;
t=2;
debt = x*(1+y)^t;
debt
```
**Assignment- 2**

 1. As of early 2018, Usain Bolt holds the world record in the men's 100-meter dash. It is 9.58 seconds. What was his average speed in km/h?  Assign the result to a variable called hundred.
 2. Kenyan Eliud Kipchoge set a new world record for men of 2:01:39 on September 16, 2018. Assign his average speed in km/h to the variable marathon. The marathon distance is 42.195 kilometers.
```matlab
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
```



%% Assignment - 4
% Write a function called valid_date that takes three positive 
% integer scalar inputs year, month, day. If these three represent a 
% valid date, return a logical true, otherwise false. The name of the output 
% argument is valid. If any of the inputs is not a positive integer scalar, 
% return false as well. Note that every year that is exactly divisible by 4 is a 
% leap year, except for years that are exactly divisible by 100. However, years that 
% are exactly divisible by 400 are also leap years. For example, the year 1900 was not leap year, 
% but the year 2000 was.

function valid = valid_date(y,m,d)
if ~isscalar(y)||~isscalar(m)||~isscalar(d)
    valid=0;
else
   if m>=1&&m<=12
       if m==1||m==3||m==5||m==7||m==8||m==10||m==12
           if d>=1&&d<=31
               valid=1;
           else
               valid=0;
           end
       elseif m==4||m==6||m==9||m==11
           if d>=1&&d<=30
               valid=1;
           else
               valid=0;
           end
       else
           if rem(y,100)==0
               if rem(y,400)==0
                   if d>=1&&d<=29
                       valid=1;
                   else
                       valid=0;
                   end
               else
                   if d>=1&&d<=28
                       valid=1;
                   else
                       valid=0;
                   end
               end
           elseif rem(y,4)==0
               if d>=1&&d<=29
                   valid=1;
               else
                   valid=0;
               end
           else
               if d>=1&&d<=28
                   valid=1;
               else
                   valid=0;
               end
           end
       end
   else
       valid=0;
   end
end
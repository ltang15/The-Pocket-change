%{The Poket Change Problem}%

%{Description: Calculate the average number of coins we expect to receive after a cash transaction
% in two cases: within and without pennies. 

clc, clear all, close all;

%% Calculating the average number of coins in the range of the possible cents amount [0,1,...,99]

coin_count1 =0; % declare and initialize the variable for counting the number of coins

%Change fall in the range from 0 to 99 cents in the step of 1 cent. 
for i = 1:100
    change = i-1; % set the value of change so what we do with change does not affect to i in the for loop.
    
    
    %To get the minimum total number of coins, we convert the change in the
    %order of quarter, dime, nickel, penny
    
    while (change >=25) %when the value of change is greater or equal to the value of 1 quarter
        change = change - 25;% update the remain value of change by subtracting the value of 1 quarter = 25 cents
        coin_count1 = coin_count1 + 1; %adding to the total everytime we get a coin
    end 
    
    while (change >= 10 && change < 25) %when the value of change is greater or equal to the value of 1 dime
        change = change -10; % update the remain value of change by subtracting the value of 1 dime = 10 cents
        coin_count1= coin_count1 + 1;
    end
    
    while (change >= 5 && change < 10) %when the value of change is greater or equal to the value of 1 nickel
        change = change -5; % update the remain value of change by subtracting the value of 1 dime = 5 cents
        coin_count1 = coin_count1 + 1;
    end
    
    while (change >= 1 && change < 5)  %when the value of change is greater or equal to the value of 1 penny
        change = change -1; % update the remain value of change by subtracting the value of 1 dime = 1 cents
        coin_count1 = coin_count1 + 1;
    end  
    % The loop will stop when change = 0
             
end    

%The average is calculated by dividing the total number of coins by all the amounts considered (100)
avr1 = coin_count1/100; 

fprintf ("1. Average number of coins = %3.2f \n", avr1);


%% Calculating the average number of coins if pennies are eliminated

coin_count2 = 0;

%When pennies are eliminated from the circulation

for j = 5:5:100
    change = j-5; %Change fall in the range from 0 to 95 cents in the step of 5 cents. 

    
    % This is similar to the first case, but there is no loop for pennies
    while (change >=25)
        change = change - 25;
        coin_count2 = coin_count2 + 1;
    end 
    
    while (change >= 10 && change < 25)
        change = change -10;
        coin_count2 = coin_count2 + 1;
    end
    
    while (change >= 5 && change < 10)
        change = change - 5;
        coin_count2 = coin_count2 + 1;
    end
             
end    


avr2 = coin_count2/(95/5 +1); % the total amounts considered for this case are 20

fprintf ("2. Average number of coins when we eliminate pennies = %3.2f \n", avr2);

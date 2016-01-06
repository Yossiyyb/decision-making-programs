% This program calculates wheather its better to buy a house or rent it
% depending on the costs and benefits associated with buying and renting.
  
% The decision is made by assuming  that the renter invests in 
% the stock market, thier monthly savings from renting instead of buying
% the house, and the investment earns the market ROI (Rate Of Return).

% At time T, when mortage is payed off, the accumulated value of investment
% is measured and compared to the future value of house. 

% If the investment is more valuble then house, then Matlab displays
% "optimal decision = rent house".
% If the house value is more then the investment value, the Matlab displays 
% "optimal decision = buy house"

% USER INPUTS!
    %mortgage info:
        P = 1000000; %price of house in dollars, 
        DP = 200000; %downpayment on house in dollar value
        T = 15; %term of mortgage in years
        IM = 0.03; %Interest on mortgage (nominal annual rate)
    %ownership info
        tax = 3000; %dolar value of annual taxes for owning house
        maint = 4000; %dollar value of annual maintainence fees
        REgrowth = 1.04; % annual factor of change in housing prices
    
    %Renting info
        RP = 4000; % dolar value of monthly rent payments
    % alternative investment info
        EFM = .16; %expected stock market return on investment

% ANALYZING THE INPUTS
   %curent expectation for price of the house at time T
        EFP = P*(REgrowth^T); 
   %monthly interest rate on mortgage
        MIM = IM/12;
   %montly expected return on the stock market
        MonthlyEFM = ((1+EFM)^(1/12))-1;

% calculating savings from rentinhg
    % MMP = Monthly morgage payment
    MMP = ((P-DP)*MIM)/(1-(1+MIM)^(-12*T));
    % rentsavings = monthly savings due to rent
    rentsavings = MMP +((tax+maint)/12)-RP; %(Mortagage+tax+maintainence-rent)

%calculating accumulated value of investing in the market the money from downpayment and
    %monthly rent savings
        accuminv = rentsavings*((1+(1+MonthlyEFM)^(12*T))/MonthlyEFM)+DP*(1+EFM)^T;

% "renters_advantage" is final advantage in dollars as time T (end of mortgage payment period) of
% renting over buying

    renters_advantage = accuminv - EFP;
% Telling Matlab to display the renters advantage
    renters_advantage
% telling matlab to display if to rent or but
if renters_advantage>0, 
    optimal_decision ='rent house' ;
else optimal_decision='buy house'; 
end;
optimal_decision
    
            
            


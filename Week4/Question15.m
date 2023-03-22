%Identify known variables
principal = 1000;
interestyearly = 0.05;
format long;

%Ask for Monthly Deposit
MonthlyDeposit = input('What is the monthly deposit you want to make? ');

%Calculate The Yearly Return
AmountAtEnd = (MonthlyDeposit*12) + principal;
Final = AmountAtEnd *(1+interestyearly)^10;
%Final = int32(Final);
disp('Value in account = '); disp(Final);

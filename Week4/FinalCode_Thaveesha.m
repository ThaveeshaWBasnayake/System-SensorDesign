%% Question 15

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

%% Question 16
%Ask the user for the shape that the user wants
Shape = input('Type either S for Solid, O for Open or T for Triangle = ', 's');% Ask user for size of the shape

%Create Solid Shape
if Shape == 'S'
%Ask for number of rows and columns
Row = input('Number of rows = ');
Column = input('Number of columns = ');
for x = 1:1:Row
    for y = 1:1:Column
        fprintf('*');
    end
    fprintf('\n');
end

%Create hollow shape
elseif Shape == 'O'
%Ask for number of rows and columns
Row = input('Number of rows = ');
Column = input('Number of columns = ');
for x = 1:1:1
    for y = 1:1:Column
        fprintf('*');
    end
    fprintf('\n');
end
for x = 2:1:(Row-1)
    for y = 1
        fprintf('*')
    end
    for y = 2:(Column-1)
        fprintf(' ')
    end
    for y = Column
        fprintf('*')
    end
    fprintf('\n')
end
for x = Row
    fprintf('*')
    for y = 2:1:Column
        fprintf('*');
    end
    fprintf('\n');
end

%Creating Triangle
elseif Shape == 'T'
%Ask user for size of triangle which must be an odd number
Size = input('Size of triangle = ');
x = [];
for a = 1:Size
    x = strcat(x, ' *');
    s = [blanks(Size-a) x];
    disp([s fliplr(a)])
end
end
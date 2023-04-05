%Firstly we need to create the ramp function
function r = Ramp(t,slope,start)
%Creates a ramp signal based on the inputs pf time(t), slope (slope) and
%the starting location of the ramp signal (start)

%Obtain the number of samples
N=numel(t);
%Initalise the function
r=zeros(N,1);
%Where does ramp turn on
if median(diff(t))>0
    startInd = find(t>=start, 1 );
    popInd = startInd:N;
elseif median(diff(t))<0
    %reversed time ramp, where does the ramp turn off
    start=-strat;
    stratInd=find(t>=start, 1, 'last' );
    popInd=1:stratInd;
    slope=-slope;
end
%for values larger
r(popInd)=slope.*(t(popInd)+start)-2*start*slope;
return
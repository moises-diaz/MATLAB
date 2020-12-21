%Programmer: Moises Diaz
%December 12, 2019

%This program takes variables, and give the result of a integral
function I=Simpson13(Fun, a, b)
I = 0;
h = 0;
currentI = 0;
s1 = Fun(a) + Fun(b);
difference = 0;
DifferenceInPercent = 500;
contador = 1;

while DifferenceInPercent > 0.01
    h = (b-a)/(contador*2+1);
    x = a;
    vals = [];
    
    for k=1:contador*2
    x = x + h;
    vals(length(vals)+1) = Fun(x);
    end
      
    s = s1+4*sum(vals(2:2:end)) + 2*sum(vals(1:2:end));
    currentI = h/3 * s;
    
    difference = currentI - I;
    
    if I ~= 0
    DifferenceInPercent = difference/I * 100;
    end

I = currentI;
contador = contador+1;
end
end
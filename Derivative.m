%My way of creating the vectors that I will use

x = [-1 -0.5 0 0.5 1 1.5 2 2.5 3 3.5 4 4.5];
y = [-3.632 -0.3935 1 0.6487 -1.282 -4.518 -8.611 -12.82 -15.91 -15.88 -9.402 9.017];


function [yd,ydd] = FrstScndDerivPt(x,y)

%I figured I have to use a for loop to get the first and second derevative
n = length(x);
h = (x(2)-x(1));
for i=1:n

    if i == 1
        yd(i) = (-3*y(i)+4*y(i+1)-y(i+2))/(2*h);
    elseif i == n
        yd(i) = (y(i-2)-4*y(i-1)+3*y(i))/(2*h);
    else
        
        yd(i) = (y(i+1)-y(i-1))/(2*h);
    
    end
    
end

for i=1:n
    if i == 1
        
        ydd(i) = (2*y(i)-5*y(i+1)+4*y(i+2)-y(i+3))/(h^2);
        
    elseif i == n
        
        ydd(i) = (-y(i-3)+4*y(i-2)-5*y(i-1)+2*y(i))/(h^2);
        
    else
        ydd(i) = (y(i+1)-2*y(i)+y(i-1))/(h^2);
    
    end
    
end
    figure
    plot(x, y)
    figure
    plot(x, yd)
    figure
    plot(x, ydd)
end

[yd,ydd] = FrstScndDerivPt(x,y)

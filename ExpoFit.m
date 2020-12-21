%Programmer: Moises Diaz
%December 12, 2019

function[b,m] = ExpoFit(x,y)

nX = length(x)

m = 0;
b = 0;
sx = 0;
sy = 0;
sxx = 0;
sxy = 0;

for i=1:nX
    sx = sx + x(i);
    sxx = sxx + (x(i))^2;
    sy = sy + log(y(i));
    sxy = sxy + (x(i))*log(y(i));
end

m = (nX*sxy - sx*sy)/(nX*sxx - sx^2);
b = (sxx*sy - sxy*sx)/(nX*sxx - sx^2);
b = exp(b);
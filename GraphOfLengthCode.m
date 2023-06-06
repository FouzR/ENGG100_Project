% R-changes
% Length - 50m 
% y = sqrt(2rx-x2)
clear
clc
r = input('Enter Radius');
L = input('Enter Road Length');

x = [0 0 0 0 0 0];y = [-5 -4 -3 -2 -1 0];
X = 0.1;
increment = 6;
while y(increment) <= r*sin(L/r) || 2*r>x(increment)
    x = [x, X];
    y = [y, sqrt(L*X-X^2)];
    increment = increment + 1;
    X = X + 0.1;
end


Graphtest(x,y, 10,1)

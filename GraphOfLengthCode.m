% R-changes
% Length - 50m 
% y = sqrt(2rx-x2)
% clear
% clc
% r = input('Enter Radius');
% L = input('Enter Road Length');
function GraphOfLengthCode(r,L)
x = [0 0 0 0 0 0];y = [-5 -4 -3 -2 -1 0];
X = 0.01;
increment = 6;
while ~(y(increment)>= r*sin(L/r)) || ~(X>=r-r*cos(L/r))
    x = [x, X];
    y = [y, sqrt(2*r*X-X^2)];
    increment = increment + 1;
    X = X + 0.01;
end

% p = plot(x,y);
% xlim([-1 50]);
% ylim([-1 50]);
Graphtest(x,y, 10,1)
end
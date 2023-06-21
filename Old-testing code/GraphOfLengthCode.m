
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
End = x(length(x));
Slope_at_end = (50-End)/(sqrt(-End*(End-100)));
YEnd = y(length(y));
% disp([YEnd, Slope_at_end, End])
for i = length(y):length(y)+20
    x = [x, X];
    y = [y, Slope_at_end*(x(i)-End)+YEnd];
    X = X + 0.01;

p = plot(x,y);
xlim([-2 50]);
ylim([-5 50]);
Graphtest(x,y, 10,1)

hold on
p = plot(x(1),y(1),'o','MarkerFaceColor','red');
hold off
axis manual
for k = 2:3:length(x)
    p.XData = x(k);
    p.YData = y(k);
    drawnow
end
% i = 1;
% while i < length(x)
%     %// radius
%     hold on
%     Graphtest(x,y, 10,1)
%     r = 1;
%     
%     %// center
%     c = [x(i), y(i)];
%     
%     pos = [c-r 2*r 2*r];
%     rectangle('Position',pos,'Curvature',[1 1])
%     hold off
%     i = i + 5;
% end


end
unction Graphtest (x,y, T,t)
% Graphs the road

p = plot(x,y,x,y);

p(1).LineWidth = T;
p(1).Color = 'black';
p(2).LineStyle = "--";
p(2).Color = 'white';
p(2).LineWidth = t;
xlim([-1 50]);
ylim([-1 50]);

end
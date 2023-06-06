x = -5:0.1:5;
y = x.^2;

p = plot(x,y,x,y);

p(1).LineWidth = 50;
p(1).Color = 'black';
p(2).LineStyle = "--";
p(2).Color = 'white';

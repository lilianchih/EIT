x = [3 2;
    2 3;
    -10 -1;
     -9 -2;
     5 5]
y = [1; 1; -1; -1; 1];
xx = [ones(size(x,1),1) x];
w = y(1)*xx(1,:);
[c, n] = perceptronCheck(xx, y, w);
while c == 0
    w = w + y(n)*xx(n,:);
    [c, n] = perceptronCheck(xx, y, w);
end
for i = 1:size(y)
    if y(i) == 1;
plot(xx(i,2), xx(i,3), 'o');
hold on;
    end
    if y(i) == -1;
    plot(xx(i,2), xx(i,3), 'x');
    hold on;
    end
end
ezplot(@(x,y)w(1)+w(2)*x+w(3)*y,[min(xx(:,2))-1, max(xx(:,2))+1, min(xx(:,3))-1, max(xx(:,3))+1]);
function [c, n] = perceptronCheck(x, y, w)
if sign(x*w') == y;
    c = 1;
    n = 0;
else
    c = 0;
    [m, n] = min(sign(x*w')==y);
end
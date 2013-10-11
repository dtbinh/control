personalnumbers = [10219242, 18008105, 1]; %TOM!
exercise_23
%%opgave A kan alleen op matlab
syms p(n) z
eq = p(n + 2) - p(n + 1) - p(n);
Zeq = ztrans(eq, n, z)
%%opgave B kan alleen op matlab

%%opgave C
leftpadz = @(p1,p2) [zeros(1,max(0,numel(p2) - numel(p1))),p1];
%convolutie == poly multiplicatie
yn11 = conv(Gn11, un1);
yn12 = conv(Gn12, un2);
%left padding is nodig voor als de dingen niet even groot zijn
yn1 = leftpadz(yn11,yn12) + leftpadz(yn12,yn11)
yn21 = conv(Gn21, un1);
yn22 = conv(Gn22, un2);
yn2 = leftpadz(yn21,yn22) + leftpadz(yn22,yn21)

yd11 = conv(Gd11, ud1);
yd12 = conv(Gd12, ud2);
yd1 = leftpadz(yd11,yd12) + leftpadz(yd12,yd11)
yd21 = conv(Gd21, ud1);
yd22 = conv(Gd22, ud2);
yd2 = leftpadz(yd21,yd22) + leftpadz(yd22,yd21)

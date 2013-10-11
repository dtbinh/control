%%%%!!! personalnumbers should be a vector consisting of 2 natural numbers.
rand('state',sum(personalnumbers));
ZeroValues = 2* rand(1,6) -1;
a = ZeroValues(1); b = ZeroValues(2); c = ZeroValues(3);
d = ZeroValues(4); e = ZeroValues(5); f = ZeroValues(6);
% Next the denominator and the numerator are constructed.
% Gnij is the numerator of entry i,j in the 2x2 matrix
% Gdij is the denominator of entry i,j in the 2x2 matrix
Gn11 = poly([a,e])
Gd11 = poly([b,f])
Gn12 =- poly([b])
Gd12 = poly([c])
Gn21 = poly([e])
Gd21 = poly([d])
Gn22 = poly([b,f])
Gd22 = poly([a,e])
% Next follow the denominators and the numerators of u
% uni is the numerator of entry i in the 2x1 vector
% udi is the denominator of entry i in the 2x1 vector
un1 = poly([d,f])
ud1 = poly([a,e])
un2 = poly([a,c])
ud2 = poly([b,f])


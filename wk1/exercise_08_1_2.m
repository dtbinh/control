% The vectors teller and noemer consist of the coefficients of
% numerator and denominator of a rational function.
randn('state',Snummer);
% rand('state', sum(Snummer));
rand('state', 0);
np = 5* [ randn(1,3) ,0,rand(1,3), 0];
teller = poly( np(1:4))
noemer = poly( np(4:7))

disp('The vectors teller and noemer consist of the coefficients of')
disp('numerator and denominator of a rational function.')


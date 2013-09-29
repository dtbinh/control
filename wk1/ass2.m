function void = ass2
  n1 = 10191429;
  n2 = 18008105;
  Snummer = [n1 ; n2 ];
  exercise_08_1_2

  t = teller;
  n = noemer;

  
  nulp = roots(n);
  nuls = size(nulp)(1)

  printf("\n========================================================\n");
  printf("a) er zijn in totaal %i polen\n",nuls);
  for i=1:nuls
    figure(i);
    x = nulp(i)
    xs = [ x - 0.1 :0.001: x + 0.1];
    plot(xs,arrayfun(@(x) f(t,n,x) ,xs));
  end
  printf("\n========================================================\n");

  disp("b) schrijf het quotient als a0 + a1 x^-1 + ... ")
  [a,z,q] = divide_polys(t,n,6);
  disp("De gevraagde coefficienten voor a zijn")
  a
  disp("de rationele functie is het quotient van polynomen (met eventueel negative exponenten)  z,q van graad 4 met:")
  z
  q
  printf("\n========================================================\n");
  printf("c) Nee ?");
end

function f = f(t,n,x)
  f = polyval(t,x)/polyval(n,x);
end

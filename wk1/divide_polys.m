function [a,z,q] = divide_polys(p,q,d)
  % divides p by q (len p == len q) till degree -d
  % returns the coefs a (p/q = a(0) + a(1) x^-1 + ... ) 
  % and the rational function R = t/q
  lp = size(p);
  p = [p zeros(1,d)];
  q = [q zeros(1,d)];
  a = zeros(1,d);

  s = 1;
  while p(s) == 0
	s=s+1 ;
  end
  
  for i=1:d
    a(i) = p(i)/q(s);
    for j=i:lp+d
      p(j) = p(j) - a(i) * q(j-i+1);
    end
  end
  z = p
end

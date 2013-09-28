n1 = 10191429;
n2 = 18008105;
Snummer = [n1 ; n2 ];
randn('state', Snummer);

Areal = randn(6,3) * randn(3,6);
A = round(1000*Areal)/1000;

[U, S, V] = svd(A)
for i = 1:6,
  if S(i,i) < 1/1000
    S(i,i) = 0;
  end
end
S
Anew = U*S*V';
max(abs((Anew - A)(:))) %< 1/1000

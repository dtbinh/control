%opg 1a
A1 = zeros(10,10);
for i = 1:10,
  for j = 1:10,
    A1(i,j) = 1/(i+j-1);
  end
end


%opg 1b
B = ones(10,1)*[1:1:10];
A2 = ones(10,10) ./ (B' + B - ones(10,10) );

%opg 1c
A3 = hilb(10);

isequal(A1, A2, A3)

%2
B1 = inv(A);
B2 = A\eye(10);
B3 = eye(10)/A;

isequal(B1, B2, B3); %geeft 0 want rounding errors

max(abs(B1 - B2))/max(abs(B1))
max(abs(B3 - B2))/max(abs(B2))
max(abs(B3 - B1))/max(abs(B1))

%3
A = hilb(10);

[V, L] = eig(A); %geen eigenwaarden nul; null(A) = {0} <=> A is inverteerbaar

%4
A - V*L*inv(V); %klein verschil want afronding

%5 cba, mag jij doen

function void = ass1
  n1 = 10191429;
  n2 = 18008105;
  Snummer = [n1 ; n2 ];

  exercise_08_1_1

  Y = A;
  X = x0;
  for tel = 1:6,
    X = [X Y*X];
    Y = Y*Y;
  end

  plot3(X(1,:),X(2,:),X(3,:),"+"); grid;
end

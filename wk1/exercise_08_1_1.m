Snummer = [10219242, 1]; %okke, hier moet de jouwe
rand('state',sum(Snummer));
T = eye(3,3)+[[ .5*rand(2,2) ;[0,0]] ,[0;0;0]] ;
a = .94 + .02*rand(1);
b = 1.03 + .01*rand(1);
A = T* diag([a,b,1])*inv(T);
x0 =(  T(:,1)+T(:,2)+T(:,3))/3 ;

Y = A;
X = x0;
for tel = 1:6,
  X = [X Y*X];
  Y = Y*Y;
end
plot3(X(1,:),X(2,:),X(3,:),"+")

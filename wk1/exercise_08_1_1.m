Snummer = [10219242, 1]; %okke, hier moet de jouwe
rand('state',sum(Snummer));
T = eye(3,3)+[[ .5*rand(2,2) ;[0,0]] ,[0;0;0]] ;
a = .94 + .02*rand(1);
b = 1.03 + .01*rand(1);
A = T* diag([a,b,1])*inv(T);
x0 =(  T(:,1)+T(:,2)+T(:,3))/3 ;

Y = A
X = x0
for tel = 1:6,
  X = [X Y*X];
  Y = Y*Y;
end

[V, L] = eig(A);
inv(T) * x0

plot3(X(1,:),X(2,:),X(3,:),"+"); grid;

%{
"Leg uit wat je ziet in de plot mbv eigenwaardes en eigenvectoren".

x_k = Ax_{k-1} = A^k x_0.
A = T L T^{-1} met L diagonaal, dus
A^k = T L^k T^{-1}.
dus x_k = T L^k T^{-1} x_0

T^{-1} x_0 = (1/3, 1/3, 1/3) -> vraag me (nog) niet waarom. Is definitie van T en x_0.
Dus A^k x_0 = T L^k (1/3, 1/3, 1/3) = 1/3 T L^k (1,1,1). Meer weet ik nog niet. Oja en L_{3,3} = 1 en (0,0,1) is een eigenvector van 1. Good stuff.
}%

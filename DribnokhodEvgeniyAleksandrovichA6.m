   %% Dribnokhod Evgeniy Aleksandrovich
%% Task1
x  = [-1 4 -8 9 10];
y = x(end:-1:1)
%% Task2 
x = [-1 4 -8 9 10];
y1  = x((mod(x,2)==1))
y2  = x((mod(x,2)==0))
%% Task3
x = [-1 4 -8 9 10];
y  = sum(x(x>0))
%% Task4
x = [1 4 8 9 10];
y = ((abs(x)-abs(geomean(x)))<=0.2*geomean(x)).*x+((abs(x)-abs(geomean(x)))>0.2*geomean(x)).*geomean(x)

%% Task5
x = [1 4 -8 10 10];
y = (x==max(x))*min(x)+(x~=max(x)).*x
%% Task6
x = [0 4 -8 9 10];
y = [sum(x>0) sum(x==0) sum(x<0)]
%% Task7
A=[2 3 3;4 2 3; 6 5 6];
b = [8 ;7; 7];
x = A\b
(A*x-b)==0

cond(A)
C=[A b];
D=rref(C);
x=D(:,3)
 (A*x-b)==0
 %% Task8
  t=[0; 0.1; 0.2; 0.3; 0.4; 0.5];
  y=[4.25 ;3.95; 3.64; 3.41; 3.21; 3.04];
  figure
   hold on
  plot(t,y)
 
  A = [exp(-t) t];
  x=A\y;
  
  a = x(1, 1)
  b = x(2,1)
  fplot(@Main,[-0.5 0.5])
%% Task9
A =[ 1 2 3; 3 4 5];
b=[2;2];
x = A\b
round(A*x-b,5)==0
%% Task10
A=[2 3 3; -2 3 3];
b=[8;7];
x= linsolve(A,b)
%% Task11
A=[2 3 3; -2 3 3];
b=[8;7];
[Q,R]=qr(A)
x=R\(Q\b)
round(A*x-b,5)==0
%% Task12
A=[2 4 5; 3 6 7; 8 5 2];
[x,y]=eig(A);
x1=x(:, 1)
x2=x(:, 2)
x3=x(:, 3)
y1=y(1,1)
y2=y(2,2)
y3=y(3,3)
round(A*x1,6) ==round(y1*x1,6)
%%
function F = Main(x)
a = 4.2478;

b =    0.9070;

F(1)=a*exp(-x)+b*x;       	   
end





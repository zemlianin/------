%% KR

e = 0.5;
a=1;
phi = (-2*pi:0.1*pi:2*pi);
%[X, Y] = POL2CART(f, p)
%figure roh*(1-eps*cos(phi)) + 2 = 0
%hold on;
p = (-2)./(1-e*cos(phi));
[X, Y] = pol2cart(phi, p) ;
plot(X,Y)
hold on;
e=1;
p = (-2)./(1-e*cos(phi));
[X, Y] = pol2cart(phi, p) ;
plot(X,Y)
e=2;
p = (-2)./(1-e*cos(phi));
[X, Y] = pol2cart(phi, p) ;
plot(X,Y)
hold off;

%% 2
a =[1 2 2];
b =[3 3 4];
c=[5 5 5];
V = abs(dot(a,(cross(b,c))))
%% 3
a = [3; 4; 5] ;
b =[8; 4; -2];
cross(a,b)
%% 4
A=[2 3 3; -2 -3 3];
b=[9;1];
x= linsolve(A,b)
%% 5
a = [ 1 3 5 8 4 1];
b= sort(a)
%% 6
a =  [ 1 -3 -5 8 4 -1 0];
a1 = a(a>0)
a2=a(a<=0)
%% 7
A=[3 1 2;1 3 1;1 1 3];
b=[3;8;2];
tau=0.1;
x=[0;0;0];
n=20;
for i=1:n 
    r=b-A*x;
    x=x+r*tau;
end
x
round(A*x-b,1)==0
%для точности в 1 знак после запятой достаточно 20 итераций
% для точности в 2 знака 34 итераций

%% 8
clc;
clear;
A=[3 2 1;2 3 2;1 2 5];
b=[3;8;2];
x0=[0;0;0];
n=443;
eps=0.0001;
for i=1:length(b) 
    for j=1:length(b) 
        beta(i)=b(i)/A(i,i);
        if i==j
           newa(i,j)=0;
        else
            newa(i,j)=-A(i,j)/A(i,i);
        end
    end
end
x1=x0;
ncount=0;
beta=beta';
flag = true;
while flag
    ncount=ncount+1;
x1=beta+newa*x0;
max=abs(x0(1)-x1(1));
for i=2:length(x0) 
    if abs(x0(i)-x1(i))>max
        max=abs(x0(i)-x1(i));
    end
end
if (max<eps) || (ncount>n)
    x=x1;
    x
    round(A*x-b,3)==0
    flag=false;
else
    x0=x1;
end
end
% Длля точности в 3 знака после запятой достаточно
%n=443 eps=0.0001

%% 9
A = [5 0 -3 0 0 0;
    0 -2 0 0 2 0;
    1 0 1 0 0 0;
    0 1 0 0 3 0; 9 7 0 0 0 0];
AN=sparse(A)
[ir,jr,nz]=find(AN);
nz
%% 10
A = [1 3 0 1 0; 0 2 1 0 1;
    0 7 1 0 -2; 0 1 3 0 2;
0 5 0 1 0] ;
spy(A)
%% Dribnokhod Evgeniy Aleksandrovich
%% Task1
%x=[0:0.05:5];
%f = exp(-x)*sqrt((x.^2+1)/(x.^4+0.2)) ;
%plot(x,f)
figure
fplot('myfun1',[0 5])
myfun1(0)
f(1,1)

%% Task2
figure
x=[0:0.05:5];
f = exp(-x).*sqrt((x.^2+1)./(x.^4+0.2)) ;
plot(x,f)
hold on
fplot('myfun1',[0 5],LineStyle="--")
help myfun1
lookfor myfun1 
%% Task3
a=[1 2 3 4 4 5 6 7 8 9];
task2(a)
%% Task 4
figure
fplot(@myfun2,[-5 5],LineStyle="--");
grid on
fzero(@myfun2,-5)
fzero(@myfun2,1)
fzero(@myfun2,-2)
fzero(@myfun2,5)
%% Task5
p =[1 0 0 0 0 3 1 -10 -1 1024];
x=roots(p)
polyval(p,x)
%% Task6
figure
clc
clear


func1 =  inline('exp(x.^2)+sin(3.*pi.*x)','x')
fminbnd(func1, -10, 10)
fplot(func1)%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%не рисует

%% Task7
func2 = @(x) x.^2+1;

fminbnd(func2, -10, 10)
fplot(func2)
%% Task8
[X,Y]=meshgrid(0:0.01:2);
Z=sin(pi*X).*sin(pi*Y);
[CMatr,h] = contour(X,Y,Z,[-0.96, -0.9, -0.8, -0.5, -0.1,0.5, 0.8, 0.9,0.96])
clabel(CMatr,h)
colormap(gray)
M=fminsearch(@ftest2,[1.4,0.6])

%% 
function f = ftest2(v)
x=v(1);
y=v(2);
f=sin(pi*x).*sin(pi*y);
end

function f = task2(x)
f=x(mod(x,2) == 1)
end

function f = myfun2(x) 
f = sin(x)- x.^2.*cos(x) ;
 
end
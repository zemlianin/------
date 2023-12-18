%%KR
%% 1
figure
fplot(@myfun3,[-2 1.5],LineStyle="--");
grid on
fzero(@myfun3,-1.95)
fzero(@myfun3,-1.75)
fzero(@myfun3,-1)
fzero(@myfun3,0.5)
fzero(@myfun3,1)
fzero(@myfun3,1.5)

%% 2
func2 = @(x,y) cos(pi*x)*sin(pi*y);


fplot(func2)

%% 3
clc,clear
figure
x=[3:0.01:4];
%f = exp(-x).*sqrt((x.^2+1)./(x.^4+0.2)) ;
plot(x,myfun3(x))
hold on
%fplot('myfun3',[3 4],LineStyle="--")
help myfun3
lookfor myfun1! 
%% 4
p1=[1 0 1 0 1 0 -3 -11 -1];
p2=[1 0 -11 0 1];
[d,r]=deconv(p1,p2);
disp(poly2sym(r))
%% 5
p1=[1 1 0 10 0 2 3];
p2=[1 0 0 0 2 1 -3];
p3=conv(p1,p2);

poly2sym(p3)
%% 6
p1=[1 0 3 1 5 -1 4];
p3= polyder(p1);
poly2sym(p3)
%% 7
[x,y]=meshgrid(0:0.1:2,-2:0.1:2)
z=sin(x).*cos(y).*(x+y).*(x-y);
dblquad('sin(x).*cos(y).*(x+y).*(x-y)',0,2,-2,2)
surfl(x,y,z)
view(39,39)
%% 8
func = @(x) sin(x)-exp(x.^2).*cos(x) ;
quad(func,-2 ,2 ,1.0e-05)
fplot(func,[-2,2])
%% 9
syms k;
s=0;
n=1;
figure
hold on

syms n;
limit((1.9.^n)./(1/n.^2), n, Inf)
disp("предел стремиться к бесконечнрости, но второй ряд сходиться" + ...
    " значит первый расходится")
symsum(1.9.^n,n,1,Inf)
n=1;
while(n~=10)  
plot(n,symsum(1.9.^k,k,1,n),'.','color','red');
plot(n,symsum(1.9.^k,k,1,n)-s,'.','color','blue');
s=symsum(1.9.^k,k,1,n);
n=n+1;
end
title("1.9.^n")
%% 10
syms k;
s=0;
n=1;
figure
hold on

syms n;
limit((1./(n.^2+sqrt(n)))./(1/n.^2), n, Inf)
disp("предел равен 1, но второй ряд сходиться" + ...
    " значит первый тоже сходиться")
symsum((1./(n.^3)),n,1,Inf)
n=1;
while(n~=10)  
plot(n,symsum(1./(n.^2+sqrt(n)),k,1,n),'.','color','red');
plot(n,symsum(1./(n.^2+sqrt(n)),k,1,n)-s,'.','color','blue');
s=symsum(1./(n.^2+sqrt(n)),k,1,n);
n=n+1;
end
 title("1/(n^2+sqrt(n))")
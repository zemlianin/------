%% Dribnokhod Evgeniy Aleksandrovich
%% Task1
%taylor(a,b,c,d) 


f=str2sym('1/(1+x) ');
tf=taylor(f);
pretty(tf) 
%% Task2
clc, clear
syms x ;
f = str2sym('1/(x+y)');
taylor(f, x, 'Order',7)
syms y;
taylor(f, y, 'Order',7)


%% Task3
sym x;
f=str2sym('x*sin(x)');
tf = taylor(f,x,'ExpansionPoint',2,'Order',10)
pretty(tf) 
%% Task4
syms k;
symsum(((-1).^k)/(k.^2),k,1,Inf)
symsum((-1).^k.*(x.^(2*k+1))/factorial(2*k+1))

%% Task5
syms n;
limit((1./2).*(1-(1./3).^n)./(1/n.^2), n, Inf)
disp("предел стремиться к бесконечности, но второй ряд сходиться" + ...
    " значит первый расходится")
%% Task6

syms k;
s=0;
n=1;
figure
hold on


while(n~=10)  
plot(n,symsum(0.3.^k,k,1,n),'.','color','red');
plot(n,symsum(0.3.^k,k,1,n)-s,'.','color','blue');
s=symsum(0.3.^k,k,1,n)
n=n+1;
end
%% 2
figure
hold on
n=1;
s=0;
while(n~=10)  
plot(n,symsum(1.5.^k,k,1,n),'.','color','red');
plot(n,symsum(1.5.^k,k,1,n)-s,'.','color','blue');
s=symsum(1.5.^k,k,1,n)
n=n+1;
end
%% 3
figure
hold on
n=1;
s=0;
while(n~=10)  
plot(n,symsum(1./k,k,1,n),'.','color','red');
plot(n,symsum(1./k,k,1,n)-s,'.','color','blue');
s=symsum(1./k,k,1,n)
n=n+1;
end
%% 4
figure
hold on
n=1;
s=0;
while(n~=10)  
plot(n,symsum(1/k.^(0.5),k,1,n),'.','color','red');
plot(n,symsum(1/k.^(0.5),k,1,n)-s,'.','color','blue');
s=symsum(1/k.^(0.5),k,1,n)
n=n+1;
end
%% 5
figure
hold on
n=1;
s=0;
while(n~=10)  
plot(n,symsum(1/k.^(2),k,1,n),'.','color','red');
plot(n,symsum(1/k.^(2),k,1,n)-s,'.','color','blue');
s=symsum(1/k.^(2),k,1,n)
n=n+1;
end
%% 6
figure
hold on
n=1;
s=0;
while(n~=10)  
plot(n,symsum(1/(k.^(2)+k*2),k,1,n),'.','color','red');
plot(n,symsum(1/(k.^(2)+k*2),k,1,n)-s,'.','color','blue');
s=symsum(1/(k.^(2)+k*2),k,1,n)
n=n+1;
end
%% Создайте функцию, которая строит в одной 
% системе координат график последовательности 
% членов ряда и график последовательности 
% частичных сумм ряда; входные параметры функции
% – формула общего члена последовательности и 
% число рассматриваемых членов; выходные 
% параметры – значение суммы. Примените эту 
% функцию для исследования следующих рядов: 

function f=ff()
figure
hold on
plot
end



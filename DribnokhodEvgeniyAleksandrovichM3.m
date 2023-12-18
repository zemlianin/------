%Дрибноход Евгений
%% 
%Task1
figure

x=(-2:0.01:2);
y=exp(-x).*sin(10.*x);
plot(x,y)
grid on
%% 
%Task2a
figure
x=(0:0.001:5)
y=exp(-x).*sin(10.*x)

comet (x,y) 
area(x,y)
grid on
%%
%Task2b
figure
z=x;
view(-58,-13)
comet3(x,y,z,0.9)
grid on;

%%
%Task3
figure
pie3([25,10,20, 30, 15],[ 0 ,1 ,0 ,0 ,0]) 
view(3)

%%
%Task4
figure
x=(0:0.01:1);
y = exp(-x).*(sin(x)+0.1*sin(100.*pi.*x)) ;
plot(x,y,'Color','r')
hold on
x=(0:1/99.0:1);
y= exp(-x).*(sin(x)+0.1.*sin(100.*pi.*x)) ;
plot(x,y,'Color','g')
hold off;
%%
%Task5
x=0:0.1:10;
f = log(2*x) ;
g = log(x).*sin(2*x);
figure
subplot(3,1,1)
loglog(x,f)
hold on
loglog(x,g)
legend('график f','график g','Location','northwestoutside') 

subplot(3,1,2)
semilogx(x,f)
hold on
semilogx(x,g)
legend('график f','график g','Location','northwestoutside') 

subplot(3,1,3)
semilogy(x,f)
hold on
semilogy(x,g)
legend('график f','график g','Location','northwestoutside') 
%% Task6
figure
grid on
t = [-pi:0.01:pi;];
xt=2*sin(t);
yt=4*cos(t);
plot(xt,yt,'Color','g')

%% Task7
figure
[x,y]=meshgrid(-2:0.05:2);
z=4*sin(2.*pi.*x).*cos(1.5.*pi.*y).*(1-y.*y).*x.*(1-x) ;
mesh(x,y,z) 
hidden off
view(135,45)

%% Task8
figure
[x,y]=meshgrid(-2:0.05:2);
z=4.*sin(2.*pi.*x).*cos(1.5.*pi.*y).*(1-y.*y).*x.*(1-x) ;
contour3(x,y,z,[-3:0.01:3]) 
colorbar

view(135,45)

%% Task9
figure
[x,y]=meshgrid(-2:0.05:2);
z=4.*sin(2.*pi.*x).*cos(1.5.*pi.*y).*(1-y.*y).*x.*(1-x) ;
surfl(x,y,z,[-90,45])
view(135,45)
%% Task10
[x,y]=meshgrid(-1:0.05:1);
z=(sin(x).*sin(x)+cos(y).*cos(y)).^(x*y);
figure
%сетка
subplot(2,2,1);
mesh(x,y,z) 
view(100,45)
%покрытие сетки
subplot(2,2,2);
surf(x,y,z)
view(80,80)
%срезы
subplot(2,2,3);
contour3(x,y,z) 
%Светотень
subplot(2,2,4);
surfl(x,y,z,[-0,45])





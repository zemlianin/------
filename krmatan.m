%%  KR

x = [0:0.01:3*pi];
y = sin(x);
figure
plot(x,y)

%%
p = rand(7)

x = p(end-1,end-1)
%%
syms  a;
limit((x-a)/log(x-a+1),x,a)
%%

syms x;
limit(1-(exp(-x))/x,x,inf)

%%
syms n a x;
diff(exp(-a*x.^5)+log(a.^n+x.^a)-a.*n/(x.^3),x)
%%
x = [0.01:0.01:2*pi];
f=(sin(x))./x ;
g=(exp(-x)).*cos(x);

figure
plot(x,f)
xlabel('x')
ylabel('y')
grid on
legend('f','Location','northwestoutside') 

figure
plot(x,g)
xlabel('x')
ylabel('y')
grid on
legend('g','Location','northwestoutside') 

figure
hold on
plot(x,f)
plot(x,g)
xlabel('x')
ylabel('y')
grid on
legend('f','g','Location','northwestoutside') 

figure
subplot(1,2,1)
plot(x,f)
xlabel('x')
ylabel('y')
grid on
legend('f','Location','northwestoutside') 

subplot(1,2,2)
plot(x,g)
xlabel('x')
ylabel('y')
grid on
legend('g','Location','northwestoutside') 
%%

x=0:0.1:10;
f = log(3*x) ;
g = log(x).*cos(2*x);
figure
loglog(x,f)
hold on
loglog(x,g)
legend('график f','график g','Location','northwestoutside') 
xlabel('x')
ylabel('y')

%%


t=[0:0.1:10];
x=2*t;
y=5.*t+t.^2-2.*t.^3;
ux(1:length(x))=2;
uy=5+2*t-6*t.^2;
figure
quiver(x,y,ux,uy,0.1)
figure
feather(ux,uy) 
figure
compass(ux,uy) 
hold on

%%
%Постройте параметрически заданную поверхность, определённую зависимостями x(u,v)=2*u*cos(v),
% y(u,v)=3*u*sin(v), z(u,v)=u, где u,v: [-4pi,4pi] с шагом 0,1*pi (v – вектор-строка, u – вектор-столбец).

figure
[u,v] = meshgrid(-4*pi:0.1*pi:4*pi);
x = 2.*u.*cos(v);
y = 3.*u.*sin(v);
z = u;
hold on;
surf(x,y,z)

view(3)
%%
%Постройте график трёхмерной линии x=(t/(1-t))*sin(t), y=(t/(1+t))*cos(t), z=t, t: [0,100] с шагом 0.01.
figure
t = [0:0.01:100];
z=t;
x=(t./(1-t)).*sin(t);
y=(t./(1+t)).*cos(t);
z=t;

plot3(x,y,z)
grid on

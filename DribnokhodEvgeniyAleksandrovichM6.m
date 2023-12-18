%% Dribnokhod Evgeniy Aleksandrovich 
%% Task1
p1=[1 0 1 0 0 1 3];
p2=[1 2 1 -10];
p3=conv(p1,p2);

poly2sym(p3)

%% Task2
p1=[1 1 0 0 0 1 -1];
p2=[1 0 2 -1];
[d,r]=deconv(p1,p2);

poly2sym(d)
poly2sym(r)

%% Task3
p1=[1 1 1 -3 -2 -16 -1];
p2=[1 -116 1];
[d,r]=deconv(p1,p2);
disp(poly2sym(r))
%% Task4
p1=[1 1 4 2 3 0 1 3];
p2=[0 0 0 3 0 2 -3 -9];
p3=p1+p2;
poly2sym(p3)
%% Task5
p1=[1 0 2 0 0 4 2 0 3 3];
p2=[1 0 0 0 0 0 0 2 1 0];
p3=p1-p2;
poly2sym(p3)
%% Task6
p1=[2 0 0 0 3 0 1 -10 -1 1024];
p3= polyder(p1);
poly2sym(p3)
%% Task7
figure
x=[0:0.001:2];
X = [0.1 0.3 0.4 0.6 0.7 0.9 1.0 1.3 1.6 2.0] ;
Y = [-3 -5 -2 -1 0 1 3.5 6 2.5 8];
p1 = polyfit(X,Y,3);
p2 = polyfit(X,Y,4);
p3 = polyfit(X,Y,5);
p4 = polyfit(X,Y,6);
p5 = polyfit(X,Y,7);
subplot(3,2,1)
plot(X,Y);
legend('функция')
subplot(3,2,2)
plot(x,polyval(p1,x))
legend('3я степень')
subplot(3,2,3)
plot(x,polyval(p2,x))
legend('4ая степень')
subplot(3,2,4)
plot(x,polyval(p3,x))
legend('5ая степень')
subplot(3,2,5)
plot(x,polyval(p4,x))
legend('6ая степень')
subplot(3,2,6)
plot(x,polyval(p5,x))
legend('7ая степень')
%% Task8
figure
X = [0.1 0.3 0.4 0.6 0.7 0.9 1.0 1.3 1.6 2.0] ;
Y = [-3 -5 -2 -1 0 1 3.5 6 2.5 8];
x=[1:0.01:10];
subplot(3,2,1)
plot(X,Y);
legend('функция')
subplot(3,2,2)
plot(x,interp1(X,Y,x,'nearest'));
legend('nearest')
subplot(3,2,3)
plot(x,interp1(X,Y,x,'linear'));
legend('linear')
subplot(3,2,4)
plot(x,interp1(X,Y,x,'spline'));
legend('spline')
subplot(3,2,5)
plot(x,interp1(X,Y,x,'pchip'));
legend('pchip')

%% Task9
figure
[x,y]=meshgrid(0:0.2:1);
z=sin(3*pi*x).*sin(3*pi*y).*exp(-x.*x-y.*y);
[xi,yi]=meshgrid(0:0.02:1);
subplot(3,2,1)
surfl(x,y,z)
title('base')
grid on

subplot(3,2,2)
surfl(xi,yi,interp2(x,y,z,xi,yi,'bilinear'));
title('bilinear')

subplot(3,2,3)
surfl(xi,yi,interp2(x,y,z,xi,yi,'nearest'));
title('nearest')

subplot(3,2,4)
surfl(xi,yi,interp2(x,y,z,xi,yi,'bicubic'));
title('bicubic')

subplot(3,2,5)
surfl(xi,yi,interp2(x,y,z,xi,yi,'spline'));
title('spline')







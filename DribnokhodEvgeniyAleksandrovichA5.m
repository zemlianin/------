%% Дрибноход Евгений 
%% Task1
a = [1.3; -3; 0.5];
b = [4.2; 6.5; -2];
cross(a,b)

%% Task2
a = [1.3; -3; 0.5];
b = [4.2; 6.5; -2];
cross(a,b)+cross(b,a)
%% Task3
a= [3.5 ;0.1; 0]; 
b =[0.5 ;2.1 ;1]; 
c=[-0.2 ;-1.9; 2.8];
dot(a,(cross(b,c)))
%% Task4
a= [3.5;0.1;0]; 
b =[0.5;2.1;1]; 
dot(a,b)
%% Task5
a= [1 ;2 ;3];
b= [4;5 ;6]; 
c= [8;7;8];
V = abs(dot(a,(cross(b,c))))
%% Task6
 a=[1;2;3] ;
 b=[4;4;6;5];
a*b'

%% Task7
e = 0.5;
a=1;
f = (-pi:0.1*pi:pi);
%[X, Y] = POL2CART(f, p)
%figure
%hold on;
p = a./(1-e*cos(f));
[X, Y] = pol2cart(f, p) ;
plot(X,Y)
hold on;
e=1;
p = a./(1-e*cos(f))
[X, Y] = pol2cart(f, p) ;
plot(X,Y)
e=2;
p = a./(1-e*cos(f))
[X, Y] = pol2cart(f, p) ;
plot(X,Y)
hold off;
%% Task8 a
figure
e = 0.5;
a=1;
f = (-pi:0.05*pi:pi);
p = (a./(1-e*cos(f)))';
z=f;
[X, Y, Z] = pol2cart(f, p, z) ;
plot3(X,Y,Z)
grid on;
figure
e=1;
p = (a./(1-e*cos(f)))';
[X, Y, Z] = pol2cart(f, p, z) ;
plot3(X,Y,Z)

figure
e=2;
p = (a./(1-e*cos(f)))';
[X, Y, Z] = pol2cart(f, p, z) ;
plot3(X,Y,Z)
%% Task9
figure


f = (-pi:0.01*pi:pi)';

p = 1;;
z=(0:0.01*pi:2*pi);
[X, Y, Z] = sph2cart(z, f, p) ;
plot3(X,Y,Z)
grid on;
%% Task10
figure

f = (-pi:0.01*pi:pi);

p = 1;
z=(0:0.01*pi:2*pi)';
[X, Y, Z] = sph2cart(z, f, p) ;
plot3(X,Y,Z)
grid on;


%% Dribnokhod Evgeniy
%% Task1
figure
t = [0:0.01:100];
z=t;
x=exp(-abs(t-100)./100.*sin(t));
y=exp(-abs(t-100)./100.*cos(t));
z=t;

plot3(x,y,z)
grid on
%% Task2
figure
[u,v]=meshgrid(-4*pi:0.1*pi:4*pi);
%[x,y]=meshgrid(-1:0.05:1);
x=0.5.*u.*cos(v);
y=0.5.*u.*sin(v);
z=u;
surf(x,y,z)
%% Task3

figure
[u,v]=meshgrid(-2*pi:0.1*pi:2*pi);
x=cos(u).*cos(v);
y=0.6.*cos(u).*sin(v);
z=0.8.*sin(u);
mesh(x,y,z) 
hidden off

%% Task4
t=[0:0.2:2];
x=0.5*t;
y=0.8*t.*(1-0.5*t);
ux(1:length(x))=0.5;
uy=0.8*(1-t);
figure
quiver(x,y,ux,uy,0)
fign=figure;
quiver(x,y,ux,uy,1.5)
figure
quiver(x,y,ux,uy,0.3)

%% Task5
figure(fign);
hold on;
t=0:0.2:2;
x=0.5*t;
y=0.8*t.*(1-0.5*t);
plot(x,y)

%% Task6
figure;

ux(1:length(x))=0.5;
uy=0.8*(1-t);
compass(ux,uy) 

%% Task7
figure;
hold on
ux(1:length(x))=0.5;
uy=0.8*(1-t);
feather(ux,uy) 
%% Task8
figure
u=(-pi:pi/15:pi)';
v=-pi:pi/15:pi;
X=2*sin(u)*cos(v);
Y=2*sin(u)*sin(v);
Z=2*cos(u)*ones(size(v));
surf(X,Y,Z)
[U,V,W] = surfnorm(X,Y,Z);
hold on;
quiver3(X,Y,Z,U,V,W,4,'k');
%% Task9
[x,y]=meshgrid(-2:0.1:2);
z=(x.^2-y.^2)/2;
figure
surf(x,y,z)
[U,V,W] = surfnorm(x,y,z);
hold on;
quiver3(x,y,z,U,V,W,4,'k');

%% Task10

[x,y]=meshgrid(-1:0.1:1);
z=((x.^2+y.^2)+1).^(0.5);
figure

surf(x,y,z)
hold on;
surf(x,y,-z)
[U,V,W] = surfnorm(x,y,z);

quiver3(x,y,z,U,V,W,4,'k')
quiver3(x,y,-z,U,V,W,4,'k')
%% Task11
figure
[u,v] = meshgrid(0:0.2:3);
x=cos(u).*cos(v);
y=sin(u).*sin(v);
z=u.*v;
surf(x,y,z)
hold on
[U,V,W] = surfnorm(x,y,z);
quiver3(x,y,z,U,V,W,1,'k')
%% Task12
xL=1; xR = 3;
yL=-1;yR=1;
zL=0;zR=2;
[X,Y,Z] = meshgrid(xL:0.05:xR, yL:0.05:yR, zL:0.05:zR);
U=X./sqrt(X.^2+Y.^2+Z.^2);
V=Y./sqrt(X.^2+Y.^2+Z.^2);
W=Z./sqrt(X.^2+Y.^2+Z.^2);
[Cx,Cy,Cz] = meshgrid(xL:(xR-xL)/3:xR, yL:(yR-yL)/3:yR,zL:(zR-zL)/7:zR);
    figure
hC = coneplot(X,Y,Z,U,V,W,Cx,Cy,Cz,4)
set(hC,'FaceColor','g','EdgeColor','none')
axis tight
view(31,28)
light
xlabel('x')
ylabel('y')
zlabel('z')
%% 
%То же - на параметрической поверхности:
% x(u,v)=cos(u)*cos(v), y(u,v)=sin(u)*sin(v),
% z(u,v)=u*v, u,v ϵ [0,3] с шагом 0,1.


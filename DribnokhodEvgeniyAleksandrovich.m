%% Дрибноход Евгений
%% Task1

a=[2;3;4];
b=[3;5;2];
c=[1;1;1];
(a+b)+c==a+(b+c)
isequal((a+b)+c,a+(b+c))
figure
view(3);
hold on;
grid on;
quiver3(0, 0, 0, 2,3,4, 1,'Color','b','LineWidth',1)
text(1,1.5,2,'\leftarrowa')
quiver3(0, 0, 0, 3,5,2, 1,'Color','b','LineWidth',1)
text(1.5,2.5,1,'\leftarrowb')
quiver3(3, 5, 2, 2,3,4, 1,'Color','k','LineWidth',1)
quiver3(2, 3, 4, 3,5,2, 1,'Color','k','LineWidth',1)
quiver3(1, 1, 1, 5,8,6, 1,'Color','k','LineWidth',1)
quiver3(5, 8, 6, 1,1,1, 1,'Color','k','LineWidth',1)
quiver3(0, 0, 0, 5,8,6, 1,'Color','g','LineWidth',1)
text(2.5,4,3,'\leftarrowa+b')
quiver3(0, 0, 0, 1,1,1, 1,'Color','g','LineWidth',1)
text(0.5,0.5,0.5,'\leftarrowc')
quiver3(0, 0, 0, 6,9,7, 1,'Color','r','LineWidth',1)
text(3,4.5,3.5,'\leftarrowa+b+c')
hold off
figure
view(3);
hold on;
grid on;
quiver3(0, 0, 0, 3,5,2, 1,'Color','b','LineWidth',1)
text(1.5,2.5,1,'\leftarrowb')
quiver3(0, 0, 0, 1,1,1, 1,'Color','b','LineWidth',1)
text(0.5,0.5,0.5,'\leftarrowc')
quiver3(1, 1, 1, 3,5,2, 1,'Color','k','LineWidth',1)
quiver3(3, 5, 2, 1,1,1, 1,'Color','k','LineWidth',1)

quiver3(0, 0, 0, 4,6,3, 1,'Color','g','LineWidth',1)
text(2,3,1.5,'\leftarrowb+c')
quiver3(0, 0, 0, 2,3,4, 1,'Color','b','LineWidth',1)
text(1,1.5,2,'\leftarrowa')
quiver3(2, 3, 4, 4,6,3, 1,'Color','k','LineWidth',1)
quiver3(4, 6, 3, 2,3,4, 1,'Color','k','LineWidth',1)

quiver3(0, 0, 0, 6,9,7, 1,'Color','r','LineWidth',1)
text(3,4.5,3.5,'\leftarrowa+b+c')
%% Task2

a=[4,2,3];
b=[1,5,2];
alfa = 4;
betta = 3;

isequal(alfa.*(a+b),alfa.*a+alfa.*b)
isequal(a*(alfa+betta),alfa*a+betta*a)
isequal((alfa*betta)*a,alfa*(betta*a))
%% Task3 
figure
a=[3,4,5];
sqrt(3*3+4*4+5*5)
norm(a)
a0=a./norm(a)
isequal(norm(a0),1)
b=[4,2];
sqrt(4*4+2*2)
norm(b)
b0=b./norm(b)
isequal(norm(b0),1)

grid on;
view(3);
hold on;
quiver3(0, 0, 0, 3,4,5, 1,'Color','b','LineWidth',1)
text(1.5,2,2.5,'\leftarrowa')
quiver3(0, 0, 0,  a0(1),a0(2), a0(3), 1,'Color','k','LineWidth',1)
text(a0(1)/2,a0(2)/2,a0(3)/2,'\leftarrowa0')
hold off

figure
hold on;
grid on;
quiver(0, 0,4,2, 1,'Color','b','LineWidth',1)
text(2,1,'\leftarrowb')
quiver(0, 0,  b0(1),b0(2), 1,'Color','k','LineWidth',1)
text(b0(1)/2,b0(2)/2,'\leftarrowb0')

%% Task4
a=[3,4,5];
s=norm(a);
Lx=acos(a(1)./s)*180/pi
Ly=acos(a(2)./s)*180/pi
Lz=acos(a(3)./s)*180/pi
isequal(a(1)/s*a(1)/s+a(2)/s*a(2)/s+a(3)/s*a(3)/s,1)

%% Task5
a=[1,-2,0];
b=[0,1,1];
c=[1,2,2];
figure
grid on;
hold on;
view(3);
line([0; a(1)], [0;a(2)],[0;a(3)] ,'Color','b','LineWidth',4)
line([0; b(1)], [0;b(2)],[0;b(3)] ,'Color','b','LineWidth',4)
line([0; c(1)], [0;c(2)],[0;c(3)] ,'Color','b','LineWidth',4)
plot3(a(1),a(2),a(3),'>','LineWidth',4)
plot3(b(1),b(2),b(3),'>','LineWidth',4)
plot3(c(1),c(2),c(3),'>','LineWidth',4)
a0=a./norm(a);
b0=b./norm(b);
c0=c./norm(c);
line([0; a0(1)], [0;a0(2)],[0;a0(3)] ,'Color','r','LineWidth',4)
line([0; b0(1)], [0;b0(2)],[0;b0(3)] ,'Color','r','LineWidth',4)
line([0; c0(1)], [0;c0(2)],[0;c0(3)] ,'Color','r','LineWidth',4)
plot3(a0(1),a0(2),a0(3),'>','LineWidth',4)
plot3(b0(1),b0(2),b0(3),'>','LineWidth',4)
plot3(c0(1),c0(2),c0(3),'>','LineWidth',4)
line([0; 1], [0;0],[0;0] ,'Color','k','LineWidth',4)
line([0; 0], [0;1],[0;0] ,'Color','k','LineWidth',4)
line([0; 0], [0;0],[0;1] ,'Color','k','LineWidth',4)
plot3(1,0,0,'>','LineWidth',4)
plot3(0,1,0,'>','LineWidth',4)
plot3(0,0,1,'>','LineWidth',4)

%% Task6
p=[2,-3];
q=[1,2];
s=[9,4];
checkCollinear(p,q)
A=[p(1),q(1);p(2),q(2)];
x= A\(s');
m=x(1)
n=x(2)
mp=m.*p
nq=n.*q
figure
hold on;
grid on;

quiver(0, 0,  mp(1),mp(2), 1,'Color','k','LineWidth',1)
text(mp(1)/2,mp(2)/2,'\leftarrowmp')
quiver(0, 0,  nq(1),nq(2), 1,'Color','k','LineWidth',1)
text(nq(1)/2,nq(2)/2,'\leftarrownq')
quiver(0, 0,  p(1),p(2), 1,'Color','b','LineWidth',2)
text(p(1)/2,p(2)/2,'\leftarrowp')
quiver(0, 0,  q(1),q(2), 1,'Color','b','LineWidth',2)
text(q(1)/2,q(2)/2,'\leftarrowq')
quiver(0, 0,  s(1),s(2), 1,'Color','r','LineWidth',2)
text(s(1)/2,s(2)/2,'\leftarrows')
quiver(-5, 0,  15,0, 1,'Color','k','LineWidth',1)
text(0,10,'Y')
quiver(0, -5,  0,15, 1,'Color','k','LineWidth',1)
text(10,0,'X')
text(0,0,'O')
quiver(0, 0,  0,1, 1,'Color','k','LineWidth',3)
text(0,0.5,'\leftarrowj')
quiver(0, 0,  1,0, 1,'Color','k','LineWidth',3)
text(0.5,0,'\leftarrowi')
hold off;
%% Task7
a=[3,2];
b=[-2,1];
c=[4,-4];
figure
subplot(1,4,1);
grid on;
hold on;
quiver(0, 0,  a(1),a(2), 1,'Color','r','LineWidth',3)
text(a(1)/2,a(2)/2,'\leftarrowa')
quiver(0, 0,  b(1),b(2), 1,'Color','b','LineWidth',3)
text(b(1)/2,b(2)/2,'\leftarrowb')
quiver(0, 0,  c(1),c(2), 1,'Color','g','LineWidth',3)
text(c(1)/2,c(2)/2,'\leftarrowc')
quiver(-5, 0,  10,0, 1,'Color','k','LineWidth',1)
text(0,5,'Y')
quiver(0, -5,  0,10, 1,'Color','k','LineWidth',1)
text(5,0,'X')
text(0,0,'O')
quiver(0, 0,  0,1, 1,'Color','k','LineWidth',2)
text(0,0.5,'\leftarrowj')
quiver(0, 0,  1,0, 1,'Color','k','LineWidth',2)
text(0.5,0,'\leftarrowi')
%Creat A
subplot(1,4,2);
grid on;
hold on;
A=[b(1),c(1);b(2),c(2)];
x= A\(a')
m=x(1);
n=x(2);
mb=m.*b
nc=n.*c
quiver(0, 0,  mb(1),mb(2), 1,'Color','b','LineWidth',1)
text(mb(1)/2,mb(2)/2,'\leftarrowmb')
quiver(0, 0,  nc(1),nc(2), 1,'Color','b','LineWidth',1)
text(nc(1)/2,nc(2)/2,'\leftarrownc')
quiver(0, 0,  a(1),a(2), 1,'Color','r','LineWidth',2)
text(a(1)/2,a(2)/2,'\leftarrowa')
%Строим оси
quiver(-10, 0,  20,0, 1,'Color','k','LineWidth',1)
text(10,0,'X')
quiver(0, -5,  0,15, 1,'Color','k','LineWidth',1)
text(0,10,'Y')
text(0,0,'O')
quiver(0, 0,  0,1, 1,'Color','k','LineWidth',2)
text(0,0.5,'\leftarrowj')
quiver(0, 0,  1,0, 1,'Color','k','LineWidth',2)
text(0.5,0,'\leftarrowi')

%Creat B
subplot(1,4,3);
grid on;
hold on;
A=[a(1),c(1);a(2),c(2)];
x= A\(b')
m=x(1);
n=x(2);
ma=m.*a
nc=n.*c
quiver(0, 0,  ma(1),ma(2), 1,'Color','b','LineWidth',1)
text(ma(1)/2,ma(2)/2,'\leftarrowma')
quiver(0, 0,  nc(1),nc(2), 1,'Color','b','LineWidth',1)
text(nc(1)/2,nc(2)/2,'\leftarrownc')
quiver(0, 0,  b(1),b(2), 1,'Color','r','LineWidth',2)
text(b(1)/2,b(2)/2,'\leftarrowb')
%Строим оси
quiver(-2, 0,  4,0, 1,'Color','k','LineWidth',1)
text(2,0,'X')
quiver(0, -2,  0,4, 1,'Color','k','LineWidth',1)
text(0,2,'Y')
text(0,0,'O')
quiver(0, 0,  0,1, 1,'Color','k','LineWidth',2)
text(0,0.5,'\leftarrowj')
quiver(0, 0,  1,0, 1,'Color','k','LineWidth',2)
text(0.5,0,'\leftarrowi')

%Creat С
subplot(1,4,4);
grid on;
hold on;
A=[a(1),b(1);a(2),b(2)];
x= A\(c')
m=x(1);
n=x(2);
ma=m.*a
nb=n.*b
quiver(0, 0,  ma(1),ma(2), 1,'Color','b','LineWidth',1)
text(ma(1)/2,ma(2)/2,'\leftarrowma')
quiver(0, 0,  nb(1),nb(2), 1,'Color','b','LineWidth',1)
text(nb(1)/2,nb(2)/2,'\leftarrownb')
quiver(0, 0,  c(1),c(2), 1,'Color','r','LineWidth',2)
text(c(1)/2,c(2)/2,'\leftarrowc')
%Строим оси
quiver(-2, 0,  8,0, 1,'Color','k','LineWidth',1)
text(8,0,'X')
quiver(0, -5,  0,9, 1,'Color','k','LineWidth',1)
text(0,4,'Y')
text(0,0,'O')
quiver(0, 0,  0,1, 1,'Color','k','LineWidth',2)
text(0,0.5,'\leftarrowj')
quiver(0, 0,  1,0, 1,'Color','k','LineWidth',2)
text(0.5,0,'\leftarrowi')

%% Task 8
%Первый рисунок
figure
view(3)
grid on;
hold on;
a=[2,1,0];
b=[1,-1,2];
c=[2,2,-1];
d=[3,7,-7];
quiver3(0, 0, 0,  a(1),a(2), a(3), 1,'Color','r','LineWidth',3)
text(a(1)/2,a(2)/2,a(3)/2,'\leftarrowa')

quiver3(0, 0,0,  b(1),b(2),b(3), 1,'Color','b','LineWidth',3)
text(b(1)/2,b(2)/2,b(3)/2,'\leftarrowb')

quiver3(0, 0,0,  c(1),c(2),c(3), 1,'Color','y','LineWidth',3)
text(c(1)/2,c(2)/2,c(3)/2,'\leftarrowc')

quiver3(0, 0,0,  d(1),d(2),d(3), 1,'Color','g','LineWidth',3)
text(d(1)/2,d(2)/2,d(3)/2,'\leftarrowd')

%Cтроим оси
quiver(-5, 0,  10,0, 1,'Color','k','LineWidth',1)
text(0,5,'Y')
quiver(0, -5,  0,10, 1,'Color','k','LineWidth',1)
text(5,0,'X')
quiver3(0,0, -5, 0, 0,10, 1,'Color','k','LineWidth',1)
text(0,0,5,'Z')
text(0,0,'O')
quiver(0, 0,  0,1, 1,'Color','k','LineWidth',2)
text(0,0.5,'\leftarrowj')
quiver(0, 0,  1,0, 1,'Color','k','LineWidth',2)
text(0.5,0,'\leftarrowi')

%Второй рисунок
figure
view(3)
grid on;
hold on;
A=[b(1),c(1),d(1);b(2),c(2),d(2);b(3),c(3),d(3)];
x= A\(a')
m=x(1);
n=x(2);
k=x(3);
mb=m.*b;
nc=n.*c;
kd=k.*d;
quiver3(0, 0,0,  mb(1),mb(2),mb(3), 1,'Color','b','LineWidth',1)
text(mb(1)/2,mb(2)/2,mb(3)/2,'\leftarrowmb')
quiver3(0, 0,0,  nc(1),nc(2),nc(3), 1,'Color','b','LineWidth',1)
text(nc(1)/2,nc(2)/2,nc(3)/2,'\leftarrownc')
quiver3(0, 0,0,  kd(1),kd(2),kd(3), 1,'Color','b','LineWidth',1)
text(kd(1)/2,kd(2)/2,kd(3)/2,'\leftarrowmd')
quiver3(0, 0,0,  a(1),a(2),a(3), 1,'Color','r','LineWidth',1)
text(a(1)/2,a(2)/2,a(3)/2,'\leftarrowa')
-mb-nc-kd
%Строим оси
quiver(-5, 0,  10,0, 1,'Color','k','LineWidth',1)
text(0,5,'Y')
quiver(0, -5,  0,10, 1,'Color','k','LineWidth',1)
text(5,0,'X')
quiver3(0,0, -5, 0, 0,10, 1,'Color','k','LineWidth',1)
text(0,0,5,'Z')
text(0,0,'O')
quiver(0, 0,  0,1, 1,'Color','k','LineWidth',2)
text(0,0.5,'\leftarrowj')
quiver(0, 0,  1,0, 1,'Color','k','LineWidth',2)
text(0.5,0,'\leftarrowi')

%% Task 9
a=[1,-2,0];
b=[0,1,2];
c=[1,2,2];
isequal(dot(a,b),dot(b,a))
isequal(dot(a+b,c),dot(a,c)+dot(b,c))
isequal(dot(a,b+c),dot(a,b)+dot(a,c))
isequal(dot(2.*a,b),2.*dot(a,b))
isequal(dot(a,2.*b),2.*dot(a,b))
isequal(dot(a,a)>0,1)
isequal(dot(0,0)==0,1)

%% Task 10
a=[1,-2,0];
b=[0,1,2];
c=[1,2,2];

isequal(dot(a,b).*c,a.*dot(b,c))
isequal((dot([2,0,0],[2,1,0])==dot([2,0,0],[2,2,0])),([2,1,0]==[2,2,0]))
isequal(dot(a,b).*b,a.*dot(b,b))
%% 
function [res] = checkCollinear(A,B)
c=isequal(A./norm(A),B./norm(B))+isequal(-1.*A./norm(A),B./norm(B));
if c>0
    res=1;
else
    res=0;
end

end
%%кр
%% 

A=ones(7);
A(end-1,:)=3
%%
data = [1 2 3;4 5 6;7 8 9] ;
x=data(2,:)
x=data(:,3)
%%
 a=[2, -1;7, 3] ;
 b=[4 ,0 ,-3;-1, 5, 3];
 a*b
 %%
 A=[4, -1, 2;1, 1, -2;0, -1, 3];
 inv(A)
 
%%

a = [1 3 2 7;4 0 6 7;35 42 2 11];
b =[0 30 3 7;4 13 6 7;3 40 24 1;5 4 6 2];

a*b
%%
hold on;
quiver(0, 0, 4, 5, 1,'Color','g','LineWidth',5)
quiver(4, 5, -6, 3, 1,'Color','r','LineWidth',5)
quiver(-2, 8, 2, -8, 1,'Color','b','LineWidth',5)
%%
A=[-5,-5];
B=[1,2];
C=[5,-3];
AB=B-A;
BC=C-B;
AC=C-A;
figure
hold on
grid on
text(-5,-5,'\leftarrow A')
text(1,2,'\leftarrow B')
text(5,-3,'\leftarrow  C')
quiver(-5, -5, 6,7,1,'Color','b','LineWidth',1)
quiver(1, 2, 4,-5,1,'Color','g','LineWidth',1)
quiver(-5, -5, 10,2,1,'Color','r','LineWidth',1)
text(-2,-1.5,'\leftarrow AB')
text(3,-0.5,'\leftarrow BC')
text(0,-4,'\leftarrow  AC')
hold off;

%%
a=[1,-2,0];
b=[0,1,1];
c=[1,2,2];

dot(cross(a,b),c) == 0

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
line([0; a0(1)], [0;a0(2)],[0;a0(3)] ,'Color','r','LineWidth',5)
line([0; b0(1)], [0;b0(2)],[0;b0(3)] ,'Color','r','LineWidth',5)
line([0; c0(1)], [0;c0(2)],[0;c0(3)] ,'Color','r','LineWidth',5)
plot3(a0(1),a0(2),a0(3),'>','LineWidth',4)
plot3(b0(1),b0(2),b0(3),'>','LineWidth',4)
plot3(c0(1),c0(2),c0(3),'>','LineWidth',4)
line([0; 1], [0;0],[0;0] ,'Color','k','LineWidth',4)
line([0; 0], [0;1],[0;0] ,'Color','k','LineWidth',4)
line([0; 0], [0;0],[0;1] ,'Color','k','LineWidth',4)
plot3(1,0,0,'>','LineWidth',4)
plot3(0,1,0,'>','LineWidth',4)
plot3(0,0,1,'>','LineWidth',4)

%%
a=[4;3;5] ;
b=[3;2;1];
c=a+b;
a+b==b+a
isequal(a+b,b+a)
figure
view(3);
hold on
quiver3(0, 0,0, 4,3,5,1,'Color','r','LineWidth',1)
text(a(1)/2,a(2)/2,a(3)/2,'\leftarrow \bfa')
quiver3(4, 3,5, 3,2,1,1,'Color','b','LineWidth',1)
text((2*a(1)+b(1))/2,(2*a(2)+b(2))/2,(2*a(3)+b(3))/2,'\leftarrow \bfb')
quiver3(0, 0,0, 7,5,6,1,'Color','g','LineWidth',1)
text(c(1)/2,c(2)/2,c(3)/2,'\leftarrow \bfa+b')
figure
view(3);
hold on
quiver3(3, 2,1, 4,3,5,1,'Color','r','LineWidth',1)
text((a(1)+2*b(1))/2,(a(2)+2*b(2))/2,(a(3)+2*b(3))/2,'\leftarrow \bfa')

quiver3(0, 0,0, 3,2,1,1,'Color','b','LineWidth',1)
text(b(1)/2,b(2)/2,b(3)/2,'\leftarrow \bfb')
quiver3(0, 0,0, 7,5,6,1,'Color','g','LineWidth',1)
text(c(1)/2,c(2)/2,c(3)/2,'\leftarrow \bfa+b')
%%
a=[1,-2,3];
b=[0,4,2];
c=[5,6,7];

isequal(dot(a,b).*c,a.*dot(b,c))
isequal(dot([2,0,0],[2,1,0]),dot([2,0,0],[2,2,0]))
isequal((dot([2,0,0],[2,1,0])==dot([2,0,0],[2,2,0])),([2,1,0]==[2,2,0]))
isequal(dot(a,b).*b,a.*dot(b,b))

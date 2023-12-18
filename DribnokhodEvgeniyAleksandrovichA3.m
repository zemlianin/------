%Дрибноход Евгений
%%
% Task1
 line([0; 2],[0; 1], 'Color','r','LineWidth',1)


 line([0; -1],[0; 2], 'Color','k','LineWidth',4)
 line([-2; 0],[4; 0], 'Color','g','LineWidth',1)
%%
% Task2
figure
 line([0 0 0;2 2 3],[0 2 2; 1 0 0], 'Color','r','LineWidth',1)

%%
% Task3
figure
subplot(1,4,3);
 line([0 0 0;2 2 3],[0 2 2; 1 0 0], 'Color','r','LineWidth',1)
subplot(1,4,1);
 line([0; 2],[0; 1], 'Color','b','LineWidth',1)
subplot(1,4,2);
line([0; 2],[2; 0], 'Color','g','LineWidth',1)
subplot(1,4,4);
line([0; 3],[2; 0], 'Color','k','LineWidth',1)

%%
%Task4
figure
hold on;
quiver(0, 0, 2, 1, 1,'Color','k','LineWidth',3)
quiver(0, 2, 2, -2, 1,'Color','k','LineWidth',3)
quiver(0, 2, 3, -2, 1,'Color','k','LineWidth',3)
hold off;
%%

%Task5
figure
hold on
view(3);
quiver3(0, 0, 0, 1,0,0, 1,'Color','k','LineWidth',3)
quiver3(0, 0, 0, 0,0,1, 1,'Color','k','LineWidth',3)
quiver3(0, 0, 0, 0,1,0, 1,'Color','k','LineWidth',3)
hold off;

%%
%Task6
figure
hold on

set(gca,'LineWidth',2)
quiver(0, 0, 1,0, 1,'Color','k','LineWidth',3);
quiver(0, 0, 0,1, 1,'Color','k','LineWidth',3);

hold off
%%

%Task7
figure
hold on
set(gca,'LineWidth',2)
view(3);
quiver3(0, 0, 0, 1,0,0, 1,'Color','k','LineWidth',5)
quiver3(0, 0, 0, 0,0,1, 1,'Color','k','LineWidth',5)
quiver3(0, 0, 0, 0,1,0, 1,'Color','k','LineWidth',5)
hold off
%%

%Task8a
figure
hold on
grid on


axis equal
line([-1;2],[ 3;-5], 'Color','k','LineWidth',4)
axis([-2 3 -6 4])

text(2,-5,'\leftarrow(2,-5)')
text(-1,3,'\leftarrow(-1,3)')

hold off
%%

%Task8b
figure
hold on
grid on

axis equal
line([1,4;2,3],[-1,0;-3,-5],'Color','g','LineWidth',2)
axis([0 5 -6 1 ])

text(4,0,'\leftarrow(4,0)')
text(3,-5,'\leftarrow(3,-5)')
text(2,-3,'\leftarrow(2,-3)')
text(1,-1,'\leftarrow(1,-1)')

hold off
%%

%Task9
A=[-2,0];
B=[1,2];
C=[1,-1];
AB=B-A
BC=C-B
CA=A-C
figure
hold on
grid on
axis([-3 2 -2 3 ])
text(-2,0,'\leftarrow A(-2,0)')
text(1,2,'\leftarrow B(1,2)')
text(1,-1,'\leftarrow  C(1,-1)')
%line(AB,'Color','g','LineWidth',4)
quiver(-2, 0, 3,2,1,'Color','b','LineWidth',1)
quiver(1, 2, 0,-3,1,'Color','b','LineWidth',1)
quiver(1, -1, -3,1,1,'Color','r','LineWidth',1)
hold off;

%%

%Task10
A=[-2 0];
B = [1 2];
C=[1 -1];
D=B+C-B+A-B
figure
subplot(1,2,1);
hold on
grid on
AB=B-A
BC=C-B
CD=D-C
DA=A-D
DC=-1*CD;
AD=-1*DA;
axis([-3 2 -4 3 ])
AB==DC
AD==BC
AC=C-A
%Так как векторы равны, они сонаправлены и коллинеарны
line([-2,1,1,-2;1,1,-2,-2],[0,2,-1,-3;2,-1,-3,0])
text(-2,0,'\leftarrow A(-2,0)')
text(1,2,'\leftarrow B(1,2)')
text(1,-1,'\leftarrow C(1,-1)')
text(-2,-3,'\leftarrow D(-2,-3)')
hold off

subplot(1,2,2);
hold on
grid on;
axis([-3 2 -4 3 ])
text(-2,0,'\leftarrow A(-2,0)')
text(1,2,'\leftarrow B(1,2)')
text(1,-1,'\leftarrow C(1,-1)')
text(-2,-3,'\leftarrow D(-2,-3)')
quiver(-2, 0, 3,2,1,'Color','b','LineWidth',1)
quiver(1, 2, 0,-3,1,'Color','k','LineWidth',1)
quiver(-2, -3, 3,2,1,'Color','k','LineWidth',1)
quiver(-2, 0, 0,-3,-1,'Color','b','LineWidth',1)
quiver(-2, 0, 3,-1,1,'Color','r','LineWidth',1)
hold off

%%
%Task11
a1=[2,4,6];
b1=[3,5,2];
a2=[7,6,5];
b2=[3,5,2];
figure
subplot(1,2,1);
hold on
grid on
view(3);
sum=a1+b1

%axis([-3 2 -4 3 ])
quiver3(0,0,0,2,4,6,1,'Color','b','LineWidth',1)
quiver3(2,4,6,3,5,2,1,'Color','b','LineWidth',1)
quiver3(0,0,0,5,9,8,1,'Color','r','LineWidth',1)

text(1,2,3,'\leftarrow \bf а1')
text(1.5+2,2.5+4,1+6,'\leftarrow \bf b1')
text(2.5,4.5,4,'\leftarrow \bf sum')
hold off


subplot(1,2,2);
hold on
view(3);
grid on;
dif=a2-b2

quiver3(0,0,0,7,6,5,1,'Color','b','LineWidth',1)
quiver3(0,0,0,3,5,2,1,'Color','b','LineWidth',1)
quiver3(3,5,2,4,1,3,1,'Color','r','LineWidth',1)


text(3.5,3,2.5,'\leftarrow \bf а2')
text(1.5,2.5,1,'\leftarrow \bf b2')
text(2+3,0.5+5,1.5+2,'\leftarrow \bf dif')

hold off





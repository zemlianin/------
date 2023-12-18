%Dribnokhod Evgeniy matan sem2
%% 
%Task1
[x,fval1] =fsolve(@Main1,[1, 1]);
ans1a=x
[x,fval2] =fsolve(@Main2,[1, 1,0]);
ans1b=x
%%



%Task2
syms x ;
limit((10+x)^(1/x),x,0,'left')
syms x ;
limit((10+x)^(1/x),x,0,'right')
%% 

%Task3
syms x dx;
diff(atan(x),x)
limit((atan(x+dx)-atan(x))/dx,dx,0)
%%


%Task4
syms x;
limit((9*x^2-1)/(x+1/3),x,(-1/3) )
%%


%Task5
syms x;
diff((3*cos(5*x^2))^3,x)
%%


%Task6
syms x y z;
ansXXa=diff(diff(sin(x+2*y)+2*sqrt(x*y*z),x),x)
ansYYa=diff(diff(sin(x+2*y)+2*sqrt(x*y*z),y),y)
ansZZa=diff(diff(sin(x+2*y)+2*sqrt(x*y*z),z),z)
ansXYa=diff(diff(sin(x+2*y)+2*sqrt(x*y*z),x),y)
ansXZa=diff(diff(sin(x+2*y)+2*sqrt(x*y*z),x),z)
ansYZa=diff(diff(sin(x+2*y)+2*sqrt(x*y*z),y),z)


ansXXb=diff(diff(log(3-x*x)+(x*y*y*z),x),x)
ansYYb=diff(diff(log(3-x*x)+(x*y*y*z),y),y)
ansZZb=diff(diff(log(3-x*x)+(x*y*y*z),z),z)
ansXYb=diff(diff(log(3-x*x)+(x*y*y*z),x),y)
ansXZb=diff(diff(log(3-x*x)+(x*y*y*z),x),z)
ansYZb=diff(diff(log(3-x*x)+(x*y*y*z),y),z)



ansXXc=diff(diff(x*x-atan(y+z*z*z),x),x)
ansYYc=diff(diff(x*x-atan(y+z*z*z),y),y)
ansZZc=diff(diff(x*x-atan(y+z*z*z),z),z)
ansXYc=diff(diff(x*x-atan(y+z*z*z),x),y)
ansXZc=diff(diff(x*x-atan(y+z*z*z),x),z)
ansYZc=diff(diff(x*x-atan(y+z*z*z),y),z)


ansXXd=diff(diff(x*x*x*y*y*z+3*x-5*y+z+2,x),x)
ansYYd=diff(diff(x*x*x*y*y*z+3*x-5*y+z+2,y),y)
ansZZd=diff(diff(x*x*x*y*y*z+3*x-5*y+z+2,z),z)
ansXYd=diff(diff(x*x*x*y*y*z+3*x-5*y+z+2,x),y)
ansXZd=diff(diff(x*x*x*y*y*z+3*x-5*y+z+2,x),z)
ansYZd=diff(diff(x*x*x*y*y*z+3*x-5*y+z+2,y),z)
%производная для ZX = XZ ,ZY=YZ,XY=YX

%%

%Task7
syms x;
y1=limit(sin(x)/x,x,0)
y2=limit((1-exp(-x))/x,x,inf)
y3=limit((1-x)/log(x),x,1)
%%
%Task8
syms x;
f=(x*x*cos(2*x));
for i= 1:5
f=diff(f,x);
end
y=f
%%

%Task9
syms x;
limit(1-exp(-x)/x,x,inf)
%%

%Task10
syms x a n;
y=diff(exp(-a*x^5)+log(a^n+x^a)-a*n/x^3,x)

%%

function F = Main1(x)
F(1)=x(1)*x(1)-2*x(2)*x(2)+1;  
F(2)=-3*x(1)*x(1)+x(2)*x(2)+2;
F(3)=x(1)*x(1)*x(1)+x(2)*x(2)*x(2)-2;
end

function F = Main2(x)
F(1)=x(1)*x(1)-2*x(2)*x(2)+x(3)+1;  
F(2)=-3*x(1)*x(1)+x(2)*x(2)+x(3)+2;

end

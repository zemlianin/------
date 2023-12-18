%% Dribnokhod Evgeniy Aleksandrovich
%% Task1
A=[1 1 1;1 3 1;1 1 3];
b=[2;4;0];
[U,S,V] = svd(A);
x=U*inv(S)*V'*b
round(A*x-b,5)==0
%% Task2
A=[1 1 1;1 3 1;1 1 3];
b=[2;4;0];
R = chol(A) ;
L = chol(A,'lower') ;
y=L\b;
x=R\y
round(A*x-b,5)==0
%% Task3
A=[1 1 1;1 3 1;1 1 3];
b=[2;4;0];
tau=0.1;
x=[0;0;0];
n=250;
for i=1:n 
    r=b-A*x;
    x=x+r*tau;
end
x
round(A*x-b,4)==0
%% Task4
clc;
clear;
A=[6 4 0;1 3 1;1 1 3];
b=[16;4;0];
x0=[0;0;0];
n=2000;
eps=0.0001;
for i=1:length(b) 
    for j=1:length(b) 
        beta(i)=b(i)/A(i,i);
        if i==j
           newa(i,j)=0;
        else
            newa(i,j)=-A(i,j)/A(i,i);
        end
    end
end
x1=x0;
ncount=0;
beta=beta';
flag = true;
while flag
    ncount=ncount+1;
x1=beta+newa*x0;
max=abs(x0(1)-x1(1));
for i=2:length(x0) 
    if abs(x0(i)-x1(i))>max
        max=abs(x0(i)-x1(i));
    end
end
if (max<eps) || (ncount>n)
    x=x1;
    x
    round(A*x-b,3)==0
    flag=false;
else
    x0=x1;
end
end
%% Task5
clc;
clear;
A=[1 1 1;1 3 1;1 1 3];
b=[2;4;0];
x0=[0;0;0];
n=2000;
eps=0.0001;
F=A'*A;
H=A'*b;
for i=1:length(b) 
    for j=1:length(b) 
        beta(i)=H(i)/F(i,i);
        if(i==j)
            newa(i,j)=0;
        else
            newa(i,j)=-F(i,j)/F(i,i);

        end
    end
end
x1=x0;
ncount=0;
beta=beta';
flag = true;
while flag
    ncount=ncount+1;
    for i=1:length(b) 
        s=0;
        for j=1:length(b) 
            s=s+newa(i,j)*x1(j);
        end
       x1(i)=beta(i)+s;
    end
    max=abs(x0(1)-x1(1));
for i=2:length(x0) 
    if abs(x0(i)-x1(i))>max
        max=abs(x0(i)-x1(i));
    end
end
    if (max<eps) || (ncount>n)
        x=x1;
        x
        flag=false;
         round(A*x-b,2)==0
    else
        x0=x1;
    end
end
%% Task6
clc;
clear;
A=[1 1 1;1 3 1;1 1 3];
b=[2;4;0];

x0=[0;0;0];
n=45;
eps=0.00001;
F=A'*A;
H=A'*b;
w=1.4;
for i=1:length(b) 
    for j=1:length(b) 
        beta(i)=H(i)/F(i,i);
        if i==j
            newa(i,j)=0;
        else
            newa(i,j)=-F(i,j)/F(i,i);
        end
    end
end
x1=x0;
ncount=0;
beta=beta';
flag = true;
while flag
    ncount=ncount+1;
    for i=1:length(b) 
        s=0;
        for j=1:length(b) 
            s=s+newa(i,j)*x1(j);
        end
    x1(i)=beta(i)+s+(w-1)*(beta(i)+s-x0(i));

    end
    max=abs(x0(1)-x1(1));
    for i=2:length(x0) 
        if abs(x0(i)-x1(i))>max
            max=abs(x0(i)-x1(i));
        end
    end
    if (max<eps) || (ncount>n)
        x=x1;
        x
        round(A*x-b,2)==0
        flag=false;
    else
        x0=x1;
    end
end
%% Task7
clc;
clear;
A=[1 1 1;1 3 1;1 1 3];
b=[2;4;0];
n=45;
eps=0.00001;
x=b
flag = true;
while flag
    R=A*x-b;
    M=dot(R,A*A'*R)/dot(A*A'*R,A*A'*R);
    x=x-M*A'*R;
    if max(abs(R))<eps
        x
        flag=false;
        round(A*x-b,4)==0
    end
end

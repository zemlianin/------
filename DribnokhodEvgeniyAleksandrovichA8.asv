%% Dribnokhod Evgeniy
%% Task1
A = [5 0 -3 0 0;
    1 3 0 -1 0;
    0 1 7 0 -2;
    0 0 1 22 0;
    0 0 0 1 8];
AN=sparse(A)
B=full(AN)
%% Task2

irow=[1 2 2 3 1 3 4 2 4 5 3 5];
jcol=[1 1 2 2 3 3 3 4  4   4   5   5] ;
nzer=[  5 1 3 1 -3 7 1 -1 22 1 -2 8];
m=5;
n=5;
AN=sparse(irow,jcol,nzer,m,n);
B=full(AN)
whos B AN
%% Task3
A = [5 0 -3 0 0;
    1 3 0 -1 0;
    0 1 7 0 -2;
    0 0 1 22 0;
    0 0 0 1 8];
AN=sparse(A);
[ir,jr,nz]=find(AN);
nz
%% Task4
clc
clear
s = load ('matrix.dat') ;
A=spconvert(s)
full(A)
%% Task5
A = [5 0 -3 0 0;
    1 3 0 -1 0;
    0 1 7 0 -2;
    0 0 1 22 0;
    0 0 0 1 8];
n=5;
m=5;
[B,d]=spdiags(A)
 T=spdiags(B,d,n,m) 
 T=full(T);
T==A
%% Task6 
B=[4 1 0 0 1 0;
    1 4 1 0 0 0;
    0 1 4 0 0 0;
    0 0 0 4 0 1;
    1 0 0 0 4 1;
    0 0 0 1 1 4];
B1=sparse(B);
[B2,d]=spdiags(B)

A1=spdiags(B2,d,6,6);
A2=full(B1);
B==A1
B==A2
C=[B2;d'];
whos B B1 C
%% Task7
B=[4 1 0 0 1 0;
    1 4 1 0 0 0;
    0 1 4 0 0 0;
    0 0 0 4 0 1;
    1 0 0 0 4 1;
    0 0 0 1 1 4];
spy(B)

%% Task8
B=[4 1 0 0 1 0;
    1 4 1 0 0 0;
    0 1 4 0 0 0;
    0 0 0 4 0 1;
    1 0 0 0 4 1;
    0 0 0 1 1 4];

b=symrcm(B)
Bs=full(B(b,b))
figure
spy(Bs)
figure
spy(B)

%% Task9
B=[7 1 1 1 1;
    1 7 0 0 0;
    1 0 7 0 0;
    1 0 0 7 0;
    1 0 0 0 7]

UBch = chol(B)
LBch= chol(B,"lower")
b=symrcm(Bch)
Bs=full(B(b,b))

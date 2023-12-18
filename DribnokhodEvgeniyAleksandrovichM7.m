%% Dribnokhod Evgeniy Aleksandrovich
%% Task1
func = @(x) sin(x)-x.^3.*cos(x);
quad(func,-5 ,0 ,1.0e-05)

%% Task2
func2 = @(x) x.*x.*x+1;
quad(func2,2,4)
%% Task3
dblquad('exp(-x).*sin(y)',-pi,pi,0,2) 
func3 = @(x,y) exp(-x).*sin(y);
integral2(func3,-pi,pi,0,2) 

%% Task4
%z(x,y)=sin(x)*cos(y)*(1-y2)*x*(1-x) ;
dblquad('sin(x).*cos(y).*(1-y*y).*x.*(1-x)',-2,2,-2,2) 

%% Task5

triplequad('exp(-x).*sin(y).*cos(z)',-pi,pi,-2*pi,pi,0,1) 
func5 = @(x,y,z) exp(-x).*sin(y).*cos(z);
integral3(func5,-pi,pi,-2*pi,pi,0,1)
%% Task6
triplequad('exp(x).*(sin(y)).^2+exp(-x).*(cos(y)).^2+sin(y).*cos(x).*z' ...
    ,-2*pi,2*pi,-2*pi,2*pi,-3,3)
%% Task7
func7 = @(x) 1./x;
quad(func7,0,1)
quadl(func7,0,1)
quadgk(func7,0,1)

%% Task8
a=20;
b=7;
func8 = @(x,y) a.*cos(x).*x.^2+b.*sin(y).*y.^2;
dblquad(func8, -2, 2,-2,2, 1.0e-05)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Task9
f = inline('x*a.^2+a+1');
quad(f,0,10,1.0e-05,0,3)

%% Task10
find = @(x) exp(x).*(sin(x)-cos(x));
Fy = @(y) quad(find,0,y);

figure

fplot(Fy,[1 5])

%% Task11
func11 =@(x)  cos(x-sqrt(2)).*exp(2.*sin(x))-1
fplot(func11);

quad(func11,fzero(func11,0),fzero(func11,3))
%% Task12
func12 = @(x) sin(x)-x.^2.*(cos(x))
func122 = @(x) -1*(sin(x)-x.^2.*(cos(x)))

quad(func12,fminbnd(func122,-5 ,0),fminbnd(func12,-5 ,0))
fplot(func12,[fminbnd(func122,-5 ,0) fminbnd(func12,-5 ,0)])
%% Вычислите интеграл от функции 
% y=sin(x)-x^2*(cos(x)) по промежутку 
% между её локальным максимумом и локальным
% минимумом, абсциссы которых принадлежат 
% отрезку [-5, 0]. Постройте график
% этой функции на указанном участке.
%% 
%function f = Fy(y)
%f=quad(@fint,0,y);
%end
%function f = find(x)
%f=exp(x).*(sin(x)-cos(x));
%end





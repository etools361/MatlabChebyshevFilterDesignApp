
% A=[1, 2; -1, -2];   
% % ode_func = @ (X) (-X*X-A);
% ode_func = @(X) reshape( - reshape(X,2,2).^2 - A, [], 1);
% Y0 = [1, 1; 1, 1]; T0=0; Tf=100;
% Y=zeros(2,2); 
% [T,Y] = ode45(@(t,y) ode_func(y), [T0,Tf], Y0(:));
% 
% T
% Y
n = 5;
x = [];
y = [];
for k=0:2*n-1
    phi = (2*k-1)*pi/2/n;
    x(k+1) = sin(phi);
    y(k+1) = cos(phi);
end
plot(y, x, '*r');
hold on;
t  = linspace(0, 2*pi, 100);
x0 = sin(t);
y0 = cos(t);
hold on;
plot(x0, y0, '-b');
hold off;
grid on;
axis square

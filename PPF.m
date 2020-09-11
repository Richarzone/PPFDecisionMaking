clear;
close all;

X = 0:1:20;
y = -.0375.*X.^2+15;
Y = floor(y);
p = polyfit(X,y,2);
T = table(X',Y' ,'VariableNames',{'X','Y'});

disp(T);

figure(1)
hold on;
plot(X,y)
plot(X,Y,'o');
grid;
xlabel('Comida') 
ylabel('Madera')
legend({'FPP'})
hold off;

figure(2)
x2 = log2(X+1);
y2 = log2(Y+1);
z2 = x2+y2;
plot3(x2,y2,z2,'o');
xlabel('x') 
ylabel('y')
zlabel('Valor de decision')
legend({'log2(X+1) + log2(Y+1)'})
xlim([0 5])
ylim([0 5])
grid;


%% Codigo para ver las graficas de X y Y individualmente. Quitar %{ %} para descomentar.

figure(3)
plot(y2)
hold on;
plot(y2,'o');
xlabel('y') 
ylabel('Valor de decision')
legend({'log2(Y+1)'})

figure(4)
plot(x2)
hold on;
plot(x2,'o');
xlabel('y') 
ylabel('Valor de decision')
legend({'log2(X+1)'})


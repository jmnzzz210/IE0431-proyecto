%% Obtener los valores para la obtención del modelo de la planta
data = readmatrix("150_120_CQRobot.csv");

t = data(:,1); %tiempo
u = data(:,2); %señal de control
y = data(:,3); %señal de salida


figure(1);
plot(t,u,t,y,'LineWidth',1.5);
xlabel('Tiempo (s)','FontSize',14);
ylabel('Amplitud de la señal','FontSize',14);
legend('u(t)', 'y(t)','FontSize',14);
title('Señal de control y salida del motor CQ Robot cambio de 150 a 120', 'FontSize',18);
grid on;


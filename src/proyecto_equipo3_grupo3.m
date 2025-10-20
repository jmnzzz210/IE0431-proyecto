%% Obtener los valores para la obtención del modelo de la planta
data = readmatrix("../Data/150_120_CQRobot.csv");

t = data(:,1); %tiempo
r = data(:,2); %señal de referencia
y = data(:,3); %señal de salida

%% Gráfica de la salida del sistema
figure(1);
plot(t,r,t,y,'LineWidth',1.5);
xlabel('Tiempo (s)','FontSize',14);
ylabel('Amplitud de la señal','FontSize',14);
legend('r(t)', 'y(t)','FontSize',14);
title('Señal de control y salida del motor CQ Robot cambio de 150 a 120', 'FontSize',18);
grid on;

%% Eliminar el "dc offset"
r_sindc = r - mean(r);
y_sindc = y - mean(y);
Ts = t(2) - t(1);

%% Gráfica de la salida del sistema sin DC offset
figure(2);
plot(t, r_sindc, t, y_sindc, 'LineWidth',1.5);
xlabel('Tiempo (s)', 'FontSize',14);
ylabel ('Amplitud de la señal', 'FontSize',14);
legend ('r(t)', 'y(t)', 'FontSize',14);
legend ('r(t)', 'y(t)', 'FontSize',14);
title ('Señal de control y salida del motor sin DC offset', 'FontSize',18);
grid on;

%% Abrir el system Identification
systemIdentification();

%% 
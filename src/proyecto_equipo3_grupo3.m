%% Obtener los valores para la obtención del modelo de la planta
data = readmatrix("../Data/150_120_CQRobot.csv");

t = data(:,1); %tiempo
u = data(:,2); %señal de referencia
y = data(:,3); %señal de salida

%% Gráfica de la salida del sistema
figure(1);
plot(t,u,t,y,'LineWidth',1.5);
xlabel('Tiempo (s)','FontSize',14);
ylabel('Amplitud de la señal','FontSize',14);
legend('u(t)', 'y(t)','FontSize',14);
title('Señal de control y salida del motor CQ Robot cambio de 150 a 120', 'FontSize',18);
grid on;

%% Eliminar el "dc offset
muestras_iniciales = min(100, length(t));
dc_offset_u = mean(u(1:muestras_iniciales));
dc_offset_y = mean(y(1:muestras_iniciales));

u_sindc = u - dc_offset_u - 10;
y_sindc = y - dc_offset_y - 5;

Ts = t(2) - t(1);

%% Gráfica de la salida del sistema sin DC offset
figure(2);
plot(t, u_sindc, t, y_sindc, 'LineWidth',1.5);
xlabel('Tiempo (s)', 'FontSize',14);
ylabel ('Amplitud de la señal', 'FontSize',14);
legend ('u(t)', 'y(t)', 'FontSize',14);
title ('Señal de control y salida del motor sin DC offset', 'FontSize',18);
grid on;

%% Abrir el system Identification
systemIdentification();
% Colocar en el data las entradas de u_sindc y la salida de y_sindc, el
% tiempo de inicio es 20 y el Ts es 0.0326, en el process model se coloca
% primer orden con delay o un segundo orden con delay, da igual

%% Método de mínimos cuadrados

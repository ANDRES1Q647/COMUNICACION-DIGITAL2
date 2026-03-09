clc;
clear;
close all;

%% Leer muestras.txt ignorando encabezado
muestras = readmatrix('muestras600_2048.txt', 'NumHeaderLines', 1);
t = muestras(:,1);
v = muestras(:,2);

figure;
plot(t, v, 'b', 'LineWidth', 1.2);
hold on;
stem(t, v, 'r', 'filled');
grid on;
xlabel('Tiempo (s)');
ylabel('Voltaje (V)');
title('Señal muestreada en el dominio del tiempo');
legend('plot','stem');
xlim([t(1) t(1)+0.01]);

%% Leer fft.txt ignorando encabezado
fft_data = readmatrix('fft600_2048.txt', 'NumHeaderLines', 1);
f = fft_data(:,1);
mag = fft_data(:,2);

figure;
plot(f, mag, 'g', 'LineWidth', 1.5);
grid on;
xlabel('Frecuencia (Hz)');
ylabel('Magnitud (V)');
title('Espectro de la señal');
xlim([0 max(f)]);


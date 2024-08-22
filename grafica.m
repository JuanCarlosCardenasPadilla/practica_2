%   Función ODE45 que resuelve numéricamente
[t,z]=ode45(@dp,[0 15],[0 0 0.610865 0]);

%   Gráfica del sistema:
figure(1)
plot(t,z(:,1));
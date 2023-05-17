[t,x] = ode45(@ElectMeca, [0 10], [0 0 0]);
figure(1)
plot(t, x(:,3));
grid on
title("Sistema Electromecanico");
xlabel("Tiempo");
ylabel("Velocidad");

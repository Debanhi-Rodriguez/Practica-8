function dx=ElectMeca(t,x)

%------------Definicion de los parametros------------%
R = 2; %Ohms
L = 23e-3;
Kt = 0.01;
Ke = 0.01;
B = 12e-4;
J = 1e-3;
Vin = 24*0.25; %Volts

dx = zeros(3,1);

%--------Definición de la dinámica del sistema--------%
dx(1) = (1/L)*((-R*x(1))-(Ke*x(3))+Vin);
dx(2) = x(3);
dx(3) = (1/J)*((-B*x(3))+(Kt*x(1)));
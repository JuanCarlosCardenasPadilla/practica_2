function dy=dp(t,z)

%   Parámetros:
m1 = 0.2;
l1 = 0.3;
m2 = 0.1;
l2 = 0.25;
g = 9.81;
c1 = 0.2;

%   Vectores:
dy = zeros(4,1);

%   Dinámica del sistema:
dy(1) = z(2);

dy(2) = (-(m2*l1*((z(2))^2)*sin(z(3)-z(1))*cos(z(3)-z(1)))-(m2*g*sin(z(3)) ...
    *cos(z(3)-z(1)))-(m2*l2*((z(4))^2)*sin(z(3)-z(1)))+((m1+m2)*g*sin(z(1))) ...
    +(c1*(z(2))))/((m2*l1*((cos(z(3)-z(1)))^2))-((m1+m2)*l1));

dy(3) = z(4);

dy(4) = ((((m2*l2)/(m1+m2))*((z(4))^2)*sin(z(3)-z(1))*cos(z(3)-z(1))) ...
    -(g*sin(z(1))*cos(z(3)-z(1)))-((c1*(z(2))*cos(z(3)-z(1)))/(m1+m2)) ...
    +(l1*((z(2))^2)*sin(z(3)-z(1)))+(g*sin(z(3))))/((((cos(z(3)-z(1)))^2) ...
    *((m2*l2)/(m1+m2)))-(l2));
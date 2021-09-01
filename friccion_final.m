%% 130

%0.0

clc;clear;clf

% gráfica pendiente
load("perfil_popo.mat")
p = polyfit(popocatepetl_final(:,1),popocatepetl_final(:,3),4);

x=0:1:2500;
y=p(1,1)*x.^4+p(1,2)*x.^3+p(1,3)*x.^2+p(1,4)*x+p(1,5);

plot(x,y)
hold on

m=100;
g=9.8;
vin=130;
angulo=60*pi/180;

vxin=vin*cos(angulo);
vyin=vin*sin(angulo);

xin=0;
yin=p(1,5);

xt=xin;
yt=yin;

xp(1,1)=xin;
yp(1,1)=yin;
vx(1,1)=vxin;
vy(1,1)=vyin;

i=1;

dt=0.01;

y_linea=p(1,1)*xp(1,1)^4+p(1,2)*xp(1,1)^3+p(1,3)*xp(1,1)^2+p(1,4)*xp(1,1)+p(1,5);
while yt>=y_linea
    i=i+1;
    xp(i,1)=xp(i-1,1)+dt*vx(i-1,1);
    yp(i,1)=yp(i-1,1)+dt*vy(i-1,1);
    vx(i,1)=vx(i-1,1)+dt*(-0*sqrt((vx(i-1,1)^2)+(vy(i-1,1))^2)*vx(i-1,1)/m);
    vy(i,1)=vy(i-1,1)+dt*(-0*sqrt((vx(i-1,1)^2)+(vy(i-1,1))^2)*vy(i-1,1)/m-9.8);
    y_linea=p(1,1)*xp(i,1)^4+p(1,2)*xp(i,1)^3+p(1,3)*xp(i,1)^2+p(1,4)*xp(i,1)+p(1,5);
    yt=yp(i,1);
end
plot(xp,yp)

%0.01

clc;clear

% gráfica pendiente
load("perfil_popo.mat")
p = polyfit(popocatepetl_final(:,1),popocatepetl_final(:,3),4);

x=0:1:12500;
y=p(1,1)*x.^4+p(1,2)*x.^3+p(1,3)*x.^2+p(1,4)*x+p(1,5);
m=100;
g=9.8;
vin=130;
angulo=60*pi/180;

vxin=vin*cos(angulo);
vyin=vin*sin(angulo);

xin=0;
yin=p(1,5);

xt=xin;
yt=yin;

xp(1,1)=xin;
yp(1,1)=yin;
vx(1,1)=vxin;
vy(1,1)=vyin;

i=1;

dt=0.01;

y_linea=p(1,1)*xp(1,1)^4+p(1,2)*xp(1,1)^3+p(1,3)*xp(1,1)^2+p(1,4)*xp(1,1)+p(1,5);
while yt>=y_linea
    i=i+1;
    xp(i,1)=xp(i-1,1)+dt*vx(i-1,1);
    yp(i,1)=yp(i-1,1)+dt*vy(i-1,1);
    vx(i,1)=vx(i-1,1)+dt*(-0.01*sqrt((vx(i-1,1)^2)+(vy(i-1,1))^2)*vx(i-1,1)/m);
    vy(i,1)=vy(i-1,1)+dt*(-0.01*sqrt((vx(i-1,1)^2)+(vy(i-1,1))^2)*vy(i-1,1)/m-9.8);
    y_linea=p(1,1)*xp(i,1)^4+p(1,2)*xp(i,1)^3+p(1,3)*xp(i,1)^2+p(1,4)*xp(i,1)+p(1,5);
    yt=yp(i,1);
end
plot(xp,yp)

%0.02

clc;clear

% gráfica pendiente
load("perfil_popo.mat")
p = polyfit(popocatepetl_final(:,1),popocatepetl_final(:,3),4);

x=0:1:12500;
y=p(1,1)*x.^4+p(1,2)*x.^3+p(1,3)*x.^2+p(1,4)*x+p(1,5);
m=100;
g=9.8;
vin=130;
angulo=60*pi/180;

vxin=vin*cos(angulo);
vyin=vin*sin(angulo);

xin=0;
yin=p(1,5);

xt=xin;
yt=yin;

xp(1,1)=xin;
yp(1,1)=yin;
vx(1,1)=vxin;
vy(1,1)=vyin;

i=1;

dt=0.01;

y_linea=p(1,1)*xp(1,1)^4+p(1,2)*xp(1,1)^3+p(1,3)*xp(1,1)^2+p(1,4)*xp(1,1)+p(1,5);
while yt>=y_linea
    i=i+1;
    xp(i,1)=xp(i-1,1)+dt*vx(i-1,1);
    yp(i,1)=yp(i-1,1)+dt*vy(i-1,1);
    vx(i,1)=vx(i-1,1)+dt*(-0.02*sqrt((vx(i-1,1)^2)+(vy(i-1,1))^2)*vx(i-1,1)/m);
    vy(i,1)=vy(i-1,1)+dt*(-0.02*sqrt((vx(i-1,1)^2)+(vy(i-1,1))^2)*vy(i-1,1)/m-9.8);
    y_linea=p(1,1)*xp(i,1)^4+p(1,2)*xp(i,1)^3+p(1,3)*xp(i,1)^2+p(1,4)*xp(i,1)+p(1,5);
    yt=yp(i,1);
end
plot(xp,yp)

%0.03

clc;clear

% gráfica pendiente
load("perfil_popo.mat")
p = polyfit(popocatepetl_final(:,1),popocatepetl_final(:,3),4);

x=0:1:12500;
y=p(1,1)*x.^4+p(1,2)*x.^3+p(1,3)*x.^2+p(1,4)*x+p(1,5);
m=100;
g=9.8;
vin=130;
angulo=60*pi/180;

vxin=vin*cos(angulo);
vyin=vin*sin(angulo);

xin=0;
yin=p(1,5);

xt=xin;
yt=yin;

xp(1,1)=xin;
yp(1,1)=yin;
vx(1,1)=vxin;
vy(1,1)=vyin;

i=1;

dt=0.01;

y_linea=p(1,1)*xp(1,1)^4+p(1,2)*xp(1,1)^3+p(1,3)*xp(1,1)^2+p(1,4)*xp(1,1)+p(1,5);
while yt>=y_linea
    i=i+1;
    xp(i,1)=xp(i-1,1)+dt*vx(i-1,1);
    yp(i,1)=yp(i-1,1)+dt*vy(i-1,1);
    vx(i,1)=vx(i-1,1)+dt*(-0.03*sqrt((vx(i-1,1)^2)+(vy(i-1,1))^2)*vx(i-1,1)/m);
    vy(i,1)=vy(i-1,1)+dt*(-0.03*sqrt((vx(i-1,1)^2)+(vy(i-1,1))^2)*vy(i-1,1)/m-9.8);
    y_linea=p(1,1)*xp(i,1)^4+p(1,2)*xp(i,1)^3+p(1,3)*xp(i,1)^2+p(1,4)*xp(i,1)+p(1,5);
    yt=yp(i,1);
end
plot(xp,yp)

hold off
% leyendas de la tabla
title("Recorrido del Proyectil Comparando Distancias a 130 m/s a 60° con Fricción")
xlabel("Distancia en el Eje x (m)")
ylabel("Distancia en el Eje y (m)")
legend(["Pendiente del volcán","Fw=0","Fw=0.01","Fw=0.02","Fw=0.03"],"Location","northeast")

%% 350

%0.0

clc;clear;clf

% gráfica pendiente
load("perfil_popo.mat")
p = polyfit(popocatepetl_final(:,1),popocatepetl_final(:,3),4);

x=0:1:12500;
y=p(1,1)*x.^4+p(1,2)*x.^3+p(1,3)*x.^2+p(1,4)*x+p(1,5);

plot(x,y)
hold on

m=100;
g=9.8;
vin=350;
angulo=60*pi/180;

vxin=vin*cos(angulo);
vyin=vin*sin(angulo);

xin=0;
yin=p(1,5);

xt=xin;
yt=yin;

xp(1,1)=xin;
yp(1,1)=yin;
vx(1,1)=vxin;
vy(1,1)=vyin;

i=1;

dt=0.01;

y_linea=p(1,1)*xp(1,1)^4+p(1,2)*xp(1,1)^3+p(1,3)*xp(1,1)^2+p(1,4)*xp(1,1)+p(1,5);
while yt>=y_linea
    i=i+1;
    xp(i,1)=xp(i-1,1)+dt*vx(i-1,1);
    yp(i,1)=yp(i-1,1)+dt*vy(i-1,1);
    vx(i,1)=vx(i-1,1)+dt*(-0*sqrt((vx(i-1,1)^2)+(vy(i-1,1))^2)*vx(i-1,1)/m);
    vy(i,1)=vy(i-1,1)+dt*(-0*sqrt((vx(i-1,1)^2)+(vy(i-1,1))^2)*vy(i-1,1)/m-9.8);
    y_linea=p(1,1)*xp(i,1)^4+p(1,2)*xp(i,1)^3+p(1,3)*xp(i,1)^2+p(1,4)*xp(i,1)+p(1,5);
    yt=yp(i,1);
end
plot(xp,yp)

%0.01

clc;clear

% gráfica pendiente
load("perfil_popo.mat")
p = polyfit(popocatepetl_final(:,1),popocatepetl_final(:,3),4);

x=0:1:12500;
y=p(1,1)*x.^4+p(1,2)*x.^3+p(1,3)*x.^2+p(1,4)*x+p(1,5);
m=100;
g=9.8;
vin=350;
angulo=60*pi/180;

vxin=vin*cos(angulo);
vyin=vin*sin(angulo);

xin=0;
yin=p(1,5);

xt=xin;
yt=yin;

xp(1,1)=xin;
yp(1,1)=yin;
vx(1,1)=vxin;
vy(1,1)=vyin;

i=1;

dt=0.01;

y_linea=p(1,1)*xp(1,1)^4+p(1,2)*xp(1,1)^3+p(1,3)*xp(1,1)^2+p(1,4)*xp(1,1)+p(1,5);
while yt>=y_linea
    i=i+1;
    xp(i,1)=xp(i-1,1)+dt*vx(i-1,1);
    yp(i,1)=yp(i-1,1)+dt*vy(i-1,1);
    vx(i,1)=vx(i-1,1)+dt*(-0.01*sqrt((vx(i-1,1)^2)+(vy(i-1,1))^2)*vx(i-1,1)/m);
    vy(i,1)=vy(i-1,1)+dt*(-0.01*sqrt((vx(i-1,1)^2)+(vy(i-1,1))^2)*vy(i-1,1)/m-9.8);
    y_linea=p(1,1)*xp(i,1)^4+p(1,2)*xp(i,1)^3+p(1,3)*xp(i,1)^2+p(1,4)*xp(i,1)+p(1,5);
    yt=yp(i,1);
end
plot(xp,yp)

%0.02

clc;clear

% gráfica pendiente
load("perfil_popo.mat")
p = polyfit(popocatepetl_final(:,1),popocatepetl_final(:,3),4);

x=0:1:12500;
y=p(1,1)*x.^4+p(1,2)*x.^3+p(1,3)*x.^2+p(1,4)*x+p(1,5);
m=100;
g=9.8;
vin=350;
angulo=60*pi/180;

vxin=vin*cos(angulo);
vyin=vin*sin(angulo);

xin=0;
yin=p(1,5);

xt=xin;
yt=yin;

xp(1,1)=xin;
yp(1,1)=yin;
vx(1,1)=vxin;
vy(1,1)=vyin;

i=1;

dt=0.01;

y_linea=p(1,1)*xp(1,1)^4+p(1,2)*xp(1,1)^3+p(1,3)*xp(1,1)^2+p(1,4)*xp(1,1)+p(1,5);
while yt>=y_linea
    i=i+1;
    xp(i,1)=xp(i-1,1)+dt*vx(i-1,1);
    yp(i,1)=yp(i-1,1)+dt*vy(i-1,1);
    vx(i,1)=vx(i-1,1)+dt*(-0.02*sqrt((vx(i-1,1)^2)+(vy(i-1,1))^2)*vx(i-1,1)/m);
    vy(i,1)=vy(i-1,1)+dt*(-0.02*sqrt((vx(i-1,1)^2)+(vy(i-1,1))^2)*vy(i-1,1)/m-9.8);
    y_linea=p(1,1)*xp(i,1)^4+p(1,2)*xp(i,1)^3+p(1,3)*xp(i,1)^2+p(1,4)*xp(i,1)+p(1,5);
    yt=yp(i,1);
end
plot(xp,yp)

%0.03

clc;clear

% gráfica pendiente
load("perfil_popo.mat")
p = polyfit(popocatepetl_final(:,1),popocatepetl_final(:,3),4);

x=0:1:12500;
y=p(1,1)*x.^4+p(1,2)*x.^3+p(1,3)*x.^2+p(1,4)*x+p(1,5);
m=100;
g=9.8;
vin=350;
angulo=60*pi/180;

vxin=vin*cos(angulo);
vyin=vin*sin(angulo);

xin=0;
yin=p(1,5);

xt=xin;
yt=yin;

xp(1,1)=xin;
yp(1,1)=yin;
vx(1,1)=vxin;
vy(1,1)=vyin;

i=1;

dt=0.01;

y_linea=p(1,1)*xp(1,1)^4+p(1,2)*xp(1,1)^3+p(1,3)*xp(1,1)^2+p(1,4)*xp(1,1)+p(1,5);
while yt>=y_linea
    i=i+1;
    xp(i,1)=xp(i-1,1)+dt*vx(i-1,1);
    yp(i,1)=yp(i-1,1)+dt*vy(i-1,1);
    vx(i,1)=vx(i-1,1)+dt*(-0.03*sqrt((vx(i-1,1)^2)+(vy(i-1,1))^2)*vx(i-1,1)/m);
    vy(i,1)=vy(i-1,1)+dt*(-0.03*sqrt((vx(i-1,1)^2)+(vy(i-1,1))^2)*vy(i-1,1)/m-9.8);
    y_linea=p(1,1)*xp(i,1)^4+p(1,2)*xp(i,1)^3+p(1,3)*xp(i,1)^2+p(1,4)*xp(i,1)+p(1,5);
    yt=yp(i,1);
end
plot(xp,yp)

hold off
% leyendas de la tabla
title("Bonus: Recorrido del Proyectil Comparando Distancias a 350 m/s a 60° con Fricción")
xlabel("Distancia en el Eje x (m)")
ylabel("Distancia en el Eje y (m)")
legend(["Pendiente del volcán","Fw=0","Fw=0.01","Fw=0.02","Fw=0.03"],"Location","northeast")
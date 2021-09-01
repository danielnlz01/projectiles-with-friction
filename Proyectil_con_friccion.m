clc;clear;clf

x=0:8000;
y=3000*exp(-(x/4000).^2);
plot(x,y,'k','linewidth',2)
hold on

clear

% Para guardar los resultados en un video
vid = VideoWriter('Proyectil.avi','Motion JPEG AVI');
vid.Quality = 100;
open(vid)

col=[1 0 0;
    0 0.5 0;
    0 0 1;
    0.5 0 0.5;
    0.5 0.5 0]; % Se puede usar cualquier numero entre 0 y 1
                % para cambiar colores de las graficas

t=0;
for k=0.00:0.01:0.03
    t=t+1;
    dt=0.5;
    m=100;
    v=130;
    th=60*pi/180;
    vxin=v*cos(th);
    vyin=v*sin(th);
    
    xin=0;
    yin=3000;

    xt=xin;
    yt=yin;
   
    xp(1,1)=xin;
    yp(1,1)=yin;
    vx(1,1)=vxin;
    vy(1,1)=vyin;
    
    y_linea=3000*exp(-(xt/4000).^2);
    
    i=1;
    while yt>=y_linea
       
        i=i+1;
        
        xp(i,1)=xp(i-1,1)+dt*vx(i-1,1);
        yp(i,1)=yp(i-1,1)+dt*vy(i-1,1);
        
        vx(i,1)=vx(i-1,1)+dt*(-k*sqrt((vx(i-1,1)^2)+(vy(i-1,1))^2)*vx(i-1,1)/m);
        vy(i,1)=vy(i-1,1)+dt*(-k*sqrt((vx(i-1,1)^2)+(vy(i-1,1))^2)*vy(i-1,1)/m-9.8);
        
        yt=yp(i,1);
        y_linea=3000*exp(-(xp(i,1)/4000).^2);
        
        plot(xp(i,1),yp(i,1),'.','color',col(t,:),'markersize',10)
        xlabel('x (m)')
        ylabel('y (m)')
        axis ([0 8000 0 4500]) 
        pause(0.00001)
        
        frame = getframe(gcf);
        writeVideo(vid,frame);
    end
end
hold off

close(vid)

%%

clc;clear;clf

load("perfil_popo.mat")
p = polyfit(popocatepetl_final(:,1),popocatepetl_final(:,3),4);

x=0:1:120;
y=p(1,1)*x.^4+p(1,2)*x.^3+p(1,3)*x.^2+p(1,4)*x+p(1,5);

plot(x,y)%'k','linewidth',2)
hold on


% Para guardar los resultados en un video
vid = VideoWriter('Proyectil.avi','Motion JPEG AVI');
vid.Quality = 100;
open(vid)

col=[1 0 0;
    0 0.5 0;
    0 0 1;
    0.5 0 0.5;
    0.5 0.5 0]; % Se puede usar cualquier numero entre 0 y 1
                % para cambiar colores de las graficas

t=0;
for k=0.00:0.01:0.03
    t=t+1;
    dt=0.01;
    m=100;
    v=130;
    th=60*pi/180;
    vxin=v*cos(th);
    vyin=v*sin(th);
    
    xin=0;
    yin=p(1,5);

    xt=xin;
    yt=yin;
   
    xp(1,1)=xin;
    yp(1,1)=yin;
    vx(1,1)=vxin;
    vy(1,1)=vyin;
    
    y_linea=p(1,1)*xp(1,1)^4+p(1,2)*xp(1,1)^3+p(1,3)*xp(1,1)^2+p(1,4)*xp(1,1)+p(1,5);
    
    i=1;
    while yt>=y_linea
       
        i=i+1;
        
        xp(i,1)=xp(i-1,1)+dt*vx(i-1,1);
        yp(i,1)=yp(i-1,1)+dt*vy(i-1,1);
        
        vx(i,1)=vx(i-1,1)+dt*(-k*sqrt((vx(i-1,1)^2)+(vy(i-1,1))^2)*vx(i-1,1)/m);
        vy(i,1)=vy(i-1,1)+dt*(-k*sqrt((vx(i-1,1)^2)+(vy(i-1,1))^2)*vy(i-1,1)/m-9.8);
        
        yt=yp(i,1);
        y_linea=p(1,1)*xp(i,1)^4+p(1,2)*xp(i,1)^3+p(1,3)*xp(i,1)^2+p(1,4)*xp(i,1)+p(1,5);
        
        %plot(xp(i,1),yp(i,1)),'.','color',col(t,:),'markersize',10)
        xlabel('x (m)')
        ylabel('y (m)')
        axis ([0 120 0 4500]) 
        pause(0.00001)
        
        frame = getframe(gcf);
        writeVideo(vid,frame);
    end
end
plot(xp,yp,'.','color',col(t,:),'markersize',10)

hold off

close(vid)
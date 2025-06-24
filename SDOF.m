m = 2  ;
k = 32 ;
wn = 4 ;
zhi = 0.1 ;
c = 2*m*zhi*wn ;
tf  = 10 ;
fs = 100 ;
t = 0:(1/fs):tf ;
f = zeros(1,length(t)) ;

[Xdu,Xv,Xa,t] = NBMdof(1/2,1/6,m,c,k,f,fs,1/1000,0,tf) ;
%plot(t,1000*Xdu)


m = 2  ;
k = 32 ;
wn = 4 ;
zhi = 1 ;
c = 2*m*zhi*wn ;
tf  = 10 ;
fs = 100 ;
t = 0:(1/fs):tf ;
f = zeros(1,length(t)) ;

[Xdc,Xv,Xa,t] = NBMdof(1/2,1/6,m,c,k,f,fs,1/1000,0,tf) ;
%plot(t,1000*Xdc)


m = 2  ;
k = 32 ;
wn = 4 ;
zhi = 2 ;
c = 2*m*zhi*wn ;
tf  = 10 ;
fs = 100 ;
t = 0:(1/fs):tf ;
f = zeros(1,length(t)) ;

[Xdo,Xv,Xa,t] = NBMdof(1/2,1/6,m,c,k,f,fs,1/1000,0,tf) ;
%plot(t,Xdu,t,Xdc,t,Xdo)

plot(t,1000*Xdu,'LineWidth',2)
hold on
plot(t,1000*Xdc,'LineWidth',2,'Color',[0.6350 0.0780 0.1840])
hold on
plot(t,1000*Xdo,'LineWidth',2,'Color',[0.4660 0.6740 0.1880])
set(gca,'FontName','Times New Roman')
legend('\xi = 0.1','\xi = 1', '\xi = 2','FontSize',16')
legend box off
title('Displacement vs. Time')
xlim([0 5])
ax = gca;
ax.FontSize = 16;
ax.TickLength = [0.02,0] ;
  ax.LineWidth = 2;
  ylabel('$x(t)$ [mm]','interpreter','latex','FontSize',18')
   xlabel('Time [s]','interpreter','latex','FontSize',18')
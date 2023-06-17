clear
load Figure2.mat
figure 
for i=1:3
 j=3*(i-1)+1; 

step=6;
subplot(3,3,j)
plot(smooth(obs_u(i,121:244),step),'b','linewidth',2);
hold on
plot(smooth(ecmwf_u(i,121:244),step),'g','linewidth',2);
hold on
%wrf_mod_u(i,:)=1*wrf_re_u(i,:)+0*obs_u(i,121:244);
plot(smooth(wrf_mod_u(i,:),step),'r','linewidth',2);
hold on
%plot(smooth(0.6*wrf_re_Ualong(i,:)+0.4*obs_Ualong(i,121:244),step),'m','linewidth',2);
%ylim([-10 10])
xlim([1 124-12])
xlim([40 92])
%set(gca,'XTick',[1 40 80 120],'XTickLabel',{'07-01','07-10','07-20','07-30'})
set(gca,'XTick',[44:20:92],'XTickLabel',{'07-11','07-16','07-21'})
%title(strcat(station(i),' U'))
set(gca,'fontsize',16)


 k=3*(i-1)+2; 
subplot(3,3,k)
plot(smooth(obs_v(i,121:244),step),'b','linewidth',2);
hold on
plot(smooth(ecmwf_v(i,121:244),step),'g','linewidth',2);
hold on
%wrf_mod_v(i,:)=1*wrf_re_v(i,:)+0*obs_v(i,121:244);
plot(smooth(wrf_mod_v(i,:),step),'r','linewidth',2);
hold on
%plot(smooth(0.5*wrf_re_Valong(i,:)+0.5*obs_Valong(i,121:244),step),'m','linewidth',2);
xlim([1 124-12])
xlim([40 92])
%set(gca,'XTick',[1 40 80 120],'XTickLabel',{'07-01','07-10','07-20','07-30'})
set(gca,'XTick',[44:20:92],'XTickLabel',{'07-11','07-16','07-21'})
%ylim([-10 10])
%title(strcat(station(i),' V'))
set(gca,'fontsize',16)

step=4
 l=3*(i-1)+3; 
subplot(3,3,l)
plot(smooth(obs_temp(i,121:244),step),'b','linewidth',2);
hold on
plot(smooth(ecmwf_temp(i,:),step),'g','linewidth',2);
hold on
%plot(smooth(wrf_temp(i,:),step),'r','linewidth',2);
hold on
%wrf_mod_temp(i,:)=0.5*wrf_re_temp(i,:)+0.5*obs_temp(i,121:244);
plot(smooth(wrf_mod_temp(i,:),step),'r','linewidth',2);
%ylim([-10 10])
xlim([1 124-12])
xlim([40 92])
%set(gca,'XTick',[1 40 80 120],'XTickLabel',{'07-01','07-10','07-20','07-30'})
set(gca,'XTick',[44:20:92],'XTickLabel',{'07-11','07-16','07-21'})
%title(strcat(station(i),' Temp'))
set(gca,'fontsize',16)
end


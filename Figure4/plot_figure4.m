clear
load Figure4.mat
xtick=1:24*3:385;
xticklabel=datestr(xtick/24+datenum('2017-07-12','yyyy-mm-dd'),'mm-dd');

step = 1;
figure
subplot(2,1,1)
plot(smooth(buoy_u,step),'b','linewidth',2);hold on;
plot(smooth(wl_obs_u,step),'y','linewidth',2);hold on;
plot(smooth(lr_erai_u,step),'g','linewidth',2);hold on;
plot(smooth(hr_wrfw_u,step),'r','linewidth',2);hold on;
plot(smooth(hr_wrfa_u,step),'m','linewidth',2);
ylim([-0.3 0.3])
xlim([73 253])
%title(['U'])
set(gca,'fontsize',20,'fontname','times new roman','linewidth',0.9,'xtick',xtick,'XTickLabel',xticklabel)

subplot(2,1,2)
plot(smooth(buoy_v,step),'b','linewidth',2);hold on;
plot(smooth(wl_obs_v,step),'y','linewidth',2);hold on;
plot(smooth(lr_erai_v,step),'g','linewidth',2);hold on;
plot(smooth(hr_wrfw_v,step),'r','linewidth',2);hold on;
plot(smooth(hr_wrfa_v,step),'m','linewidth',2);
xlim([73 253])
%title(['V'])
set(gca,'fontsize',20,'fontname','times new roman','linewidth',0.9,'xtick',xtick,'XTickLabel',xticklabel)

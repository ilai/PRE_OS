clear
load FIgure3.mat

figure
m_proj('mercator','lon',[113 114.8],'lat',[21.1 22.6]);
m_grid('tickdir','out','fontsize',18,'box','on','linestyle','none');
hold on
m_scatter(lon,lat,100,temp_rmse_wl_obs,'filled');
%colormap(redblue);
colormap(jet);
colorbar;
caxis([0 2]);
%caxis([-0.5 0.5]);
hold on
m_gshhs_h('patch',[0.5 0.5 0.5],'linestyle','none');
set(gca,'fontsize',18,'TickDir','out','YminorTick','on','XminorTick','on','lineWidth',2,'TickLength',[0.01 0.02])
ttt='temp rmse exp118';
%print('-r300','-dpng',['temp_rmse_exp118.png']);
%saveas(gcf,[ttt '.fig'])


figure
m_proj('mercator','lon',[113 114.8],'lat',[21.1 22.6]);
m_grid('tickdir','out','fontsize',18,'box','on','linestyle','none');
hold on
m_scatter(lon,lat,100,temp_rmse_lr_erai-temp_rmse_wl_obs,'filled');
colormap(redblue);
%colormap(jet);
colorbar;
%caxis([0 2]);
caxis([-0.5 0.5]);
hold on
m_gshhs_h('patch',[0.5 0.5 0.5],'linestyle','none');
set(gca,'fontsize',18,'TickDir','out','YminorTick','on','XminorTick','on','lineWidth',2,'TickLength',[0.01 0.02])
ttt='temp rmse exp124-118';
%print('-r300','-dpng',['temp_rmse_exp124-118.png']);
%saveas(gcf,[ttt '.fig'])

figure
m_proj('mercator','lon',[113 114.8],'lat',[21.1 22.6]);
m_grid('tickdir','out','fontsize',18,'box','on','linestyle','none');
hold on
m_scatter(lon,lat,100,temp_rmse_hr_wrfw-temp_rmse_wl_obs,'filled');
colormap(redblue);
%colormap(jet);
colorbar;
%caxis([0 2]);
caxis([-0.5 0.5]);
hold on
m_gshhs_h('patch',[0.5 0.5 0.5],'linestyle','none');
set(gca,'fontsize',18,'TickDir','out','YminorTick','on','XminorTick','on','lineWidth',2,'TickLength',[0.01 0.02])
ttt='temp rmse exp125-118';
%print('-r300','-dpng',['temp_rmse_exp125-118.png']);
%saveas(gcf,[ttt '.fig'])


figure
m_proj('mercator','lon',[113 114.8],'lat',[21.1 22.6]);
m_grid('tickdir','out','fontsize',18,'box','on','linestyle','none');
hold on
m_scatter(lon,lat,100,temp_rmse_hr_wrfa-temp_rmse_wl_obs,'filled');
colormap(redblue);
%colormap(jet);
colorbar;
%caxis([0 2]);
caxis([-0.5 0.5]);
hold on
m_gshhs_h('patch',[0.5 0.5 0.5],'linestyle','none');
set(gca,'fontsize',18,'TickDir','out','YminorTick','on','XminorTick','on','lineWidth',2,'TickLength',[0.01 0.02])
ttt='temp rmse exp102-118';
%print('-r300','-dpng',['temp_rmse_exp102-118.png']);
%saveas(gcf,[ttt '.fig'])

figure
m_proj('mercator','lon',[113 114.8],'lat',[21.1 22.6]);
m_grid('tickdir','out','fontsize',18,'box','on','linestyle','none');
hold on
m_scatter(lon,lat,100,salt_rmse_wl_obs,'filled');
%colormap(redblue);
colormap(jet);
colorbar;
caxis([0 5]);
%caxis([-0.5 0.5]);
hold on
m_gshhs_h('patch',[0.5 0.5 0.5],'linestyle','none');
set(gca,'fontsize',18,'TickDir','out','YminorTick','on','XminorTick','on','lineWidth',2,'TickLength',[0.01 0.02])
ttt='salt rmse exp118';
%print('-r300','-dpng',['salt_rmse_exp118.png']);
%saveas(gcf,[ttt '.fig'])


figure
m_proj('mercator','lon',[113 114.8],'lat',[21.1 22.6]);
m_grid('tickdir','out','fontsize',18,'box','on','linestyle','none');
hold on
m_scatter(lon,lat,100,salt_rmse_lr_erai-salt_rmse_wl_obs,'filled');
colormap(redblue);
%colormap(jet);
colorbar;
%caxis([0 2]);
caxis([-0.5 0.5]);
hold on
m_gshhs_h('patch',[0.5 0.5 0.5],'linestyle','none');
set(gca,'fontsize',18,'TickDir','out','YminorTick','on','XminorTick','on','lineWidth',2,'TickLength',[0.01 0.02])
ttt='salt rmse exp124-118';
%print('-r300','-dpng',['salt_rmse_exp124-118.png']);
%saveas(gcf,[ttt '.fig'])


figure
m_proj('mercator','lon',[113 114.8],'lat',[21.1 22.6]);
m_grid('tickdir','out','fontsize',18,'box','on','linestyle','none');
hold on
m_scatter(lon,lat,100,salt_rmse_hr_wrfw-salt_rmse_wl_obs,'filled');
colormap(redblue);
colorbar;
caxis([-0.5 0.5]);
hold on
m_gshhs_h('patch',[0.5 0.5 0.5],'linestyle','none');
set(gca,'fontsize',18,'TickDir','out','YminorTick','on','XminorTick','on','lineWidth',2,'TickLength',[0.01 0.02])
ttt='salt rmse exp125-118';
%saveas(gcf,[ttt '.fig'])


figure
m_proj('mercator','lon',[113 114.8],'lat',[21.1 22.6]);
m_grid('tickdir','out','fontsize',18,'box','on','linestyle','none');
hold on
m_scatter(lon,lat,100,salt_rmse_hr_wrfa-salt_rmse_wl_obs,'filled');
colormap(redblue);
colorbar;
caxis([-0.5 0.5]);
hold on
m_gshhs_h('patch',[0.5 0.5 0.5],'linestyle','none');
set(gca,'fontsize',18,'TickDir','out','YminorTick','on','XminorTick','on','lineWidth',2,'TickLength',[0.01 0.02])
ttt='salt rmse exp102-118';
%saveas(gcf,[ttt '.fig'])


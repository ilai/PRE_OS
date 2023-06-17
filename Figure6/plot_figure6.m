clear
load exps_current.mat
cmp=cbrewer('div','RdYlBu',256);
ind=length(cmp):-1:1;
cmp2=cmp(ind,:);

figure('position',[200 300 800 500])
m_proj('mercator','lon',[113 115],'lat',[21 22.6]);
set(gca,'ticklength',[0.02 .04],'fontsize',24,'fontname','times new roman','linewidth',2)
m_grid('box','on','linestyle','none','xtick',6,'tickdir','in');
hold on
m_pcolor(lon_rho,lat_rho,wl_obs_current_sp);shading interp; colorbar;
colormap(cmp2);
caxis([0 0.7])
hold on
d=16;
dd=3;
h=m_quiver(lon_rho(1:d:end,1:d:end),lat_rho(1:d:end,1:d:end),wl_obs_current_u(1:d:end,1:d:end)./dd,wl_obs_current_v(1:d:end,1:d:end)./dd,0,'color','k');
set(h,'LineWidth',1,'MaxHeadSize',1)
hold on;
m_gshhs_i('patch',[0.7 0.7 0.7],'linestyle','none');
ttt='WL-OBS Surface Current on PRE';

figure('position',[200 300 800 500])
m_proj('mercator','lon',[113 115],'lat',[21 22.6]);
set(gca,'ticklength',[0.02 .04],'fontsize',24,'fontname','times new roman','linewidth',2)
m_grid('box','on','linestyle','none','xtick',6,'tickdir','in');
hold on
m_pcolor(lon_rho,lat_rho,wl_obs_current_sp-lr_erai_current_sp);shading interp; colorbar;
colormap(redblue);
caxis([-0.2 0.2])
hold on
d=16;
dd=3;
h=m_quiver(lon_rho(1:d:end,1:d:end),lat_rho(1:d:end,1:d:end),lr_erai_current_u(1:d:end,1:d:end)./dd,lr_erai_current_v(1:d:end,1:d:end)./dd,0,'color','k');
set(h,'LineWidth',1,'MaxHeadSize',1)
hold on;
m_gshhs_i('patch',[0.7 0.7 0.7],'linestyle','none');
ttt='LR-ERAISurface Current on PRE';
      
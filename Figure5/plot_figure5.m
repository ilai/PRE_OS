clear
load hr_wrfw_wind_stress.mat
load wl_obs_wind_stress.mat
load lr_erai_wind_stress.mat


cmp=cbrewer('div','RdYlBu',256);
ind=length(cmp):-1:1;
cmp2=cmp(ind,:);


figure('position',[200 100 600 500])
m_proj('mercator','lon',[113 115],'lat',[21 22.8]);
set(gca,'ticklength',[0.02 .04],'fontsize',20,'fontname','times new roman','linewidth',2)
m_grid('box','on','linestyle','none','xtick',6,'tickdir','in');
hold on
m_pcolor(lon_rho,lat_rho,wl_obs_wind_stress);shading interp; colorbar;
colormap(cmp);
caxis([-0.05 0]);
hold on
d=25;
dd=0.5;
h=m_quiver(lon_rho(1:d:end,1:d:end),lat_rho(1:d:end,1:d:end),wl_obs_wind_stress_u(1:d:end,1:d:end)./dd,wl_obs_wind_stress_v(1:d:end,1:d:end)./dd,0,'color','k');
set(h,'LineWidth',1)
hold on;
m_gshhs_i('patch',[0.7 0.7 0.7],'linestyle','none');
ttt='WL-OBS Wind Stress on Obs-Leg1';

figure('position',[200 100 600 500])
m_proj('mercator','lon',[113 115],'lat',[21 22.8]);
set(gca,'ticklength',[0.02 .04],'fontsize',20,'fontname','times new roman','linewidth',2)
m_grid('box','on','linestyle','none','xtick',6,'tickdir','in');
hold on
m_pcolor(lon_rho,lat_rho,lr_erai_wind_stress);shading interp; colorbar;
colormap(cmp);
caxis([-0.05 0]);
hold on
d=25;
dd=0.5;
h=m_quiver(lon_rho(1:d:end,1:d:end),lat_rho(1:d:end,1:d:end),lr_erai_wind_stress_u(1:d:end,1:d:end)./dd,lr_erai_wind_stress_v(1:d:end,1:d:end)./dd,0,'color','k');
set(h,'LineWidth',1)
hold on;
m_gshhs_i('patch',[0.7 0.7 0.7],'linestyle','none');
ttt='ECMWF Wind Stress on Obs-Leg1';

figure('position',[200 100 600 500])
m_proj('mercator','lon',[113 115],'lat',[21 22.8]);
set(gca,'ticklength',[0.02 .04],'fontsize',20,'fontname','times new roman','linewidth',2)
m_grid('box','on','linestyle','none','xtick',6,'tickdir','in');
hold on
m_pcolor(lon_rho,lat_rho,lr_erai_wind_stress_curl);shading interp; colorbar;
colormap(redblue);
caxis([-0.000001, 0.000001]);
hold on;
m_gshhs_i('patch',[0.7 0.7 0.7],'linestyle','none');
ttt='ECMWF Wind Stress Curl on Obs-Leg1';


figure('position',[200 100 600 500])
m_proj('mercator','lon',[113 115],'lat',[21 22.8]);
set(gca,'ticklength',[0.02 .04],'fontsize',20,'fontname','times new roman','linewidth',2)
m_grid('box','on','linestyle','none','xtick',6,'tickdir','in');
hold on
m_pcolor(lon_rho,lat_rho,hr_wrfw_wind_stress);shading interp; colorbar;
colormap(cmp);
caxis([-0.05 0]);
hold on
d=25;
dd=0.5;
h=m_quiver(lon_rho(1:d:end,1:d:end),lat_rho(1:d:end,1:d:end),hr_wrfw_wind_stress_u(1:d:end,1:d:end)./dd,hr_wrfw_wind_stress_v(1:d:end,1:d:end)./dd,0,'color','k');
set(h,'LineWidth',1)
hold on;
m_gshhs_i('patch',[0.7 0.7 0.7],'linestyle','none');
ttt='WRF Wind Stress on Obs-Leg1';

figure('position',[200 100 600 500])
m_proj('mercator','lon',[113 115],'lat',[21 22.8]);
set(gca,'ticklength',[0.02 .04],'fontsize',20,'fontname','times new roman','linewidth',2)
m_grid('box','on','linestyle','none','xtick',6,'tickdir','in');
hold on
m_pcolor(lon_rho,lat_rho,hr_wrfw_wind_stress_curl);shading interp; colorbar;
colormap(redblue);
caxis([-0.000001, 0.000001]);
hold on;
m_gshhs_i('patch',[0.7 0.7 0.7],'linestyle','none');
ttt='WRF Wind Stress Curl on Obs-Leg1';
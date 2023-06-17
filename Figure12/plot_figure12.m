%1 bot_prsgrd_along_isobath_rho
%2 JEBAR_rho
%3  VORT_bstr_rho
%4  VORT_sstr_rho
%5 VORT_hadv_rho

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
% load west_vort.txt
% load east_vort.txt
load Figure12.mat
figure
subplot(2,1,1)

b=bar(-west_vort([6 2:5 ],:));
b(1).FaceColor ='b';
b(2).FaceColor ='g';
b(3).FaceColor ='r';
b(4).FaceColor ='m';
%title('West')
ylim([-0.000003 0.000001])
xticklabels({'PGF','JEBAR','BSC','SSC','RVA'})
set(gca,'fontsize',20)

subplot(2,1,2)
b=bar(-east_vort([6 2:5],:));
b(1).FaceColor ='b';
b(2).FaceColor ='g';
b(3).FaceColor ='r';
b(4).FaceColor ='m';

xticklabels({'PGF','JEBAR','BSC','SSC','RVA'})
set(gca,'fontsize',20)



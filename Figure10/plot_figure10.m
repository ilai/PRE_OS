
clear
load west_mb.txt
load east_mb.txt

figure
subplot(2,1,1)
b=bar(west_mb([2 4 5 6 3 ],:));
b(1).FaceColor ='b';
b(2).FaceColor ='g';
b(3).FaceColor ='r';
b(4).FaceColor ='m';
%title('West')
ylim([-0.0000021 0.0000023])
xticklabels({'Cor','PGF','SSTR','BSTR','Hadv'})
set(gca,'fontsize',20)

subplot(2,1,2)
b=bar(east_mb([2 4 5 6 3],:));
b(1).FaceColor ='b';
b(2).FaceColor ='g';
b(3).FaceColor ='r';
b(4).FaceColor ='m';
%title('East')
ylim([-0.0000025 0.0000035])
xticklabels({'Cor','PGF','SSTR','BSTR','Hadv'})
set(gca,'fontsize',20)

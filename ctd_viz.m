clear all, clear
% Joshua V-H, 17/02/2021
% Simple script for importing and visualizing X-ray microprobe data and spot analysis
% import text file
CPXray  = importdata('CP.txt');
SiXray = importdata('Si.txt');
AlXray = importdata('Al.txt');
FeXray = importdata('Fe.txt');
MgXray = importdata('Mg.txt');
NaXray = importdata('Na.txt');
TiXray = importdata('Ti.txt');
CaXray = importdata('Ca.txt');
MnXray = importdata('Mn.txt');

% import quantative data 
% order of quantative data
% SiO2 | Al2O3 | Na2O | MgO | K2O | FeO | CaO | TiO2 | ZnO | MnO | Total %
% | X | Y 
WD = importfileMassPercentage('ctd2_mass%.xlsx');       % import quantative microprobe data

% generate coordinate grid
stp = 0.005;                        % (5 um) resolution of map on JEOL [mm]
x   = -37.4463:stp:-36.0026;        % X position min/max of map on JEOL [mm]
y   = 31.7341:stp:33.3504;          % Y position min/max of map on JEOL [mm]
[X2,Y2]    = ndgrid(x,y);           % create XY corrdinate grid

xlm = [26  28.5];                   % define X-limits
ylm = [14  16 ];                    % define Y-limits

figure(1),colormap('jet')
subplot(2,4,1)
pcolor(X2(1:end-1,:),Y2(1:end-1,:),flipud(CPXray')), shading flat, axis image,grid on
xlabel('Cp')
caxis([min(CPXray(:)) max(CPXray(:))])  % define limits for colourbar
hold on, 
plot(WD(:,12),WD(:,13),'k.')            % plot microprobe points X and Y 
% xlim(xlm)
% ylim(ylm)

subplot(2,4,2)
pcolor(X2(1:end-1,:),Y2(1:end-1,:),flipud(SiXray')), shading flat, axis image,grid on
xlabel('Si')
caxis([min(SiXray(:)) max(SiXray(:))])
hold on, 
% plot(WD(1:end-6,47),WD(1:end-6,48),'k.')
% xlim(xlm)
% ylim(ylm)

subplot(2,4,3)
pcolor(X2(1:end-1,:),Y2(1:end-1,:),flipud(AlXray')), shading flat, axis image,grid on
xlabel('Al')
caxis([min(AlXray(:)) max(AlXray(:))])
hold on, 
% plot(WD(1:end-6,47),WD(1:end-6,48),'k.')
% xlim(xlm)
% ylim(ylm)

subplot(2,4,4)
pcolor(X2(1:end-1,:),Y2(1:end-1,:),flipud(FeXray')), shading flat, axis image,grid on
xlabel('Fe')
caxis([min(FeXray(:)) max(FeXray(:))])
hold on,
% plot(WD(1:end-6,47),WD(1:end-6,48),'k.')
% xlim(xlm)
% ylim(ylm)

subplot(2,4,5)
pcolor(X2(1:end-1,:),Y2(1:end-1,:),flipud(MgXray')), shading flat, axis image,grid on
xlabel('Mg')
caxis([min(MgXray(:)) max(MgXray(:))])
hold on, 
% plot(WD(1:end-6,47),WD(1:end-6,48),'k.')
% xlim(xlm)
% ylim(ylm)

subplot(2,4,6)
pcolor(X2(1:end-1,:),Y2(1:end-1,:),flipud(NaXray')), shading flat, axis image,grid on
xlabel('Na')
caxis([min(NaXray(:)) max(NaXray(:))])
hold on, 
% plot(WD(1:end-6,47),WD(1:end-6,48),'k.')
% xlim(xlm)
% ylim(ylm)

subplot(2,4,7)
pcolor(X2(1:end-1,:),Y2(1:end-1,:),flipud(TiXray')), shading flat, axis image,grid on
xlabel('Ti')
caxis([min(TiXray(:)) max(TiXray(:))])
hold on,
% plot(WD(1:end-6,47),WD(1:end-6,48),'k.')
% xlim(xlm)
% ylim(ylm)

subplot(2,4,7)
pcolor(X2(1:end-1,:),Y2(1:end-1,:),flipud(CaXray')), shading flat, axis image,grid on
xlabel('Ca')
caxis([min(CaXray(:)) max(CaXray(:))])
hold on, 
% plot(WD(1:end-6,47),WD(1:end-6,48),'k.')
% xlim(xlm)
% ylim(ylm)

subplot(2,4,8)
pcolor(X2(1:end-1,:),Y2(1:end-1,:),flipud(MnXray')), shading flat, axis image,grid on
xlabel('Mn')
caxis([min(MnXray(:)) max(MnXray(:))])
hold on, 
% plot(WD(1:end-6,47),WD(1:end-6,48),'k.')
% xlim(xlm)
% ylim(ylm)


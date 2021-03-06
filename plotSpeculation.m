% This Function Plots Speculation - Related Variables
%____________________________________________________

function plotSpeculation(speculation_data, speculation_model, index)

% Defining Plot Colors
%---------------------

color_nonSpeculators = [213/255 155/255 45/255];
color_speculators    = [8/255 120/255 164/255];

ntrialplot = 14;

figure('Position', [1,1,1000,600]);
subplot(1, 4, 1)

meanNS_data = mean(speculation_data(1:ntrialplot,index==0)');
semNS_data  = std(speculation_data(1:ntrialplot,index==0)') ./sqrt(sum(index==0));  

meanS_data = mean(speculation_data(1:ntrialplot,index==1)');
semS_data  = std(speculation_data(1:ntrialplot,index==1)')./sqrt(sum(index==1)); 


errorbar(1:ntrialplot,meanNS_data,semNS_data,...
    'Color',[0 0 0],...
    'LineWidth',1,...
    'LineStyle','-',...
    'Marker','o',...
    'MarkerFaceColor',color_nonSpeculators,...
    'MarkerSize',[8]);
hold on
errorbar(1:ntrialplot,meanS_data,semS_data,...
    'Color',[0 0 0],...
    'LineWidth',1,...
    'LineStyle','-',...
    'Marker','o',...
    'MarkerFaceColor',color_speculators,...
    'MarkerSize',[8]);

box off

xlim([0.5 ntrialplot+0.5])
ylim([0 1])

title('Behavioral Data');

axis square

subplot(1,4,2)

SurfaceCurvePlot(speculation_data(1:ntrialplot,index==0),[2 2 2],[0.9 0.9 0.9],1,1,0,1,10,'','','')
hold on
SurfaceCurvePlot(speculation_data(1:ntrialplot,index==1),[2 2 2],[0.9 0.9 0.9],1,1,0,1,10,'','','')
hold on
title('TD-RL');


meanNS_model = mean(speculation_model{1}(1:ntrialplot,index==0)');
semNS_model  = std(speculation_model{1}(1:ntrialplot,index==0)')./sqrt(sum(index==0));  

meanS_model = mean(speculation_model{1}(1:ntrialplot,index==1)');
semS_model  = std(speculation_model{1}(1:ntrialplot,index==1)')./sqrt(sum(index==1));

errorbar(1:ntrialplot,meanNS_model,semNS_model,...
    'Color',[0 0 0],...
    'LineWidth',1,...
    'LineStyle','-',...
    'Marker','o',...
    'MarkerFaceColor',color_nonSpeculators,...
    'MarkerSize',[8]);
hold on
errorbar(1:ntrialplot,meanS_model,semS_model,...
    'Color',[0 0 0],...
    'LineWidth',1,...
    'LineStyle','-',...
    'Marker','o',...
    'MarkerFaceColor',color_speculators,...
    'MarkerSize',[8]);

xlim([0.5 ntrialplot+0.5])
ylim([0 1])

box off
axis square

subplot(1,4,3)

SurfaceCurvePlot(speculation_data(1:ntrialplot,index==0),[2 2 2],[0.9 0.9 0.9],1,1,0,1,10,'','','')
hold on
SurfaceCurvePlot(speculation_data(1:ntrialplot,index==1),[2 2 2],[0.9 0.9 0.9],1,1,0,1,10,'','','')
hold on

title('OC-RL');


meanNS_model = mean(speculation_model{2}(1:ntrialplot,index==0)');
semNS_model  = std(speculation_model{2}(1:ntrialplot,index==0)')./sqrt(sum(index==0));  

meanS_model = mean(speculation_model{2}(1:ntrialplot,index==1)');
semS_model  = std(speculation_model{2}(1:ntrialplot,index==1)')./sqrt(sum(index==1));

errorbar(1:ntrialplot,meanNS_model,semNS_model,...
    'Color',[0 0 0],...
    'LineWidth',1,...
    'LineStyle','-',...
    'Marker','o',...
    'MarkerFaceColor',color_nonSpeculators,...
    'MarkerSize',[8]);
hold on
errorbar(1:ntrialplot,meanS_model,semS_model,...
    'Color',[0 0 0],...
    'LineWidth',1,...
    'LineStyle','-',...
    'Marker','o',...
    'MarkerFaceColor',color_speculators,...
    'MarkerSize',[8]);

xlim([0.5 ntrialplot+0.5])
ylim([0 1])

box off
axis square


subplot(1,4,4)

SurfaceCurvePlot(speculation_data(1:ntrialplot,index==0),[2 2 2],[0.9 0.9 0.9],1,1,0,1,10,'','','')
hold on
SurfaceCurvePlot(speculation_data(1:ntrialplot,index==1),[2 2 2],[0.9 0.9 0.9],1,1,0,1,10,'','','')
hold on

title('OCVS-RL');


meanNS_model = mean(speculation_model{3}(1:ntrialplot,index==0)');
semNS_model  = std(speculation_model{3}(1:ntrialplot,index==0)')./sqrt(sum(index==0));  

meanS_model = mean(speculation_model{3}(1:ntrialplot,index==1)');
semS_model  = std(speculation_model{3}(1:ntrialplot,index==1)')./sqrt(sum(index==1));

errorbar(1:ntrialplot,meanNS_model,semNS_model,...
    'Color',[0 0 0],...
    'LineWidth',1,...
    'LineStyle','-',...
    'Marker','o',...
    'MarkerFaceColor',color_nonSpeculators,...
    'MarkerSize',[8]);
hold on
errorbar(1:ntrialplot,meanS_model,semS_model,...
    'Color',[0 0 0],...
    'LineWidth',1,...
    'LineStyle','-',...
    'Marker','o',...
    'MarkerFaceColor',color_speculators,...
    'MarkerSize',[8]);

xlim([0.5 ntrialplot+0.5])
ylim([0 1])

box off
axis square


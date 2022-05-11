%% Cleaning
clc
clear all
close all
%% Loading data
rng(1)
Y1 = load('poker-hand-training-true.data');
%Y2 = load('poker-hand-testing.data');
Y2 = load('treino.mat');
Y2=Y2.Y2;
rotulosY2 = Y2(:,11);
rotulosY1 = Y1(:,11);
Y2(:,11) = [];
Y1(:,11) = [];
%% NORMALIZAÇÃO 
Y1 = normalize(Y1,'range');
Y2 = normalize(Y2,'range');
%% MLP PARÂMETROS
net = feedforwardnet([32, 32]);
net.layers{1}.transferFcn = 'logsig';
net.layers{2}.transferFcn = 'logsig';
net.layers{3}.transferFcn = 'logsig';
net.trainParam.min_grad = 1e-12;
net.trainParam.epochs = 5000;
net.trainparam.max_fail =1000;
%% TREINO E TESTE
net = train(net,Y2',rotulosY2');
y = net(Y1'); %matriz de teste   
y = round(y);
Acc = length(find(y' == rotulosY1))/25010
%plotconfusion(y',rotulosY1)


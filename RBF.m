%% Cleaning
clc
clear all
close all
rng(1)
%% Loading data
Y1 = load('poker-hand-training-true.data'); %teste
%Y2 = load('poker-hand-testing.data'); %treino
Y2 = load('treino.mat');
Y2=Y2.Y2;
rotulosY1 = Y1(:,11);
rotulosY2 = Y2(:,11);
Y1(:,11) = [];
Y2(:,11) = [];


%% RBF
net = newrb(Y2', rotulosY2', 0.01, 1, 500, 10);
y = sim(net,Y1'); %matriz de teste   
y = round(y);
Acc = length(find(y' == rotulosY1))/25010


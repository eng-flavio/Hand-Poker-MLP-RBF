%% Cleaning
clc
clear all
close all
%% Loading data
Y2 = load('poker-hand-testing.data');
Y2new = zeros(99995,11);
cont6 = 0;
cont5 = 0;
cont4 = 0;
cont3 = 0;
cont2 = 0;
cont1 = 0;
cont0 = 0;
j = 1;
for i=1:1000000
    if Y2(i,11) == 7        
        Y2new(j,:) = Y2(i,:);
        j=j+1;
    end
    if Y2(i,11) == 8        
        Y2new(j,:) = Y2(i,:);
        j=j+1;
    end
    if Y2(i,11) == 9        
        Y2new(j,:) = Y2(i,:);
        j=j+1;
    end
    if Y2(i,11) == 6 && cont6 <14250 
        cont6 = cont6 +1;
        Y2new(j,:) = Y2(i,:);
        j=j+1;
    end
    if Y2(i,11) == 5 && cont5 <14250 
        cont5 = cont5 +1;
        Y2new(j,:) = Y2(i,:);
        j=j+1;
    end
    if Y2(i,11) == 4 && cont4 <14250 
        cont4 = cont4 +1;
        Y2new(j,:) = Y2(i,:);
        j=j+1;
    end
    if Y2(i,11) == 3 && cont3 <14250 
        cont3 = cont3 +1;
        Y2new(j,:) = Y2(i,:);
        j=j+1;
    end
    if Y2(i,11) == 2 && cont2 <14250 
        cont2 = cont2 +1;
        Y2new(j,:) = Y2(i,:);
        j=j+1;
    end
    if Y2(i,11) == 1 && cont1 <14250 
        cont1 = cont1 +1;
        Y2new(j,:) = Y2(i,:);
        j=j+1;
    end
    if Y2(i,11) == 0 && cont0 <14250 
        cont0 = cont0 +1;
        Y2new(j,:) = Y2(i,:);
        j=j+1;
    end
    
end



Y2 = Y2new;
save('treino.mat','Y2')
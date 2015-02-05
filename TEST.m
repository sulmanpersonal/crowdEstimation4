%%
clear
close all
clc

%%
load('CONST_DATA.mat');
dataPath = '/Users/Sulman/Documents/Repos/data from crowd sim simulations/50-100/';
dataFiles = dir('/Users/Sulman/Documents/Repos/data from crowd sim simulations/50-100/*.dat');
[TimeStamp,IDx,Xi,Yi] = importFileData(strcat(dataPath,dataFiles(1).name));
Zones = zoneAllXY(Xi,Yi,ZONE);

zeroZones = find(Zones==0);
Xi(zeroZones) = [];
Yi(zeroZones) = [];
IDx(zeroZones) = [];
TimeStamp(zeroZones) = [];
Zones(zeroZones) = [];

clearvars dataPath dataFiles POS_ZONE QUANTIZATION ZONE zeroZones

index = find(IDx == 41);

clear; close all; clc;
addpath functions;
load shp3d;
[ val0 ] = trainValModel( 'data_example' );
[ models0,pcamodels0,meanpts0 ] = train_regressors( 'data_example' );
models0=mergeModel(models0,pcamodels0);
val1=val0;
val2=val0;
models1=models0;
models2=models0;
meanpts1=meanpts0;
meanpts2=meanpts0;
writeBin(val0,val1,val2,models0,models1,models2,shp3d,meanpts0,meanpts1,meanpts2);
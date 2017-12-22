
% transpose all the data: so that channels are row and columns are data pt
Chopin=transpose(chopin);
Chopout=transpose(chopout);
Fist=transpose(fist); % monkey Punch
Flatback=transpose(flatback);
Flatdown=transpose(flatdown);
Flatup=transpose(flatup);
Pinch=transpose(pinch);
Rollin=transpose(rollin);
Rollout=transpose(rollout);
resting=transpose(Resting);
% There are 10 classifications!!
%Segmenting Data at a time interval of 400ms, which will give 20 sections
%per channel
totalTime=8000;%in ms
Desiredtime =200;%in ms
UdP=16000/totalTime; %number of data points per ms
dP = UdP*Desiredtime;
n= 16000/dP;

Seg_Chopin=FE_RawData(Chopin,8,Desiredtime);
Seg_Chopout=FE_RawData(Chopout,8,Desiredtime);
Seg_Fist=FE_RawData(Fist,8,Desiredtime);
Seg_Flatback=FE_RawData(Flatback,8,Desiredtime);
Seg_Flatdown=FE_RawData(Flatdown,8,Desiredtime);
Seg_Flatup =FE_RawData(Flatup,8,Desiredtime);
Seg_Pinch =FE_RawData(Pinch,8,Desiredtime);
Seg_Rollin =FE_RawData(Rollin,8,Desiredtime);
Seg_Rollout =FE_RawData(Rollout,8,Desiredtime);
Seg_resting =FE_RawData(resting,8,Desiredtime);

seg_Big_Matrix_ofDaTa= [Seg_Chopin,Seg_Chopout,Seg_Fist,Seg_Flatback,Seg_Flatdown,Seg_Flatup,Seg_Pinch,Seg_Rollin,Seg_Rollout,Seg_resting];
Target=TargetMat(10,n);               
                

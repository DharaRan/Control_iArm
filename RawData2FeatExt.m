
% following function returns a entrie data being feature extracted 
%Input:(1)Raw emg data where rows are the trials and columns are the
%datapoints--> the Raw Emg is the EVERY trials!!!
%NOT JUST ONE CHANNEL!!! 
%E.g: HW4 chyl_ch1 had 30 trials and 3000 datapoint, so this the entire
%data set inputed
%Output:Feat. Extraction of the entrie data set segmented!! 

function [FE_RevisedData] = RawData2FeatExt (raw_emg)

Channel=[];% make empty channel matrix makes a with features (rows) x trials(columns)

 for i= 1: size(raw_emg,1)
     ProcessedData=[];
     ProcessedData= FeatureExtract(raw_emg(i,:)); % FeatureExtract will spit 
                                               %out a 4x1 matrix of each
                                               %channel
     Channel = [Channel; ProcessedData ];   %This will put each channel 
                                         %under the pervious one
 end

Channel; % this a big matrix feature for each channels 
FE_RevisedData = Channel; % the final matrix is going to resemble a segment 
                      %in the Neural Network the dimension are 
                      %row =4 x #of rows and cloumn = 1 


end


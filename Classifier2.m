

% Returns a classification of an emg
% Input: (1)the neural network, (2)rawData, (3)Total time emg taken
%  (4)Time interval segment desired
%Output:  (1) target value -- should be known by user

function [Classified] = Classifier2 (net,rawData,num_class)
   
  I= eye(num_class);% user should which column classifies which moment

  FeetData=RawData2FeatExt(rawData);
    
  TargetClassifications = net(FeetData);
   
  Classified=[];
  for i= 1: length(TargetClassifications)
      Classified(:,i) = round(TargetClassifications(:,i));
  end

  %Check the classification of query point by finsing
  percentage = [];
  for i= 1: length(I)
      count = 0;
    for j=1:length(Classified)
        if Classified(:,j) == I(:,i)
            count = count +1;
        end
    end
    percentage(i) =  (count/length(Classified))*100;
    
  end
  
  % Finding the frequent class
       
 [M Index] = max(percentage);
 Classified = I(:,Index);
  
end

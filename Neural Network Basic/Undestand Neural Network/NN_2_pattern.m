% Matlab Neural Network _1
% Pattern Recognition Problem 

%Load data set Provided by matlab
load cancer_dataset 

% cancerInputs -> input matric serve 9 features for each input cancer case
% total abot 699 case
% cancerTargets -> output for each input ,consist of 699 column & 2 row
% consit of 0 & 1 , It represent
% first row of cancerTargets show possibilit of being non dangerours
% second row show possibilty of being dangerous

patt_R_net=newpr(cancerInputs,cancerTargets,20);
%create neural network with 20 neuron in hidden layer, and 2 in output
%layer for pattern recognisation problem

%Train Network
trainPTTRnet=train(patt_R_net,cancerInputs,cancerTargets)

% Check for your input
newInput=rand(9,1)

% check corresponding output given by result

output=sim(trainPTTRnet,newInput)
% first row of output show possibilit of being non dangerours
% second row show possibilty of being dangerous
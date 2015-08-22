% Matlab Neural Network _1
% Regretion Problem

load house_dataset  % load Data set provided(by matlab for testing)

% houseInputs -> input data based on characterstics
% houseTargets -> Price of corresponding house

net=newfit(houseInputs,houseTargets,20) 
% newfit() , cunstruct fit forword network 
% here network has 1 hidden layer consist 20 neuron and 1 neuron for output
% we can use more number of neuron , but it increase complexivity
% so use more number of neuron if there is complex problem
% Bydefault it uses Tangent Sigmoid function

% Now Train
networkT=train(net,houseInputs,houseTargets)
% Window open to show training and chack different plot of training
% check different graph to see overfitting and underfitting situations

% test function for ur input

newInput=rand(13,1) %generate randome input

output=networkT(newInput) %See result

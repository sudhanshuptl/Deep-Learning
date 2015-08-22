% Understandig Trainig 

 %our input set , keep eye on data structur of input  It contain 2*1 matrix
 %as each input
P=[1 2; 2 3;2 1; 3 1];

% Output set , output is 2*ist element of input +second element of input 
T=[4 5 7 7];

% Crete Network;
net=newlin(P,T,0,0.1); % here delay is 0 so it will be static network
%0.2 is learning rate
net.IW{1,1}=[0 0];
net.b{1}=0;
net.inputWeights{1,1}.learnParam.lr=0.1; % learning rate of weight
netnet.biases{1}.learParam.lr=0.1; %learning rate of bias
net.trainParam.epochs=1; % no of epoch for training 1 epoch for 1 updating
net=train(net,P,T)

TestI=[3 4;5 6];
output=sim(TestI)
% Implementing forword propogation Algo
% classify type of cancer
% Our network consist of 2 hidden layer 
% hidden layer 1 has 10 node + one bias node=biase
%hidden layer 2 has 5 node + one bias node=bais
 clear all;
 load cancer_dataset
 
 TrainIn=cancerInputs(:,1:599);
 TrainOut=cancerTargets(:,1:599);
 
 bias=1; %fix it
 
 inS=size(TrainIn);%size of input
 
 w1=[rand(inS(1),1) rand(inS(1),1) rand(inS(1),1) rand(inS(1),1) rand(inS(1),1) rand(inS(1),1) rand(inS(1),1) rand(inS(1),1) rand(inS(1),1) rand(inS(1),1) rand(inS(1),1)]
 w1S=size(w1); %size of layer 1  
 w2=[rand(w1S(2),1);rand(w1S(2),1);rand(w1S(2),1);rand(w1S(2),1);rand(w1S(2),1);rand(w1S(2),1)];
 w2S=size(w2);
 w3=[rand(w2S(2),1);rand(w2S(2),1)];
 w3s=size(w3);
 A1=[]
 for i=1:w1S(2)
     A1(:,i)=logsig(sum(w1(:,i).*TrainIn(:,1)));
 end
 A2=[]
 for i=1:w2S(2)
     A2(:,2)=logsig(sum(A1(:,i).*w2(:,i)));
 end
 output=[]
 for i=1:w3s(2)
     output(:,i)=logsig(sum(A2(:,i).*w3(:,i)))
 end
 output
     
 
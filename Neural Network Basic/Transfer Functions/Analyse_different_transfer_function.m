%Sudhanshu Patel
% Understanding Neurons
% a=f(w*p+b) , where a=output of neuron, w=weight, p=input, b=bias
% n=w*p+b , f()  is transfer function used 
% We gonna analyse different transfer function in this section

% generate n=w*p+b as input to function and  plot on graph

n=-5:0.1:5; % generate list contain -5 to 5 with increment of 0.1

tf1=hardlim(n);
%plot for hardlim() transfer function
plot(n,tf1,'r*'); % red color plot
hold on;

% linear function
tf2=purelin(n);
plot(n,tf2,'go');

%logrithmic function
tf3=logsig(n);
plot(n,tf3,'k+');

% There are lot other function
% type nnd2n1 and it has simultion for all of them
nnd2n1;

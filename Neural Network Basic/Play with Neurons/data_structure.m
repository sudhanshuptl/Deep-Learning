% demonstration of concurrent input in static network(ie feedback is not
% there}
% Here 1 neuron with 4 input each input is set of 2 data , and 3 output and
% purelin transfer function
% Since feedback is not there so all input can be treated as concurrent
% as sequence does't matter here

input= [1 2 2 3;2 1 3 1];

Target=[100 50 -100];


network=newlin(input,Target); % It construct network
% crete feed forword 1 layer network

network.IW{1,1}=[2,1]; % set weight for 1st later
network.b{1}=0.5;      % set bias for first layer

output=sim(network,input) % It Gives result of our not trained network
% It produce same result that can be found by network with 4 parallel
% neuron, and each input execute parrallely but it will not true if
% feedback network
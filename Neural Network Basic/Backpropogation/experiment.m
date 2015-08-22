% farword propogation
%hidden layer =1 contain 2 node + 1 bias node
clear all;
in=[2;3];
ins=size(in);
w1=[rand(ins(1),2)]
w1s=size(w1);
w2=[rand(w1s(2),1)]

A1=[]
for i=1:w1s(2)
    A1(i,:)=purelin(sum(in.*w1(:,i)));
end
res=[]
a1s=size(A1)
for i=1:a1s(2)
    res(i,:)=purelin(sum(A1.*w2(:,1)));
end
res
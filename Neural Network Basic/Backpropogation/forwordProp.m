function [ A ] = forwordProp( input,weight )
%ins=size(input);
weightS=size(weight);

A{1}=input;
for i=1:weightS(2)
    s=size(weight{i})
    for j=1:s(2)
        A{i+1}(j,:)=purelin(sum(weight{i}(:,j).*A{i}));
    end
end
end

% A1=[]
% for i=1:w1s(2)
%     A1(i,:)=purelin(sum(in.*w1(:,i)));
% end
% res=[]
% a1s=size(A1)
% for i=1:a1s(2)
%     res(i,:)=purelin(sum(A1.*w2(:,1)));
% end
% res
% 
% end


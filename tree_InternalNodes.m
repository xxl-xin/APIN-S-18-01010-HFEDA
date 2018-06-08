%% Return the index of the middle node.
%% Author: Hong Zhao
%% Modify: Qianjuan Tuo
%% Date: 2017-5-27
%% Example: 
% load tree;
% return internal nodes and root node
% middleNode = tree_InternalNode( tree )
function [middleNode ] = tree_InternalNodes( tree )
treeParent=tree(:,1)';
index=find(treeParent==0);
Allnonleaf=unique(treeParent);
middleNode=setdiff(Allnonleaf,0);
middleNode(find(middleNode==index))=[];
middleNode=middleNode';
end



% function [ middleNode ] = tree_InternalNodes( tree )
% treeParent=tree(:,1)';
% index=find(treeParent==0);
% lengthTree = length(treeParent);
% middleNode = [];
% 
% while length(treeParent)~=0 
%     middleNode=[middleNode; treeParent(1)];
%     label=find(treeParent==treeParent(1));     
%     treeParent(label)=[];   
% end
% middleNode = middleNode(1:end-1);
% 
%  middleNode(find(middleNode==index))=[];
% end


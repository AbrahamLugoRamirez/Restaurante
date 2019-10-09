clc
clear all
close all

P = load('Data');
Y = P.X(:,end);
X = P.X(:,1:end-1);
[n N] = size(X); %n is the number of samples N is the number of features

[U,S,V] = svd(X,0);

fig = figure;
hold all
ind1 = find(Y==-1);
plot(U(ind1,1),U(ind1,2),'ob','markersize',8,'markerfacecolor','b');
ind1 = find(Y==0);
plot(U(ind1,1),U(ind1,2),'or','markersize',8,'markerfacecolor','r');
ind1 = find(Y==1);
plot(U(ind1,1),U(ind1,2),'og','markersize',8,'markerfacecolor','g');
grid on

fig = figure;
hold all
ind1 = find(Y==-1);
plot3(U(ind1,1),U(ind1,2),U(ind1,3),'ob','markersize',8,'markerfacecolor','b');
ind1 = find(Y==0);
plot3(U(ind1,1),U(ind1,2),U(ind1,3),'or','markersize',8,'markerfacecolor','r');
ind1 = find(Y==1);
plot3(U(ind1,1),U(ind1,2),U(ind1,3),'og','markersize',8,'markerfacecolor','g');
grid on

TH = (X'*X)\(X'*Y);




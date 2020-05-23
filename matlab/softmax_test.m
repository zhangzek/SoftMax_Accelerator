close all
clear all
clc
%n = [0.1;0.2;0.5;1;1.5;2;2.5;3;3.5;4;4.5];
%n = [0.1;0.2;0.5;1;1.5;2;2.5;3;3.5;4];
n = [-1;1];
m = [0.1,0.2,0.5,1,1.5,2,2.5,3,3.5,4,4.5];
a = softmax(n);
b = softmax(m);
%subplot(2,1,1),bar(n),ylabel('n');
%subplot(2,1,2),bar(a),ylabel('a');
%plot(n,'*'),xlabel('n');
plot(n,a,'*'),xlabel('n'),ylabel('a');
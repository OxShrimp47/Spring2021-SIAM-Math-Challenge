%2021 SIAM Math Challenge
%Team: Tommy Lee Truong, Abbas Siddiqui, Ruoxi Zhao, Sheindel Gamerberg
%Mentor: Jonathan Anzules
%Last Edit: March 27 2021
%%
% change beta, gamma and N on this section to manuipulate graph
%%
close all; clear all; clc;
beta=1;%mixing/infectivity rate of disease
gamma=2;%recovery rate
N = 10000;%population
p=[beta,gamma,N];
tx=0:100;% change in time measured in 100 days
Data=zeros(length(tx),0);
% gather data points
Data=SimulateGrowth(p,tx);
% uses stored data points to graph S and I
plot(tx,Data(:,1))
hold on
plot(tx,Data(:,2))
legend('Susceptible','Infected')
title('Susceptible vs Infected (beta/gamma <= 1)')
% When the recovery rate is greater than or equal to the infectivity rate the disease
% cannot spread and thus the entire population remains in a state of
% susceptible
%%
close all; clear all; clc;
beta=1.5;%mixing/infectivity rate of disease
gamma=1;%recovery rate
N = 10000;%population
p=[beta,gamma,N];
tx=0:100;% change in time measured in 100 days
Data=zeros(length(tx),0);
% gather data points
Data=SimulateGrowth(p,tx);
% uses stored data points to graph S and I
plot(tx,Data(:,1))
hold on
plot(tx,Data(:,2))
legend('Susceptible','Infected')
title('Susceptible vs Infected (1 < beta/gamma < 2)')
%When the ratio between the rate of infectivity and recovery are between
%1:1 and 2:1 the the number of sceptible people remains higher then the
%number of infected after a short period of rapid infectivity
%%
close all; clear all; clc;
beta=2;%mixing/infectivity rate of disease
gamma=1;%recovery rate
N = 10000;%population
p=[beta,gamma,N];
tx=0:100;% change in time measured in 100 days
Data=zeros(length(tx),0);
% gather data points
Data=SimulateGrowth(p,tx);
% uses stored data points to graph S and I
plot(tx,Data(:,1))
hold on
plot(tx,Data(:,2))
legend('Susceptible','Infected')
title('Susceptible vs Infected (beta/gamma = 2)')
%When the ratio between the rate of infectivity and recovery are exactly
%2:1 the the number of sceptible people are equivalent to the
%number of infected after a short period of rapid infectivity
%%
close all; clear all; clc;
beta=3;%mixing/infectivity rate of disease
gamma=1;%recovery rate
N = 10000;%population
p=[beta,gamma,N];
tx=0:100;% change in time measured in 100 days
Data=zeros(length(tx),0);
% gather data points
Data=SimulateGrowth(p,tx);
% uses stored data points to graph S and I
plot(tx,Data(:,1))
hold on
plot(tx,Data(:,2))
legend('Susceptible','Infected')
title('Susceptible vs Infected (beta/gamma >2), beta-gamma is small')
%When the ratio between the rate of infectivity and recovery are greater
%than 2:1 the the number of sceptible people are less than the
%number of infected after a short period of rapid infectivity this can be
%denoted by the intersection of the graph.
%%
close all; clear all; clc;
beta=30;%mixing/infectivity rate of disease
gamma=10;%recovery rate
N = 10000;%population
p=[beta,gamma,N];
tx=0:100;% change in time measured in 100 days
Data=zeros(length(tx),0);
% gather data points
Data=SimulateGrowth(p,tx);
% uses stored data points to graph S and I
plot(tx,Data(:,1))
hold on
plot(tx,Data(:,2))
legend('Susceptible','Infected')
title('Susceptible vs Infected (beta/gamma >2, beta-gamma is big)')
% Also this intersection occurs earlier and shows that the rapid
% infectivity period is even shorter and more rapid the greater the
% difference between suseptibily and infectivity rates.
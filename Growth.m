%2021 SIAM Math Challenge
%Team: Tommy Lee Truong, Abbas Siddiqui, Ruoxi Zhao, Sheindel Gamerberg
%Mentor: Jonathan Anzules
%Last Edit: March 27 2021
%%
function dTdt = Growth(t, x, p, i)
%establishes parameters
beta=p(1);%mixing/infectivity rate of disease
gamma=p(2);%recovery rate
N = p(3);%population
S=x(1);%susceptible people
I=x(2);%infected people
dSdt=(-beta.*S.*I)/N+gamma.*I;%change in susceptible popoulation per day
dIdt=(beta.*S.*I)/N-gamma.*I;%change in infected population per day
dTdt = [dSdt,dIdt]';%returns dSdt and dIdt
end
%2021 SIAM Math Challenge
%Team: Tommy Lee Truong, Abbas Siddiqui, Ruoxi Zhao, Sheindel Gamerberg
%Mentor: Jonathan Anzules
%Last Edit: March 27 2021
%%
function ModelData = SimulateGrowth(p,tx)
%Define parameters and intial conditions
S=9995;%number of initially susceptible people
I=5;%number of initially infected people
beta=p(1);%mixing/infectivity rate of disease
gamma=p(2);%recovery rate
N = p(3);%population
% creates matrix to store data points
ModelData = zeros(length(tx),0);%creates vector of length tx
T0 = [S,I];%creates vector of 2 that stores I and S
% Stores intial conditions of I and S into model data
ModelData(1,1) = T0(1);
ModelData(1,2) = T0(2);
%Solves S and I for next data point and stores them in model data
for i = 1:(length(tx)-1)
    %establishes time frame for ode15s(stiff diffrenetials)
    ts = [tx(i),tx(i+1)];
    %passes parameters to growth function to get ODE for S and I 
    %then passes parameters to ode15 to solve for next data point
    sol = ode15s(@(t,x)Growth(t,x,p,i),ts,T0);
    %stores new data point
    T0 = [sol.y(1,end),sol.y(2,end)];
    ModelData(i+1,1) = T0(1); 
    ModelData(i+1,2) = T0(2);
end
end
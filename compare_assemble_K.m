N = 6;
S = zeros(1,N);
P = zeros(1,N);
%dt = linspace(10,200,N);
%dt = [4,8,16,32,64,128,256,512];
dt = [10,20,40,60,80,100];
for i = 1:N
    [S(i),P(i)] = assemble_K_s(dt(i));
end

dof = (dt+1).^2;

plot(dof,S,'-s','LineWidth',2);
hold on
plot(dof,P,'-x','LineWidth',2);
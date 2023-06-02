%Program written by Divya M (199031001)

%Fundamentals of Power System Economics by Daniel S % Kirschen & Goran Strbac

clc; clear all; close all;

% question 2.2
% Inverse demand function; IDF = -10q+2000

display('Part-a')
for i1 = 0:250
    IDF(i1+1) = -10*i1+2000;
end
[row1,col1] = find(IDF==0); % Max demand demand occurs at non-negative IDF
max_demand = col1-1  

display('Part-b')
max_IDF = max(IDF)  

figure(1)
x = 1:i1+1;
set(gcf,'Name','Inverse Demand Function','Color','w')
plot(x,IDF,'-k','LineWidth',2)
hold on;
plot(max_demand,0,'ms','LineWidth',2)
hold on;
plot(0,max_IDF,'rs','LineWidth',2)
hold on;
plot(x,0,'-g','LineWidth',2)
hold on;
%grid on;
xlabel('No. of Products,q')
ylabel('Inverse Demand Function,pi')
title('Inverse Demand Function')
txt1 = sprintf('Max_demand = %.2f',max_demand);
txt2 = sprintf('Max_IDF = %.2f',max_IDF);
legend('Inverse Demand Function',txt1,txt2);
area_IDF = area(0:max_demand,IDF(1:col1));

display('Part-c')
max_surplus = trapz(0:max_demand,IDF(1:max_demand+1)) 

display('Part-d')
[row2,col2] = find(IDF==1000);
consumption = col2-1
gross_surplus = trapz(0:consumption,IDF(1:consumption+1))
net_surplus = trapz(0:consumption,IDF(1:consumption+1)-1000)
revenue = gross_surplus - net_surplus

figure(2)
abc = ones(1,consumption+1);
abc1 = 1000*abc;
set(gcf,'Name','Inverse Demand Function','Color','w')
plot(x,IDF,'-k','LineWidth',2)
hold on;
gross_surplus1 = area(0:consumption,IDF(1:consumption+1),'FaceColor',[0,0.25,0.25]);
hold on
revenue = area(0:consumption, abc1,'FaceColor',[0,0.75,0.75]);
hold on;
plot(x,0,'-g','LineWidth',2)
hold on;
xlabel('No. of Products,q')
ylabel('Inverse Demand Function,pi')
title('Inverse Demand Function')
legend('Inverse Demand Function','Net Surplus');

display('Part-e')
[row3,col3] = find(IDF==1200);
consumption2 = col3-1
gross_surplus2 = trapz(0:consumption2,IDF(1:consumption2+1))
net_surplus2 = trapz(0:consumption2,IDF(1:consumption2+1)-1200)
revenue2 = gross_surplus2 - net_surplus2

display('Part-f')
% Slope of IDF is -10
% Elasticity = (pi/q)*(dq/dpi)
% For pi = 1000, q = col2-1
elasticity = -1000/((col2-1)*10)





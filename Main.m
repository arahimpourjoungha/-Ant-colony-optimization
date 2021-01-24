clc
clear all
global numberOfCity numberOfAnt cityCordinates virtualPheromone ...
    alpha beta  evaporateRate;
%load city_Cordinates.mat;
%load number_Of_City.mat;


numberOfCity=10;
cityCordinates=rand(numberOfCity,2);

numberOfAnt=50;
evaporateRate=1;
alpha=1;
beta=1;
virtualPheromone=rand(numberOfCity,numberOfCity);


choosingPath=zeros(numberOfAnt,numberOfCity);
for i=1:numberOfAnt
    choosingPath(i,1)=1;
end

for k=1:1000
    evaporateRate=0.75;
    alpha=alpha+0.05;
    for i=2:numberOfCity
        for j=1:numberOfAnt
            choosingPath(j,i)=chooseNextCity(choosingPath(j,1:i-1)',i);
        end
    end
    updatePheromone(choosingPath);
    evaporate();
    
        PlotCities();
        pause(0.001);

    
end






% newName=zeros(numberOfCity,2);
% for i=1:numberOfCity
%     newName(i,:)=cityCordinates(bestRoute(i),:);
% end
% line(newName(:,1),newName(:,2));
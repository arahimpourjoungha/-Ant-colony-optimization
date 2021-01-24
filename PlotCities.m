function  PlotCities()
global cityCordinates numberOfCity virtualPheromone


hold off
plot(cityCordinates(1,1),cityCordinates(1,2),'--rs','LineWidth',2,...
    'MarkerEdgeColor','k',...
    'MarkerFaceColor','k',...
    'MarkerSize',20);
hold on;
for i=2:numberOfCity
    plot(cityCordinates(i,1),cityCordinates(i,2),'--rs','LineWidth',2,...
        'MarkerEdgeColor','k',...
        'MarkerFaceColor','k',...
        'MarkerSize',20);
    hold on;
end


%reinforce=10/max(max(virtualPheromone));
reinforce=0.15;

for i=1:numberOfCity
    for j=1:numberOfCity
        line([cityCordinates(i,1),cityCordinates(j,1)],...
            [cityCordinates(i,2),cityCordinates(j,2)],'Marker','.','LineStyle',':','Color','Black');
        virtualPheromone(i,j)* reinforce;
    end
end

for i=1:numberOfCity
    for j=1:numberOfCity
        if virtualPheromone(i,j)*reinforce > 0.5
            line([cityCordinates(i,1),cityCordinates(j,1)],...
                [cityCordinates(i,2),cityCordinates(j,2)],'LineWidth',virtualPheromone(i,j)*reinforce,'Color','Red');
            virtualPheromone(i,j)* reinforce;
        end
    end
end



end


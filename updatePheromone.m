function updatePheromone( path )
global numberOfAnt numberOfCity virtualPheromone;

for i=1:numberOfAnt
    L=getRouteDistance(path(i,:));
    for j=1:numberOfCity-1
        virtualPheromone(path(i,j),path(i,j+1))=...
            virtualPheromone(path(i,j),path(i,j+1))+(1/L);
        virtualPheromone(path(i,j+1),path(i,j))=...
            virtualPheromone(path(i,j+1),path(i,j))+(1/L);   
    end
    virtualPheromone(path(i,1),path(i,numberOfCity))=...
            virtualPheromone(path(i,1),path(i,numberOfCity))+(1/L);
        virtualPheromone(path(i,numberOfCity),path(i,1))=...
            virtualPheromone(path(i,numberOfCity),path(i,1))+(1/L);
end


end


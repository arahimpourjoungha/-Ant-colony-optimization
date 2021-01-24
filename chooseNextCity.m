function selectedCity = chooseNextCity( choosenCities,num )
global numberOfCity virtualPheromone alpha beta;
lastCity=choosenCities(num-1);
nextCityProb=zeros(numberOfCity,1);

for i=1:numberOfCity
    nextCityProb(i)=virtualPheromone(lastCity,i)^alpha * getCityDistance(lastCity,i)^-beta;
end

for i=1:num-1
    nextCityProb(choosenCities(i))=0;
end

selectedCity=getRandomCity(nextCityProb);

end


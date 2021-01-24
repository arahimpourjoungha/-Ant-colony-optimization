function evaporate( )
global virtualPheromone evaporateRate;

virtualPheromone=virtualPheromone.*evaporateRate;

end


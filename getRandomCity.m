function city = getRandomCity( cityProbs )
global numberOfCity;
cityProbs=cityProbs/sum(cityProbs);

for i=2:numberOfCity
    cityProbs(i)=cityProbs(i)+sum(cityProbs(i-1));
end

random=rand();


for i=1:numberOfCity
    if random <= cityProbs(i)
        city=i;
        break;
    end
end

end


function distance = getCityDistance( i,j )
global cityCordinates;
distance=sqrt(...
    (cityCordinates(i,1)-cityCordinates(j,1))^2+ ...
    (cityCordinates(i,2)-cityCordinates(j,2))^2  );
end


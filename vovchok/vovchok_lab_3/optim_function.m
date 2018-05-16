function [ sum ] = optim_function( way )
if ( length(way)==4)
    [graph] = four_cities();
elseif ( length(way)==5)
    [graph] = five_cities();
elseif ( length(way) == 6)
    [graph] = six_cities();
end

sum = 0;
for i = 1:1:length(way)-1
    sum = sum + graph(way(i), way(i+1));
end

end


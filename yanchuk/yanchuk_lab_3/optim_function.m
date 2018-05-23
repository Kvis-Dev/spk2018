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

function [graph] = four_cities()
    graph = [ 
    1000, 11, 4, 3;
    11, 1000, 1, 7;
    4, 1, 1000, 3;
    3, 7, 3, 1000
];
end

function [graph] = five_cities()
    graph = [ 
    1000,  6,  4,  8,  7;
    6,  1000,  7,  11, 7;
    4,  7,  1000,  4,  3;
    8, 11,  4,  1000,  5;
    7,  7,  3,  5,  1000
];
end

function [graph] = six_cities()
    graph = [ 
    1000, 4, 4, 4, 8, 7;
    4, 1000, 4, 3, 8, 11;
    4, 4, 1000, 7, 8, 3;
    4, 3, 7, 1000, 8, 7;
    8, 8, 8, 8, 1000, 6;
    7, 11, 3, 7, 6, 1000
];
end

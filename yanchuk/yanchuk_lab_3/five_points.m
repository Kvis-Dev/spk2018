function [ start_population, population_size] = five_points()
start_population = [
    1, 2, 3, 4, 5;
    1, 3, 2, 5, 4;
    2, 4, 5, 1, 3;
    3, 5, 1, 2, 4;
    1, 3, 5, 4, 2
];
population_size = 5;
end
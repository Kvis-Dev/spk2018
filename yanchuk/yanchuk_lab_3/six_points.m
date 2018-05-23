function [ start_population, population_size] = six_points()
start_population = [
    1, 2, 3, 4, 5, 6;
    1, 3, 2, 5, 4, 6;
    2, 4, 5, 1, 3, 6;
    3, 5, 1, 2, 4, 6;
    1, 3, 5, 4, 2, 6;
    1, 5, 3, 4, 2, 6
];
population_size = 6;
end
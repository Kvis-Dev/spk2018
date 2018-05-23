function [] = startPointGa(inputDataFunction)
[startPopulation,populationSize] = inputDataFunction();

options = gaoptimset(...
    'PopulationSize', populationSize, ...
    'InitialPopulation', startPopulation, ...
    'MutationFcn', @mutation, ...
    'CrossoverFcn', @crossover ...
);


[x,fval,exitflag,output,population,scores] = ga(@optim_function, populationSize, options);
disp('The best hromosome:'); 
disp(x);

fprintf('The number of generations was : %d\n', output.generations);
fprintf('The best function value found was : %g\n', fval);
disp('Last generation:');
for i=1:1:populationSize
    for j=1:1:populationSize
        fprintf('\t%d', population(i,j));
    end;
    fprintf('\t=>\t%d\n', scores(i));
end;
end


function [ time, fval ] = ga_var1( func, nvars, range, population_size, generations )
    
options = gaoptimset();
options = gaoptimset(options, 'SelectionFcn', @selectionroulette);
options = gaoptimset(options, 'CrossoverFcn', @crossoverarithmetic);
options = gaoptimset(options, 'MutationFcn', @mutationadaptfeasible);
options = gaoptimset(options, 'PopInitRange', range);
options = gaoptimset(options, 'Generations', generations);
options = gaoptimset(options, 'PopulationSize', population_size);

tic
[fx, fval] = ga(func, nvars, options);
time = toc;

end
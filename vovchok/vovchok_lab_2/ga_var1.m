function [ time, fval ] = ga_var1( func, nvars, range, population_size, generations )
    
options = gaoptimset();
options = gaoptimset(options, 'SelectionFcn', @selectionstochunif);
options = gaoptimset(options, 'CrossoverFcn', @crossoverscattered);
options = gaoptimset(options, 'MutationFcn', @mutationgaussian);
options = gaoptimset(options, 'PopInitRange', range);
options = gaoptimset(options, 'Generations', generations);
options = gaoptimset(options, 'PopulationSize', population_size);

tic
[fx, fval] = ga(func, nvars, options);
time = toc;

end
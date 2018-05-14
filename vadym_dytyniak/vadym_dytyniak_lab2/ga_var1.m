function [ time, fval ] = ga_var1( func, nvars, range, population_size, generations )
    
options = gaoptimset();
options = gaoptimset(options, 'SelectionFcn', @selectionstochunif);
options = gaoptimset(options, 'CrossoverFcn', @crossovertwopoint);
options = gaoptimset(options, 'MutationFcn', @mutationuniform);
options = gaoptimset(options, 'Generations', generations);
options = gaoptimset(options, 'PopulationSize', population_size);

tic
[fx, fval] = ga(func, nvars, options);
time = toc;

end
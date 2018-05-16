function [  mutationChildren ] = MutationFcn( parents, options, nvars, ...
FitnessFcn, state, thisScore, thisPopulation )


 x1 = randperm(nvars);
 mutant = thisPopulation(parents, :);
 d = mutant(x1(1));
 d1 = mutant(x1(2));
 mutant(x1(1)) = d1;
 mutant(x1(2)) = d;
 mutationChildren = mutant;
 
end


function [ mutationChildren ] = MutationFcn( parents, options, nvars, ...
FitnessFcn, state, thisScore, thisPopulation )
 mask = zeros(1, 6); 
 mask(randi(6)) = 1;
 
 mutant = thisPopulation(parents, :)+10;
 for i=1:1:nvars
    dm = mutant(i);
    if dm > 63
       dm = de2bi(dm);
       dm = dm(1:6);    
    else
        dm = de2bi(dm, 6);
    end

    dm = bitxor(dm, mask);
    mutant(i) = bi2de(dm)-10;
 end
 
 mutationChildren = mutant;
end


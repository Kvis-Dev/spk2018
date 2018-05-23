function [  mutant ] = mutation( hromosom_to_mutate, options, nvars, ...
fitness_fcn, state, this_score, population )
 current_hromosome=population(hromosom_to_mutate, :);
 shift = randi(nvars);
 mutant = zeros(1, nvars);
 for i=1:1:nvars
     if(i+shift<=nvars)
        mutant(i+shift)=current_hromosome(i);
     else
         mutant(i+shift-nvars)=current_hromosome(i);
     end
 end
end
function [xover_kids] = crossover( parents_for_crossover, options, nvars, FitnessFcn, ...
    unused,this_population )
xover_kids = zeros(length(parents_for_crossover)/2, nvars);
position = 2; %позиція гену для схрещування
for i = 1:2:length(parents_for_crossover)-1
    p1 = this_population(parents_for_crossover(i), :);
    p2 = this_population(parents_for_crossover(i+1), :);
    child=zeros(1,nvars);
    for j=1:1:position
        child(j)=p2(j);
    end
    pp1=zeros(1,nvars);
    counter=1;
    tamporalPtr=position+1;
    for j=tamporalPtr:1:nvars
        pp1(counter)=p1(j);
        counter=counter+1;
    end
    for j=1:1:position
        pp1(counter)=p1(j);
        counter=counter+1;
    end
    for j=1:1:position
        for jj=1:1:nvars
            if ( pp1(jj)==child(j))
                pp1(jj)=0;
            end
        end
    end
    
    for j=1:1:nvars
        if(pp1(j)~=0)
            position=position+1;
            child(position)=pp1(j);
        end
    end
    xover_kids((i+1)/2,:) = child;
end
end
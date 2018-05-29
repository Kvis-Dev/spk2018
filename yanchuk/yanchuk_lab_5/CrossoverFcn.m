function [xoverKids] = CrossoverFcn( parents, options, nvars, FitnessFcn, ...
    unused,thisPopulation )

ret = zeros(length(parents)/2, nvars);

for i = 1:2:length(parents)-1 
    p1 = thisPopulation(parents(i), :);
    p2 = thisPopulation(parents(i+1), :);
    
    t = randi(nvars);
    cycle = zeros(1,nvars);
    for j = 1:1:nvars  
        cycle(1,j) = t;
        nv = p2(t);
        t = find(p1==nv);
        if (p1(cycle(1,1)) == nv) 
            break;  
        end
    end
   
    child = p2;
    for j = 1:1:nvars
        if (cycle(1,j) ~= 0)
            child(1,cycle(1,j)) = p1(cycle(1,j));
        end
    end
    ret((i+1)/2,:) = child;  
end

xoverKids = ret;
end


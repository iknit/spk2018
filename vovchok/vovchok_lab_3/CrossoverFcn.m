function [xoverKids] = CrossoverFcn( parents, options, nvars, FitnessFcn, ...
    unused,thisPopulation )
ret = zeros(length(parents)/2, nvars);

for i = 1:2:length(parents)-1
    p1 = thisPopulation(parents(i), :);
    p2 = thisPopulation(parents(i+1), :);
    t = randi(nvars);     % початок циклу (індекс)
    %новий нащадок, який буде результатом схрещування двох хромосом
    chilDD=zeros(1,nvars);
    %переписуємо в нащадка гени 2 хромосоми до точки схрещування
    for j=1:1:t
        chilDD(j)=p2(j);
    end
    %робимо перестановку в 1 батьку так, щоб гени після точки схрещування
    %були першими в хромосомі
    pp1=zeros(1,nvars);
    counter=1;
    tamporalPtr=t+1;
    for j=tamporalPtr:1:nvars
        pp1(counter)=p1(j);
        counter=counter+1;
    end
    for j=1:1:t
        pp1(counter)=p1(j);
        counter=counter+1;
    end
    %з копії 1го батька вилучини гени які вже є в нащадку
    for j=1:1:t
        for jj=1:1:nvars
            if ( pp1(jj)==chilDD(j))
                pp1(jj)=0;
            end
        end
    end
    
    for j=1:1:nvars
        if(pp1(j)~=0)
            t=t+1;
            chilDD(t)=pp1(j);
        end
    end
    ret((i+1)/2,:) = chilDD;
    
end
xoverKids = ret;
end
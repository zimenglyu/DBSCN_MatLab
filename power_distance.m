function distance=power_distance(x, p)
    % each row is a sample
    [m,n]= size(x);
    b = nchoosek(m,2);
    distance=zeros(1,b);
    count =1;
    for i = 1:(m-1)
        for j=i:(m-1)
            distance(count)=sum((x(i,:)-x(j+1,:)).^p);
            count=count+1;
        end
    end

end
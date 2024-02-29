function  [p, var] = variance(eigvalue, th)
    vsum = sum(eigvalue);
    S = 0;
    p = 0;
    var = eigvalue / vsum;
    m = size(var, 1);
    varian = zeros(m, 1);
    for i = 1:m
        if i == 1
           varian(i) = var(i);
        else
           varian(i) = varian(i-1) + var(i);
        end
       
    end
    figure();
%     plot(varian(1:100));
    plot(varian);
    while S / vsum < th
        p = p + 1;
        S = S + eigvalue(p);
    end
end
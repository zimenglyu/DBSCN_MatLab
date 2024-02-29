function result = count_value(x, a)

    [~,n] = size(x);
    result = zeros(1, n);
    for i = 1:n
        result(i) = length(find(x(:, i) == a));
    end

end
function olap = overlap(idx)
    [~, n] = size(idx);
    olap = zeros(100, n);
    for i = 1:n
        row = reshape(idx(:, i), 100, 8);
        class = mode(row, 2);
        for j = 1:100
            c = sum(row(j, :) == class(j));
            olap(j, i) = c / 8;        
        end     
    end
end
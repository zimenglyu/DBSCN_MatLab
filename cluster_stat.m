function [c_avg, c_min, c_max, n_class] = cluster_stat(idx)

    [~, n] = size(idx);
    c_avg = zeros(1, n);
    c_min = zeros(1, n);
    c_max = zeros(1, n);
    n_class = zeros(1, n);

    for i=1:n
        class1 = tabulate(idx(:, i));
        [m, ~] = size(class1);
        if class1(1, 1) == -1
            c_max(i) = max(class1(2:m, 2));
            c_min(i) = min(class1(2:m, 2));
            c_avg(i) = mean(class1(2:m, 2)); 
        else
            c_max(i) = max(class1(1:m, 2));
            c_min(i) = min(class1(1:m, 2));
            c_avg(i) = mean(class1(1:m, 2));
        end
        n_class(i) = max(class1(:, 1));
    end
end
function plot_statics(idx, x,  s_title)
    num_outliers = count_value(idx, -1);
    [c_avg, c_min, c_max, n_class] = cluster_stat(idx);
    
    [~, vert1] = max(n_class);
    vert2 = 29;
    gray = [.7 .7 .7];
    figure()
    subplot(2, 1, 2)
    b = plot(x, num_outliers, 'color', 	"#0072BD", 'LineWidth', 2);
    hold on
    c = plot(x, c_max, 'color', "#EDB120", 'LineWidth', 2);
    hold on
    d = plot(x, c_min,'color', "#77AC30", 'LineWidth', 2);
    hold on
    e  = plot(x, c_avg,'color', "#D95319", 'LineWidth', 2);
    hold on
    xline(x(vert1), "--")
    hold on
    xline(vert2, "--")
    % x_all = [x, fliplr(x)];
    % between = [c_min, fliplr(c_max)];
    % Co = [0.7725 0.8549 0.9098];
    % patch(x_all,between,Co);
    % alpha(0.3) 
    title('Num of Outliers vs. Size of the Biggest Cluster')
    ylabel('Count')
    xlabel('eps');
    legend([b; c; d; e], {'Number of Outliers', 'MAX Cluster Size', 'MIN Cluster Size', 'AVG Cluster Size'})
    
    subplot(2, 1, 1)
    plot(x, n_class, 'color', "#7E2F8E", 'LineWidth', 2);
    hold on
    xline(x(vert1), "--")
    hold on
    xline(vert2, "--")
    ylabel('Num of Clusters')
    fontsize(gcf,scale=1.3)
    title('Num of Clusters')
    
    % sgtitle(s_title)

end
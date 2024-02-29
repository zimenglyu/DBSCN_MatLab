function plot3d(x_new)

    figure();
    color=[[0 0.4470 0.7410];[0.8500 0.3250 0.0980]; [0.9290 0.6940 0.1250]; [0.4940 0.1840 0.5560];[0.4660 0.6740 0.1880]; [0.3010 0.7450 0.9330];[0.6350 0.0780 0.1840];[0 0 0]];
    % label=["Bailey", "DeerRun", "Homer3", "Roxana", "ScarletGlen", "Shay", "WildBoar", "Williamson"];
    label=["Coal-1", "Coal-2", "Coal-3", "Coal-4", "Coal-5", "Coal-6", "Coal-7", "Coal-8"];

    for i=1:8
        h=scatter3(x_new((i-1)*99+1:i*99,1),x_new((i-1)*99+1:i*99,2), x_new((i-1)*99+1:i*99,3));
        h.MarkerEdgeColor=color(i,:);
        hold on  
    end
    legend(label);
end

%% Read data

% Lignite = ["18-028", "18-029", "18-031", "18-054"];
% Sub_Bituminous = ["20-019", "20-020", "20-021", "20-022", "20-023", "20-024"];
% Bituminous = ["20-025", "20-026", "20-027", "20-028", "20-029", "20-030"];
% input = read_data('./datasets/2020_holmium/', Lignite);

% input = readtable('./datasets/20200914_mga_field_trip/cyclone_3_labeled.csv');
% input = input{2:4808,2:494};
input = readtable('/Users/zimenglyu/Documents/datasets/microbeam/PPM/combined/cyclone_10/Cyclone_10_202303_202105.csv');
input = input{2:14399,2:504};
%%
min_pts = 3;
num_data = 100;
%% norm p=1
idx_1=[];
x_1=linspace(4000,12000,num_data);
for i = 1:num_data
    idx_1=horzcat(idx_1, dbscan(input,x_1(i),min_pts,'Distance','minkowski','P',1));
end

plot_statics(idx_1, x_1)

%% norm p=2
idx_2=[];
x_2=linspace(26,35,num_data);
for i = 1:num_data
    idx_2=horzcat(idx_2, dbscan(input,x_2(i),min_pts));
end

plot_statics(idx_2, x_2)

%% norm p=3
idx_3=[];
x_3=linspace(300,340,num_data);
for i = 1:num_data
    idx_3=horzcat(idx_3, dbscan(input,x_3(i),min_pts,'Distance','minkowski','P',3));
end

plot_statics(idx_3, x_3)



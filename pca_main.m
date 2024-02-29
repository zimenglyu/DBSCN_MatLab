%% get data
% Lignite = ["18-028", "18-029", "18-031", "18-054"];
% Sub_Bituminous = ["20-019", "20-020", "20-021", "20-022", "20-023", "20-024"];
% Bituminous = ["20-025", "20-026", "20-027", "20-028", "20-029", "20-030"];
% input = read_data('./datasets/2020_holmium/', Lignite);
% input = readtable('./datasets/20201022_MGA_CT_Data/20201027_144_CT_MGA.csv');
input = readtable('/Users/zimenglyu/Documents/datasets/microbeam/PPM/combined/cyclone_10/Cyclone_10_202303_202105_202209_spectra.csv');
input = input{2:20313,2:504};

%% PCA on original data
[eigenvalue,eigenvector]=pca_eigen(input');
[label,var]=variance(eigenvalue,0.8);
%%
% x_new is the first 3 components of PCA results
PC3 = eigenvector(:, 1:label);
x_new = input * PC3;
construct = x_new * PC3';
%%
min_pts = 3;
num_data = 50;
%% p=1
idx_1 = [];
x_1=linspace(0.03, 5, num_data);
parfor i = 1:num_data
    idx_1 = horzcat(idx_1, dbscan(x_new, x_1(i), min_pts,'Distance', 'minkowski', 'P', 1));
end

plot_statics(idx_1, x_1,  "144 Manhattan min\_pt " + min_pts)

%% p=2
idx_2 = [];
x_2 = linspace(5.3,20,num_data);
parfor i = 1:num_data
    idx_2 = horzcat(idx_2, dbscan(x_new, x_2(i), min_pts));
end

plot_statics(idx_2, x_2,  "144 Euclidean min\_pt " + min_pts)

%% p=3 
idx_3 = [];
x_3 = linspace(0.02, 1, num_data);
parfor i = 1:num_data
    idx_3 = horzcat(idx_3, dbscan(x_new, x_3(i), min_pts,'Distance','minkowski','P',3));
end

plot_statics(idx_3, x_3,  "Cyclone 3 mink 3 min\_pt " + min_pts)

%% 3d plot

plot3d(x_new)

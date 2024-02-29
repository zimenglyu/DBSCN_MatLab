function input = read_data(path,names)
    input = [];
    for name = names
        file = readtable(path + name + '.csv');
        file = file{2:31, 5:507};
        input = vertcat(input,file);
    end
%     Bailey=readtable('2020/Bailey.csv');
%     Bailey=Bailey{2:100,6:507};
% 
%     Deer_Run=readtable('2020/DeerRun.csv');
%     Deer_Run=Deer_Run{2:100,6:507};
% 
%     Shay=readtable('2020/Shay1.csv');
%     Shay=Shay{2:100,6:507};
% 
%     Homer3=readtable('2020/Homer3.csv');
%     Homer3=Homer3{2:100,6:507};
% 
%     Roxana=readtable('2020/Roxana.csv');
%     Roxana=Roxana{2:100,6:507};
% 
%     Scarlet_Glen=readtable('2020/ScarletGlen.csv');
%     Scarlet_Glen=Scarlet_Glen{2:100,6:507};
% 
%     Wild_Boar=readtable('2020/WildBoar.csv');
%     Wild_Boar=Wild_Boar{2:100,6:507};
% 
%     Williamson=readtable('2020/Williamson.csv');
%     Williamson=Williamson{2:100,6:507};

%     input=vertcat(Bailey, Deer_Run, Homer3, Roxana, Scarlet_Glen, Shay, Wild_Boar, Williamson);

end
% Please use the new version matlab (2016b/2017a/2017b) with json support
% https://au.mathworks.com/help/matlab/ref/jsondecode.html

%test_dir = 'data/uts521/zzd/DukeMTMC/bounding_box_train/';
test_dir = '~/Downloads/DukeMTMC-reID/bounding_box_train/';

fid = fileread('./result/train_points.json');
points = jsondecode(fid);
names = fieldnames(points);

for i=1:numel(names)
    img_path = sprintf('%s%s.jpg',test_dir,names{i}(2:end));
    fprintf(img_path);
    peak18 = points.(names{i});
    break; %here we just show the first image
end

im = imread(img_path);
imshow(im);
hold on;
% draw red circle
for i=1:18
    tmp = peak18{i};
    if ~isempty(tmp)
        plot(tmp(1),tmp(2),'ro');
    end
end
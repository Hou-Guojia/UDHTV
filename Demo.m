%% 
% Code for "Dual High-order Total Variation Model for Underwater Image Restoration"
% Yuemei Li, Guojia Hou*, Peixian Zhuang, Zhenkuan Pan
% This code is free for academic usage
%%

warning('off','all');
clear all;close all;clc;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
addpath utils;
img_path = 'Image\';
ext = {'*.jpeg','*.jpg','*.png','*.pgm', '*.tif','*.bmp'};
img_path_list = [];
img_path_list_ = [];
for i = 1: length( ext)
    img_path_list_ = dir([img_path, ext{i}]);
    img_path_list = [img_path_list;img_path_list_];
end
img_num = length(img_path_list);
if img_num > 0
    for i = 1: img_num
        tic;
        img_name = img_path_list(i).name;
        fprintf('%d %s\n',i,strcat(img_path, img_name)); 
        img = imread([img_path, img_name]);
        result = UDHTV(im2double(img),img_name);
        toc;
    end
end






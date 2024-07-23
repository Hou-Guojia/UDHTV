%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%    My_minfilter：最小值滤波
%   输入：
%       I：输入灰度图像
%       window_size：最大值滤波的窗口大小
%   输出：output：最大值滤波的图像
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [output] = My_minfilter(I,window)

    %% 第一步 读取图像信息
    I_new = I;
    [h,w] = size(I);
    I_extend=ones(h+2*window,w+2*window);
    I_out=ones(h,w);
    for i=1:h
        for j=1:w
        I_extend(i+window,j+window)=I_new(i,j,:);
        end
    end
% figure;imshow(I_extend);
    %% 第二步 遍历循环，进行最大值化
for i=1+window:h+window
    for j=1+window:w+window
        A=I_extend(i-window:i+window,j-window:j+window);
        I_out(i-window,j-window)=min(min(A));
    end
end
output=I_out;
% figure;imshow(I_out);
end
function output = My_maxfilter(I,window)
    %% ��һ�� ��ȡͼ����Ϣ
    I_new = I;
    [h,w] = size(I);
    I_extend=zeros(h+2*window,w+2*window);
    I_out=zeros(h,w);
    for i=1:h
        for j=1:w
        I_extend(i+window,j+window)=I_new(i,j,:);
        end
    end
% figure;imshow(I_extend);
    %% �ڶ��� ����ѭ�����������ֵ��
for i=1+window:h+window
    for j=1+window:w+window
        A=I_extend(i-window:i+window,j-window:j+window);
        I_out(i-window,j-window)=max(max(A));
    end
end
%%
output=I_out;
end
function output = co_orientation2(I)
%% n=2,Frequency Variation

dct_I = dct2(I);
F = [0 0 0 0 0; 0 1 0 0 0; 0 0 1 1 0; 0 0 1 1 1; 0 0 0 1 1];
temp1=dct_I(F~=0);
std_gauss=std(abs(temp1(:)));
mean_abs=mean(abs(temp1(:)));
o1 = std_gauss/(mean_abs+0.00000001);
output = o1;

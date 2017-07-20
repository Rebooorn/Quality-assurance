
clc;
clear all;
close all;
%% correlation between light field and irradiation field
% calculate 
src = imread('qa001.tif');
figure(1);
imshow(src);
title('Original image');

lightField = src;
irradField = src;
lightField(lightField>10000)=2^16-1;
irradField(irradField<40000 | irradField>60000) = 2^16-1;

figure(2)
subplot(1,2,1);
imshow(lightField);
subplot(1,2,2);
imshow(irradField);

% calculate light field 
% upper rectangle ver1(850:1000,550:700), ver2(1450:1600,550:700)
%                 ver3(850:1000,1150:1300), ver4(1450:1600,1150:1300)
% lower rectangle ver1(550:700,1600:1750), ver2(1750:1900,1600:1750)
%                 ver3(550:700,2800:2950), ver4(1750:1900,2800:2950)

a1 = lightField(850:1000,550:700);
a2 = lightField(1450:1600,550:700);
a3 = lightField(850:1000,1150:1300);
a4 = lightField(1450:1600,1150:1300);

a5 = lightField(550:700,1600:1750);
a6 = lightField(1750:1900,1600:1750);
a7 = lightField(550:700,2800:2950);
a8 = lightField(1750:1900,2800:2950);






% figure(2);
% hist(double(src(:)),1000);


% 
% a=1:10000;
% t1 = edge(src,'Canny',[0.015,0.03]); % irradiation edge
% t2 = edge(src,'Canny',[0.3,0.4]); % light field
% 
% % calculate irradiation field 
% figure(2);
% hold on;
% subplot(1,2,1);
% plot(sum(t1,1));
% subplot(1,2,2);
% plot(sum(t1,2));
% hold off;
% 
% figure(3);
% hold on;
% subplot(1,2,1);
% imshow(1-t1); title('irradition field edge');
% subplot(1,2,2);
% imshow(1-t2); title('light field edge');
% hold off;
% 
% %[num,c] = hist(double(src(:)),1000);
% 


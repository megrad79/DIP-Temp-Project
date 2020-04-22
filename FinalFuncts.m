% ---------------------------------------------------------
% NAME: Taryn Jones ---------------------------------------
% COURSE: EEL5820 -----------------------------------------
% DATE: 4/15/19 -------------------------------------------
% TITLE: Final Report -------------------------------------
% DESCRIPTION: Temperature Calculation Via Digital Image ---------------------------------------------------------

%% Block diagram
    % Load Images >> Visualize Data >> Pre-process 
    % >> Feature extraction >> Classification >> Evaluate models

close all
clear
clc

%% Load data
A1=imread('t1f.jpg');
A2=imread('t1.jpg');
A3=imread('t2f.jpg');
A4=imread('t2.jpg');
A5=imread('t3f.jpg');
A6=imread('t3.jpg');
A7=imread('t4f.jpg');
A8=imread('t4.jpg');
A9=imread('t5.jpg');
A10=imread('t5f.jpg');
A11=imread('t1f_smart.jpg');
A12=imread('t1_smart.jpg');
A13=imread('t2_smart.jpg');
A14=imread('t2f_smart.jpg');
A15=imread('t3f_smart.jpg');
A16=imread('t3_smart.jpg');
A17=imread('t4f_smart.jpg');
A18=imread('t4_smart.jpg');
A19=imread('t5f_smart.jpg');
A20=imread('t5_smart.jpg');
A21=imread('t6f.jpg');
A22=imread('t6.jpg');
A23=imread('t6_smart.jpg');
A24=imread('t6f_smart.jpg');
A25=imread('t7f.jpg');
A26=imread('t7.jpg');
A27=imread('t7_smart.jpg');
A28=imread('t7f_smart.jpg');
A29=imread('IR_VTC.jpg');
A30=imread('IR_Lake.jpg');
A31=imread('VTC_webcam.jpg');
A32=imread('RGB_VTC_80-60.jpg');
A33=imread('Lake_webcam.jpg');
A34=imread('RGB_Lake_80-60.jpg');

%% Pre-process
%% Rotate sideways photos
A11=imrotate(A11,-90);
A12=imrotate(A12,-90);
A13=imrotate(A13,-90);
A14=imrotate(A14,-90);
A15=imrotate(A15,-90);
A16=imrotate(A16,-90);
A17=imrotate(A17,-90);
A18=imrotate(A18,-90);
A19=imrotate(A19,-90);
A20=imrotate(A20,-90);

%% Standardize images
% Resize to 1024 by 1024
A1=imresize(A1, [512 512]);
A2=imresize(A2, [512 512]);
A3=imresize(A3, [512 512]);
A4=imresize(A4, [512 512]);
A5=imresize(A5, [512 512]);
A6=imresize(A6, [512 512]);
A7=imresize(A7, [512 512]);
A8=imresize(A8, [512 512]);
A9=imresize(A9, [512 512]);
A10=imresize(A10, [512 512]);
A11=imresize(A11, [512 512]);
A12=imresize(A10, [512 512]);
A13=imresize(A10, [512 512]);
A14=imresize(A10, [512 512]);
A15=imresize(A10, [512 512]);
A16=imresize(A10, [512 512]);
A17=imresize(A10, [512 512]);
A18=imresize(A10, [512 512]);
A19=imresize(A10, [512 512]);
A20=imresize(A10, [512 512]);
A21=imresize(A21, [512 512]);
A22=imresize(A22, [512 512]);
A23=imresize(A23, [512 512]);
A24=imresize(A24, [512 512]);
A25=imresize(A25, [512 512]);
A26=imresize(A26, [512 512]);
A27=imresize(A27, [512 512]);
A28=imresize(A28, [512 512]);
A29=imresize(A29, [512 512]);
A30=imresize(A30, [512 512]);
A31=imresize(A31, [512 512]);
A32=imresize(A32, [512 512]);
A33=imresize(A33, [512 512]);
A34=imresize(A34, [512 512]);

%% Feature extraction & classification
T1=rgb(A1);
T2=br(A1);
T3=hue(A1);

%% Evaluate model
%% efficiency per Trial
%% Trial 1 (Indoor)
T1=[rgb(A1),rgb(A2),rgb(A11),rgb(A12)];
T2=[br(A1),br(A2),br(A11),br(A12)];
T3=[hue(A1),hue(A2),hue(A11),hue(A12)];

T1=mean(T1);
T2=mean(T2);
T3=mean(T3);

Tr1=[T1, T2, T3];

Tr1=mean(Tr1) %deg

%Actual Temp Eff
aerr=100*abs(Tr1-70)/70;
aaccuracy=100-aerr %percent

%Measured Temp Eff
merr=100*abs(Tr1-74)/74;
maccuracy=100-merr %percent

%% Trial 2 (Indoor)
T1=[rgb(A3),rgb(A4),rgb(A13),rgb(A14)];
T2=[br(A3),br(A4),br(A13),br(A14)];
T3=[hue(A3),hue(A4),hue(A13),hue(A14)];

T1=mean(T1);
T2=mean(T2);
T3=mean(T3);

Tr1=[T1, T2, T3];

Tr1=mean(Tr1) %deg

%Actual Temp Eff
aerr=100*abs(Tr1-78)/78;
aaccuracy=100-aerr %percent

%Measured Temp Eff
merr=100*abs(Tr1-72)/72;
maccuracy=100-merr %percent

%% Trial 3 (Outdoor)
T1=[rgb(A5),rgb(A6),rgb(A15),rgb(A16)];
T2=[br(A5),br(A6),br(A15),br(A16)];
T3=[hue(A5),hue(A6),hue(A15),hue(A16)];

T1=mean(T1);
T2=mean(T2);
T3=mean(T3);

Tr1=[T1, T2, T3];

Tr1=mean(Tr1) %deg

%Actual Temp Eff
aerr=100*abs(Tr1-60)/60;
aaccuracy=100-aerr %percent

%Measured Temp Eff
merr=100*abs(Tr1-64)/64;
maccuracy=100-merr %percent

%% Trial 4 (Outdoor)
T1=[rgb(A7),rgb(A8),rgb(A17),rgb(A18)];
T2=[br(A7),br(A8),br(A17),br(A18)];
T3=[hue(A7),hue(A8),hue(A17),hue(A18)];

T1=mean(T1);
T2=mean(T2);
T3=mean(T3);

Tr1=[T1, T2, T3];

Tr1=mean(Tr1) %deg

%Actual Temp Eff
aerr=100*abs(Tr1-65)/65;
aaccuracy=100-aerr %percent

%Measured Temp Eff
merr=100*abs(Tr1-65)/65;
maccuracy=100-merr %percent

%% Trial 5 (Outdoor)
T1=[rgb(A9),rgb(A10),rgb(A19),rgb(A20)];
T2=[br(A9),br(A10),br(A19),br(A20)];
T3=[hue(A9),hue(A10),hue(A19),hue(A20)];

T1=mean(T1);
T2=mean(T2);
T3=mean(T3);

Tr1=[T1, T2, T3];

Tr1=mean(Tr1) %deg

%Actual Temp Eff
aerr=100*abs(Tr1-60)/60;
aaccuracy=100-aerr %percent

%Measured Temp Eff
merr=100*abs(Tr1-65)/65;
maccuracy=100-merr %percent

%% Trial 6 (Indoor)
T1=[rgb(A21),rgb(A22),rgb(A23),rgb(A24)];
T2=[br(A21),br(A22),br(A23),br(A24)];
T3=[hue(A21),hue(A22),hue(A23),hue(A24)];

T1=mean(T1);
T2=mean(T2);
T3=mean(T3);

Tr1=[T1, T2, T3];

Tr1=mean(Tr1) %deg

%Actual Temp Eff
aerr=100*abs(Tr1-69)/69;
aaccuracy=100-aerr %percent

%Measured Temp Eff
merr=100*abs(Tr1-72)/72;
maccuracy=100-merr %percent

%% Trial 7 (Outdoor)
T1=[rgb(A25),rgb(A26),rgb(A27),rgb(A28)];
T2=[br(A25),br(A26),br(A27),br(A28)];
T3=[hue(A25),hue(A26),hue(A27),hue(A28)];

T1=mean(T1);
T2=mean(T2);
T3=mean(T3);

Tr1=[T1, T2, T3];

Tr1=mean(Tr1) %deg

%Actual Temp Eff
aerr=100*abs(Tr1-69)/69;
aaccuracy=100-aerr %percent

%Measured Temp Eff
merr=100*abs(Tr1-74)/74;
maccuracy=100-merr %percent

%% Trial 8 (Indoor)
T1=[rgb(A29),rgb(A31),rgb(A32)];
T2=[br(A29),br(A31),br(A32)];
T3=[hue(A29),hue(A31),hue(A32)];

T1=mean(T1);
T2=mean(T2);
T3=mean(T3);

Tr1=[T1, T2, T3];

Tr1=mean(Tr1) %deg

%Actual Temp Eff
aerr=100*abs(Tr1-70)/70;
aaccuracy=100-aerr %percent

%Measured Temp Eff
merr=100*abs(Tr1-73)/73;
maccuracy=100-merr %percent


%% Trial 9 (Outdoor)
T1=[rgb(A30),rgb(A33),rgb(A34)];
T2=[br(A30),br(A33),br(A34)];
T3=[hue(A30),hue(A33),hue(A34)];

T1=mean(T1);
T2=mean(T2);
T3=mean(T3);

Tr1=[T1, T2, T3];

Tr1=mean(Tr1) %deg

%Actual Temp Eff
aerr=100*abs(Tr1-86)/86;
aaccuracy=100-aerr %percent

%Measured Temp Eff
merr=100*abs(Tr1-98)/98;
maccuracy=100-merr %percent

%% efficiency per Flash vs. No Flash

%efficiency per Camera Type

%efficiency per Indoors vs. Outdoors


%% Future Work: frequency filter?/ wavelength band
%% color map
%     # * yellow = (30, 90)  
%     # * blue = (150, 240) 

figure;imshow(A1)
title('Original')

% Convert to gray
g=rgb2gray(A1);
figure;imshow(g)
title('Color Map')
% 
% % Scale image colors
% figure; im=imagesc(512,512,g)
% title('Color Scale')

% Color map
I3=colormap(parula);

%% Feature extraction and classification functions
%% rgb max > other rgb max
function T1=rgb(X)
R = X(:, :, 1);   %red
figure;
subplot(1,3,1); imshow(R)
title('Red')

G = X(:, :, 2);   %green
subplot(1,3,2); imshow(G)
title('Green')

B = X(:, :, 3);   %blue
subplot(1,3,3); imshow(B)
title('Blue')

% image = Red + Green + Blue
s1=R+G+B;            %combined image
figure;imshow(s1)
title('Gray Combine')

if mean(s1,'all') >= 200 | mean(s1,'all') > mean(B)
    T1=sum(75+90)/2;    %hot
elseif max(B,[],'all') <= max(G,[],'all') | max(B,[],'all') < max(R,[],'all')
    T1=sum(60+70)/2;    %cold
else
    T1=sum(70+75)/2;    %tie
end
end
%pass!

%% brightness = warmth
function T2=br(X)
H = rgb2hsv(X);

[h s v] = imsplit(H);
figure;
subplot(1,2,1);imshow(H)
title('HSV Image')

subplot(1,2,2);imshow(v)
title('HSV Image')

if mean(v,'all') >= 0.42    
    T2=sum(75+90)/2;    %hot
elseif mean(v,'all') <= 0.37
    T2=sum(60+70)/2;    %cold
else
    T2=sum(70+75)/2;    %tie
end
end
%pass! (working best as possible; some errors)

%% hue range? = majority red =hot
function T3=hue(X)
H = rgb2hsv(X);

[h s v] = imsplit(H);
figure;
subplot(1,2,1);imshow(H)
title('HSV Image')

subplot(1,2,2);imshow(h)
title('HSV Image')

if mean(h,'all') >= 0.46    
    T3=sum(75+90)/2;    %hot
elseif mean(h,'all') <= 0.31
    T3=sum(60+70)/2;    %cold
else
    T3=sum(70+75)/2;    %tie
end
end
%pass!

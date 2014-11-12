function neuron2obj(idToPlot)
%%Visualize Mesh Matlab for Omair

%Connectomics Seminar 2014
%Omair Akmal and W. Gray Roncal

%Code commented out until Omair's OBJ Code can be used to internally view the model before redering. Any code commented out in the area below that is experimental

%%References
%https://drive.google.com/folderview?id=0B6iZJMt9RjNiSW1QWWJYakR4bmc&usp=drive_web
%Download and open train-labels.zip (train-input is the em data)
%http://www.mathworks.com/matlabcentral/fileexchange/27982-wavefront-obj-toolbox/content/write_wobj.m
%http://www.mathworks.com/matlabcentral/answers/25865-how-to-export-3d-image-from-matlab-and-import-it-into-maya
%http://www.aleph.se/Nada/Ray/matlabobj.html

%% load in data
for i = 1:100 
    labelOut(:,:,i) = imread('train-labels.tif',i);
end

% figure, imagesc(labelOut(:,:,1))
   
%% Select object
L = labelOut; %label image
singleNeuron = (L == idToPlot);

%% for display
% hfig = figure(102);
% 
% set(hfig,'PaperOrientation','Landscape');
% set(gcf,'Color',[1 1 1])
% hold on
% nColors = 16;
% cmap = jet(nColors); %choose your colormap

%% rendering preview

% h3a = isosurface(singleNeuron,0);
% h3b = reducepatch(h3a, 0.10);
% h3 = patch(h3b);
% %set facealpha if this is too strong.
% set(h3,'FaceColor',cmap(mod(i,nColors)+1,:),'EdgeColor','none','FaceAlpha',0.25,'FaceLighting','phong')
% drawnow
% 
% axis off
% hold off



 
%% %% %%  Omair's .OBJ code
%% Remove Anisotropic filtering -  How do I do this along the z-axis? (NOT DONE)
% singleNeuronExpand = imresize(singleNeuron,[2]);

%% fill holes (NOT DONE)
% cleanimg = imclose(singleNeuron,strel(ones(0,0,0)));


%% Build neuron 
[f,v] = isosurface(singleNeuron,0);
[nf,nv] = reducepatch(f,v,.01);      %This value controls how much the model is simplified. That is, how many points are removed so that the model is more manageable. 1 is nothing. 

%% Export as .OBJ
q = idToPlot;
fname = sprintf('NeuronID%d.obj', q);
vertface2obj(nv,nf,fname); 


  

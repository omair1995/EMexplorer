EMexplorer
==========

EM connectomics 3D visuallizer: https://www.youtube.com/watch?v=p8t9qNt0u2A&feature=youtu.be
 
To get the rest of the data files, go to: https://www.dropbox.com/sh/20zogvt155pf4ee/AABmDageJPJ8QuuoN77_ckX1a?dl=0


Load up the matlab funtion and point it to the trainlabels.tif file found on dropbox. Inside the funtion, you can view individual neurons by ID using some of the code that has been commented out. When you find a suitable set, run the funtion. Be sure to set the reducepatch line to a degree that is ideal for you.  

Once you have a set of OBJ files, they must be processed for importation into Unity. While Matlab efficiently creates the surface geometry, it fails to seal the tops and bottoms of models where the volume ends. Furthermore, the surface appears insideout. To solve both of these problems, the model can either be imported in Autodesk 3dsMax or Netfabb, both of which contain powerful automatic tools to flip the normals (indicates which side of the surface is “up”) and cap any holes in the model. While Netfabb is more intuitive (and was used in this particular demo), 3dsMax has its own proprietary script manager that may allow for a fully automatic batch operation.

Once that is complete, the objects are ready to be dropped into the unity project. This is also found on dropbox. Simply drop all models on the coordinate origin and scale as needed, and then run the program. 


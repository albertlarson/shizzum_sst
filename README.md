# shizzum_sst

the .ipynb takes the schism output and turns it first into a .csv. from there, it takes the .csv and creates a .geotiff in epsg:4326. the resolution is as fine as possible. any better resolution crashed my kernel.

i used generate_tiles.sh to take the .tif created in the .ipynb. it leverages a docker container for running gdal.

after running gdal2tiles.py, i move the openlayers.html file to the top level of this folder, and change the name to index.html. i modify slightly the html code to point to the tile folder. 

the .tif file is too large for github, so i'll go ahead and put all this on oscar as well. i will generate_tiles.sh again and leave the code how it is, so you can see how the output is originally. 

you would have to do make some changes to the color scheme to display how you want, but this is at least a starting point to take the unstructured schism data and make it a gridded product.

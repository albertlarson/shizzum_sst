#!/bin/bash

# Set the file names
INPUT_TIF="output_data_normalized.tif"
TEMP_VRT="temp.vrt"
OUTPUT_DIR="shizz_norm_tiles"

gdal_translate -of VRT -ot Byte -scale -a_nodata 0 $INPUT_TIF $TEMP_VRT

# Generate tiles
docker run --rm -it -v "$(pwd)":/data ghcr.io/osgeo/gdal:alpine-normal-latest gdal2tiles.py --processes=4 /data/$TEMP_VRT /data/$OUTPUT_DIR

echo "Tiles generated and saved in the directory: $OUTPUT_DIR"
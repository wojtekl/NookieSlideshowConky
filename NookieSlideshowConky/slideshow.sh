#!/bin/bash
 
##########################################################################
##               conky slideshow by Alessandro Roncone                  ##
##                               v 0.2                                  ##
##                          GNU GPLv3 2012                              ##
##########################################################################
 
##########################################################################
# Settings
##########################################################################
# Directory containing the script and the pictures
directory="pics"
# Dimension of the slideshow (either "small", "medium" or "big")
dim="medium"
 
##########################################################################
# Script (do not change unless you know what you're doing)
##########################################################################

# Manage dimension flag
if [ $dim == "small" ]; then
  geometry="158x100"
  pos="155,214"
elif [ $dim == "medium" ]; then
  geometry="238x148"
  pos="85,175"
elif [ $dim == "big" ]; then
  geometry="318x200"
  pos="0,119"
fi
 
# Pick a random file from all pictures
files=($directory/*.*)
let r="$RANDOM % ${#files[*]}"
randomfile=${files[$r]}
 
# Sets picture for conky to use
convert $randomfile -resize $geometry\> -size $geometry xc:black +swap -gravity center  -composite current.png
convert pix/photobg_bg_$dim.png current.png -geometry +11+11 -composite result.png
convert result.png pix/photobg_shadow_$dim.png -composite result.png
echo "\${image result.png -p $pos}"
exit

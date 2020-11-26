# Metadata ---------------------------------------------------------------------

# Purpose: download latest datasets necessary for the analysis

# WARNING: This can be a large download (>5GB). You do NOT need too do 
# this if you have received the data via a different sharing platform.

# To use this, you must first set up a Personal Access Token for github, follow
# the instructions after running usethis::browse_github_pat() this will first
# take you to a browser to generate the Personal Access Token, and then tell you
# to run usethis::edit_r_environ()` to open '.Renviron'. and save it in a
# new line as follows: GITHUB_PAT=xxxyyyzzz
# MAKE SURE .Renviron ends with a newline.

# Load necessary packages ------------------------------------------------------

# install.packages("pacman")
library(pacman)
p_load(piggyback, here, usethis)

# Downloads the latest data ----------------------------------------------------

# This downloads ALL data from the latest Github release to your local "Data" 
# folder that has a timestamp newer than that currently saved in your local 
# "Data" folder

# SECOND WARNING: This can be a large download (>5GB). You do NOT need too do 
# this if you have received the data via a different sharing platform. 

pb_download()

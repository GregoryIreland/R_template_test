# Metadata ---------------------------------------------------------------------

# Purpose: Upload datasets necessary for the analysis

# Workflow: Copy any new data and folder structure into the Data folder in your
# local repository, then execute the code below.

# To use this, you must first set up a Personal Access Token for github, follow
# the instructions after running usethis::browse_github_pat() this will first
# take you to a browser to set up the Personal Access Token, and then tell you
# to run usethis::edit_r_environ()` to open '.Renviron'. and save your it in a
# new line as follows: GITHUB_PAT=xxxyyyzzz
# MAKE SURE .Renviron ends with a newline.

# Load necessary packages ------------------------------------------------------

# install.packages("pacman")
library(pacman)
p_load(piggyback, here, usethis, dplyr)

# Setup first release (only do the first time) ---------------------------------

# Navigate to the repository on github.com and create a first release (see
# releases on the right side of the main repository page.)
# By convention, you can give it the tag "v0.0.1", and call it "Data release"

# Upload the newly added data --------------------------------------------------

# This uploads ALL data in your local "Data" folder that has a timestamp newer 
# than that currently saved under the latest release on GitHub

piggyback::pb_track("Data/*")

# Overwrite is set to FALSE as timestamps are buggy, if you do want to overwrite
# a specific file that already exists, do it manually (see below)
piggyback::pb_track() %>% piggyback::pb_upload(overwrite = FALSE)

# Upload of single file, overwriting existing file on Github if timestamp is newer
# piggyback::pb_upload(file = here::here("Data", "file.file"))

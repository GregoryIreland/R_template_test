# rli\_template\_r

A template for new data analysis projects written in R at the RLI.

You can use this template to prepare a new Github repository for collaborative data analysis projects using the R statistical programming language. This is an opinionated template and suggests a folder structure as well as data management processes to make collaboration smoother within and outside the RLI.

Simply click on the green `Use this template` button on the left of the `Clone or download` button.

The detailed instructions to create a new repository from this template can be found [here](https://help.github.com/en/articles/creating-a-repository-from-a-template).

## renv

You must run `renv::init()` and select the option that activates the current renv with your project. This must only be run once. You can then install the packages you want to work with in this project as you normally do, and then you can save a snapshot of these using `renv::snapshot()`. Every other user now just runs `renv::restore()` on their local machine to get the exact same packages versions that you have used. More information can be found here: `https://rstudio.github.io/renv/articles/collaborating.html`

Once you have created the new repository, you can remove everything before and including this line. 

# Project Name

Briefly describe the project aims and project partners, as well as the funding agenc(y)ies.

## Get started

Please review the CONTRIBUTING.md file describing how to engage with this project.

## Basic folder structure

-   **R** contains all .R and .Rmd scripts.
-   **Data** is and remains *empty* in the repository. This is populated with a separate data download process on your local machine. Please review datadown.R in the R folder for further information.
-   **Output** is where the final .Rmd, .pdf, .docx, .tex, .png, or similar result presentation scripts or files of the project are stored.
-   **renv** contains a project-local library of packages.

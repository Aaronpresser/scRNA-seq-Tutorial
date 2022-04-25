# scRNA-seq Analysis Tutorial
Who is this intended for: Someone who has never used R, does not have R installed on their computer, and who certainly has 
never analyzed scRNA-seq data themselves, but who knows what scRNA-seq analysis is.
(If you don't know what scRNA-seq analysis is, this short article should tell you what you need to know - https://hbctraining.github.io/scRNA-seq/lessons/01_intro_to_scRNA-seq.html)

Why create a new tutorial: A lot of the best scRNA-seq tutorial assume that the person using them has experience using R. Many of the wet-lab biologist I know do not. I want this repository to make better tutorials (in particular, Harvard's) accessible to people who have never used R before, and who have no programming experience.

What this is: I want this tutorial to be an scRNA-seq analysis tutorial with training wheels. That is why I have added notes and comments all the way through the tutorial here that explain what the code chunks do. Spend time thinking about each comment and how it relates to the code chunks that follow it. If after a little bit of thinking some things are still unclear to you, create an "Issue" in the "Issues" tab above and I will add more notes and comments, or revise the ones that are already there.

Where to start: In the file marked Seurat_script.Rmd! (Seurat is the name of the analysis software.) As you're going through the Seurat_script, 
read the "comments" (the sentences that follow the hashes ("#")). They will tell you what is the chunk of code that follows them does. In the chunks of code,
you will see roughly a few sorts of functions. There are "basic" R functions, and functions that come from the packages that are imported as part of the
analysis process. If you are confused about how to use a "basic" R function, refer to the "R_tutorial.Rmd" script included in this repository. If you are
confused about how to use a function that comes from one of the imported packages, google the name of the function that confuses you followed by the 
package it came from, e.g., if you are confused about the "FindConservedMarkers" function from Seurat, google "FindConservedMarkers Seurat". If you can't
tell which package a function came from, just google the name of the function followed by "R" (e.g., "FindMarkers R") and that should be good enough.

# Django

Docker's COPY and ADD commands only work for relative paths, so make sure you copy the project to this directory before trying to build the image. 

It should also be noted that docker does not follow symlinks, so the project's directory must be copied. 

#------------------------------------------------------------------------------------
# Project Set-up
#------------------------------------------------------------------------------------

# Create a file system for your project
folders <- c(
  "data",
  "scripts",
  "output/figures",
  "output/tables",
  "manuscript"
)
sapply(folders,
  FUN = dir.create,
  recursive = TRUE
)

# Can change file folder naming convention as needed for specific project.

#-------------------------------------------------------------------------------------

# Install packages that can be used to identify errors in your code and fix those errors
install.packages("lintr")
install.packages("styler")
library(lintr)
library(styler)

# lint("filename.R") OR lint("") then hit tab to identify all file options available to "lint" (select one).  This code can be run on any script to identify syntax errors in the code. A new tab called "markers" will appear and you can use the tab button to move your cursor to specific errors.

lint("scripts/ProjectSetup.R")

# Click on the "Addins" button at the top of the screen and select "style active file" to style your code (entire .R file) or highlight a piece of code then select "Addins" and "style selection" to style that piece of code.

#--------------------------------------------------------------------------------------

# Install "renv" package for versioning control
install.packages("renv")
library(renv)
renv::init()

# The renv package is installed to ensure that the same package version is used over time and between users.  Package versions used/installed for the project are utilized over time and between users so that errors don't arise as a result of different package versions exisitng on each persons computer, or over time on a single users computer when packages are updated.  A copy of the package is stored within the project to ensure the proper version for that project is used at all times by all users.

# renv::init() creates the renv folder in the project file system and links all packages to the project.

#editing this file a bit more for practice
# adding one more line
# adding another line for testing yay :):):)
#adding another line!

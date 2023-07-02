#------------------------------------------------------------------------Start Updating, Upgrading, and Installing any dependencies-------------------------------------------
# Updating & Upgrading any packages

sudo apt-get update && sudo apt-get upgrade -y

# Adding any dependencies that may be needed
echo "Adding any dependencies that may be needed"
sudo apt-get install wget dirmngr gnupg apt-utils apt-transport-https ca-certificates software-properties-common libnss3 libatlas3-base libopenblas-base -y

#-------------------------------------------------------------------------Start of R program installation---------------------------------------------------------------------

# Adding the R Software version
echo "Stating the versino of R to be 4.3.1 before installation"
echo "deb http://cloud.r-project.org/bin/linux/debian bullseye-cran40/" | sudo tee /etc/apt/sources.list.d/r_chrome_os_made_simple.list

# Adding Key
echo "Adding any neccessary key"

gpg --keyserver keyserver.ubuntu.com \
    --recv-key '95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7'

gpg --armor --export '95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7' | \
    sudo tee /etc/apt/trusted.gpg.d/cran_debian_key.asc

# Installing the R program
echo "Installing the R program"
sudo apt update
sudo apt install r-base r-base-dev -y

#-------------------------------------------------------------------------Start of R studio installation-----------------------------------------------------------------------

sudo apt update
echo "getting the R Studio package"
wget "https://download1.rstudio.org/electron/focal/amd64/rstudio-2023.06.0-421-amd64.deb"
echo "Installing the R-Studio package"
absPath=$(pwd)
sudo apt install "$absPath/rstudio-2023.06.0-421-amd64.deb" -y
sudo apt update && sudo apt upgrade -y
rm -f "$absPath/rstudio-2023.06.0-421-amd64.deb"

#----THE END----

echo "For help on R you can go to: https://www.r-project.org/, and then look at all the documenation in the left side"
echo "You can also look at Codecademy, FreeCodeCamp on Youtube to Learn R Software, and other sources that you might find"

echo "Scipt Creator: Miftahul Huq"
echo "          ---          ---         "
echo "        /     \      /     \       "
echo "        \     /      \     /       "
echo "          ---          ---         "
echo "                                   "
echo "   \                            /  "
echo "    \                          /   "
echo "      -                      -     "
echo "        -                  -       "
echo "          ----------------         " 


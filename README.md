# Quanta 
Quantitative Analyser

# Install

## Linux (Ubuntu 14.04)

* Install prerequisites

        sudo apt-get install cmake libinsighttoolkit3-dev libpng12-dev libgdcm2-dev git wget
        wget https://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh
        source Miniconda-latest-Linux-x86_64.sh
        conda install numpy scipy pip 
        pip install imtools io3d sed3
        

* Install [skelet3d package](https://github.com/mjirik/skelet3d)

        git clone https://github.com/mjirik/skelet3d.git
        cd skelet3d
        mkdir build
        cd build 
        cmake ..
        make 
        pip install .
        sudo make install

    
## Windows 
 
* Install [Anaconda for python 2.7](https://www.continuum.io/downloads) 
* Install required python packages

        conda install --file requirements_conda.txt 
        pip install -r requirements_pip.txt

* Install [skelet3d package](https://github.com/mjirik/skelet3d)
        

        

# Run 

Run QuantA with:

        python quanta/quanta.py

![img](http://147.228.240.61/queetech/www/quanta01.png)

![img](http://147.228.240.61/queetech/www/quanta03.png)

![img](http://147.228.240.61/queetech/www/quanta07.png)

![img](http://147.228.240.61/queetech/www/quanta08.png)

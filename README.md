# Quanta 
Quantitative Histological Analyser

# Install

## Linux (Ubuntu 14.04)

* Install prerequisites

        sudo apt-get install cmake libinsighttoolkit3-dev libpng12-dev libgdcm2-dev git wget
        wget https://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh
        source Miniconda-latest-Linux-x86_64.sh
        conda install numpy scipy pip
        

* Install skelet3d package 
** download the [skelet3d package](https://github.com/mjirik/skelet3d)
** build

        git clone https://github.com/mjirik/skelet3d.git
        cd skelet3d
        mkdir build
        cd build 
        cmake ..
        make 
        pip install .
        sudo make install

    
## Windows 
 
* Install [cmake](https://cmake.org/)
* Download and install Visual Studio Express (https://www.visualstudio.com/products/visual-studio-community-vs#)
* Install [Anaconda](https://www.continuum.io/downloads) 
* Download and install [InsightToolkit](http://www.itk.org/) - [video GUI tutorial](https://www.youtube.com/watch?v=f79joU6FTFQ) or with command line:

        mkdir itk-build
        cd itk-build
        cmake -DBUILD_EXAMPLES=OFF -DBUILD_TESTING=OFF -DBUILD_SHARED_LIBS ..\InsightToolkit-4.7.1
        C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSBuild.exe ALL_BUILD.vcxproj
        
* Install required python packages

        conda install numpy scipy pandas
        pip install sed3 pysegbase imtools

* Install skelet3d package 
** download the [skelet3d package](https://github.com/mjirik/skelet3d)
** build

        cd skelet3d
        mkdir build
        cd build 
        cmake ..
        C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSBuild.exe ALL_BUILD.vcxproj
        

        

# Run 

Run QuantA with:

        python quanta/histology_analyser.py

![img](http://147.228.240.61/queetech/www/quanta01.png)

![img](http://147.228.240.61/queetech/www/quanta03.png)

![img](http://147.228.240.61/queetech/www/quanta07.png)

![img](http://147.228.240.61/queetech/www/quanta08.png)

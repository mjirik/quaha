# QuantAn
Quantitative Analyser

Please See and cite paper:

Jiřík, Miroslav, et al. "Stereological quantification of microvessels using semiautomated evaluation of X-ray microtomography of hepatic vascular corrosion casts." International journal of computer assisted radiology and surgery 11.10 (2016): 1803-1819.

https://www.ncbi.nlm.nih.gov/pubmed/27008472#

    article{jivrik2016stereological,
        title={Stereological quantification of microvessels using semiautomated evaluation of X-ray microtomography of hepatic vascular corrosion casts},
        author={Ji{\v{r}}{\'\i}k, Miroslav and Tonar, Zbyn{\v{e}}k and Kr{\'a}l{\'\i}{\v{c}}kov{\'a}, Anna and Eberlov{\'a}, Lada and M{\'\i}rka, Hynek and Kochov{\'a}, Petra and Gregor, Tom{\'a}{\v{s}} and Ho{\v{s}}ek, Petr and Svobodov{\'a}, Miroslava and Rohan, Eduard and others},
        journal={International journal of computer assisted radiology and surgery},
        volume={11},
        number={10},
        pages={1803--1819},
        year={2016},
        publisher={Springer}
    }

# Install

## Windows 
 
* Use [installer](http://147.228.240.61/queetech/install/setup_quantan.exe)
  (experimental)

or

* Install [Anaconda for python 2.7](https://www.continuum.io/downloads) 
* Install QuantAn

        conda install -c mjirik -c SimpleITK quantan



## Linux (Ubuntu 14.04)

* Install prerequisites

        sudo apt-get install cmake libinsighttoolkit3-dev libpng12-dev libgdcm2-dev git wget
        wget https://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh
        source Miniconda-latest-Linux-x86_64.sh
        conda install numpy scipy pip imtools io3d sed3
        
* Install [skelet3d package](https://github.com/mjirik/skelet3d)

        git clone https://github.com/mjirik/skelet3d.git
        cd skelet3d
        mkdir build
        cd build 
        cmake ..
        make 
        sudo make install
        pip install .

* Install Quantan

        conda install -c mjirik -c SimpleITK quantan

    
## Mac OS   

* Install prerequisites (brew packages, anaconda)

        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        brew install git cmake homebrew/science/insighttoolkit libpng
        curl "http://repo.continuum.io/miniconda/Miniconda-latest-MacOSX-x86_64.sh" -o "Miniconda-latest.sh"
        bash Miniconda-latest.sh -b
        echo "export PATH=$HOMEDIR/miniconda/bin:\$PATH" >> ~/.profile
        
        
* Install [skelet3d package](https://github.com/mjirik/skelet3d)

        git clone https://github.com/mjirik/skelet3d.git
        cd skelet3d
        mkdir build
        cd build 
        cmake ..
        make 
        sudo make install
        cd ..
        pip install .

* Install Quantan

        conda install -c mjirik -c SimpleITK quantan
# Run 

Run QuantAn with:

        python -m quantan

![img](http://147.228.240.61/queetech/www/quantan01.png)

![img](http://147.228.240.61/queetech/www/quantan03.png)

![img](http://147.228.240.61/queetech/www/quantan08.png)

![img](http://147.228.240.61/queetech/www/quantan10.png)

# Sample data

Download sample data into `sample_data` directory

        quantan --get-sample-data


or download [Sample data](http://147.228.240.61/queetech/sample-data/biodur_sample.zip) manually


# Sample outputs

* [segmentation (DICOM)](http://147.228.240.61/queetech/www/segmentation.dcm)
* [skeleton (DICOM)](http://147.228.240.61/queetech/www/skeleton.dcm)
* [labeled skeleton (DICOM)](http://147.228.240.61/queetech/www/labeled_skeleton.dcm)

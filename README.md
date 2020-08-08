# First Order Easy

This repository is a fork of the [First Order Motion Model for Image Animation repository](https://github.com/AliaksandrSiarohin/first-order-model). Installing that repository is challenging. This one exists to make that process easier.

## Installation (Windows)

1. Install [git](https://git-scm.com/downloads)
1. Install [Anaconda](https://www.anaconda.com/products/individual)
1. Run the following commands:
    1. `git clone https://github.com/BentonEdmondson/FirstOrderEasy.git`
    1. `cd FirstOrderEasy`
    1. `git clone https://github.com/1adrianb/face-alignment
    1. `cd face-alignment`
    1. `pip install -r requirements.txt`
    1. `python setup.py install`
    1. `cd ..`
    1. `conda env create --file conda-environment.txt`
1. Download all files from [this Google Drive Folder](https://drive.google.com/drive/folders/1PyQJmkdCsAkOYwUyaj_l-l0as-iLDgeH) and place them into `fom-checkpoints/`

Now to use it place your video into `driving-video/<video-name>` and your image into `source-image/<image-name>`. Then run `run.cmd <image-name> <video-name>`.

Helpful resources:
* [Anaconda cheat sheet](https://docs.conda.io/projects/conda/en/4.6.0/_downloads/52a95608c49671267e40c689e0bc00ca/conda-cheatsheet.pdf)

## Installation (Linux)

This is still in progress.
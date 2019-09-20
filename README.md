raspbian-buster
===================

[Raspbian](http://www.raspbian.org/) image for Docker on Raspberry Pi.
Built and Tested on an Raspberry Pi 4 running raspbian buster.

This is a **huge copy** of schachr hard work that you can find [here](https://github.com/schachr/docker-raspbian-stretch). 

Purpose
-------
This is a minimal image of raspbian buster. You can use this image as a base in Dockerfiles.

Generating
----------
A chroot is created using `debootstrap` and compressed so docker can add the root filesystem during the build process. The compression requires xz-utils (or something similar) to be installed on the build machine.  

[mkimage-raspbian.sh](https://github.com/mamoura01/docker-raspbian-buster/blob/master/mkimage-rasbian.sh) is used to build and configure the chroot. This script **heavily** borrows docker's [mkimage.sh](https://github.com/docker/docker/blob/master/contrib/mkimage.sh) script.

Building
--------
If you want to build this image yourself, run the following to generate the compressed chroot.

```bash
$ rm *.tar.xz
$ ./mkimage-raspbian.sh
$ docker build -t raspbian-buster .
```

### Automatic Build details
There is an `automatic build` dependency to the github repository https://github.com/mamoura01/docker-raspbian-buster as well. The archive will receive updates on a regular basis to ensure that the image is up to date.
All you need to do is to pull it (`docker pull mamoura01/docker-raspbian-buster:latest`) and recreate the container based on this image.

Running
-------
This image does not do anything fancy, but if you want to test it out, run the following:

```bash
$ docker run --name raspbian -it mamoura01/docker-raspbian-buster:latest /bin/bash
```
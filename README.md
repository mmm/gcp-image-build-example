
# Build GCP images using Packer

There are two examples here... one based on ubuntu, one on centos.

## Set up variables

copy out the template file

    cp variables.json.template variables.json

and edit to set the appropriate GCP project and path to credentials

    vi variables.json


## Choose your image prefix name

This is in the Makefile atm... move it to variables if it makes sense

    vi Makefile

and change `image_prefix` (part of the image name) to something you'll
recognize.


## Build

You can build either the ubuntu image

    make build_ubuntu

or the centos image

    make build_centos

or both

    make build


## List images

The default `make` target lists images that match your `image_prefix`

    make




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


## Customize your images

Edit the contents of the `files/` and/or `scripts/` directories to customize
your image build.  The simplest example of this is to add more packages by
adding `yum install -y <package-name>` lines to
`image-based-on-centos/scripts/010-packages`.

For more complex installs, just add more (bash) scripts to that directory...
the scripts in that directory are called in order by name.

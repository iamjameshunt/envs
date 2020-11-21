Dockerize the World!
====================

**What's all this then?**

This repository defines fully-fledged development environments,
each implemented as an OCI image.  These images are intended to be
built locally, although you are free to publish them to an
upstream image registry if you so choose.

I wrote these because I grew weary of being tied to a single host
for my ever-evolving development environment, and "popping into"
OCI containers to run and compile code, one process at a time, was
tedious at best.

These images are intended to be run in long-lived containers,
which you exec into and run the editing bits there.

Images
------

 - **iamjameshunt/env:vanilla** - The base image; no frills.
 - **iamjameshunt/env:go** - A Go (1.15) development environment.

The `enter` Utility
-------------------

The `docker run` command for this set up is a bit long-winded, so
I wrote the `enter` utility to make it easier.  It sets up the
namespaces, bind mounts, etc., and then drops you into an
interactive terminal session inside the container.

To install it:

    make install

If you want to install it somewhere else:

    make PREFIX=/opt install

(the script gets put in `$PREFIX/bin/`)

# tiny-nyan docker image

This repository is used to build the `euank/nyancat` image.

It may be run with `docker run -it euank/nyancat`.

## Why

This was created as an example of building a very small image for simple C
programs. It leverages [musl](http://www.musl-libc.org/) to produce a small
standalone executable, resulting in a roughly 200KB docker image.

# License

UNLICENSE (Public Domain)

I do not own the 'nyancat' program used in this image and it may be found under
its own license [here](https://github.com/klange/nyancat).

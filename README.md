# docker-sphinx

Docker images for [Sphinx](https://www.sphinx-doc.org/).

## Images

- alphacodinghub/sphinx-latexpdf

Note: This image is based on official image, added more themes and packages.

`alphacodinghub/sphinx-latexpdf` contains TeXLive packages.

## Usage

Create a Sphinx project::

```bash
$ docker run --rm -v /path/to/document:/docs alphacodinghub/sphinx sphinx-quickstart

if you work in the current directory, you can use:
$ docker run --rm -v $PWD:/docs alphacodinghub/sphinx-latexpdf sphinx-quickstart

To access to the Docker container:
$ docker run --rm -it -v $PWD:/docs alphacodinghub/sphinx-latexpdf bash
```

Build HTML document::

```bash
$ docker run --rm -v /path/to/document:/docs alphacodinghub/sphinx-latexpdf make html
```

Build EPUB document::

```bash
$ docker run --rm -v /path/to/document:/docs alphacodinghub/sphinx-latexpdf make epub
```

Build PDF document::

```bash
$ docker run --rm -v /path/to/document:/docs alphacodinghub/sphinx-latexpdf make latexpdf
```

## Tips

If you would like to install dependencies, use `alphacodinghub/sphinx` as a base image::

```dockerfile
# in your Dockerfile
FROM alphacodinghub/sphinx

WORKDIR /docs
ADD requirements.txt /docs
RUN pip3 install -r requirements.txt
```

## References

- [docker-sphinx](https://hub.docker.com/r/sphinx/sphinx-latexpdf)

# alpine linux with zulu jdk
# 

> the intent is to make this the common base-image for all containers.

To build...
`docker build -t ness2u/alpine-zulu:latest .`

in `build.sbt`, add the following:

```
dockerBaseImage := "ness2u/alpine-zulu"
```

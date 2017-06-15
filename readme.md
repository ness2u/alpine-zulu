# alpine linux with zulu jdk
# 

> the intent is to make this the common base-image for all containers.

in `build.sbt`, add the following:

```
dockerBaseImage := "ness2u/alpine-zulu"
```

# common base for Docker

* base of [humilit/common-php](https://github.com/humilit/common-php)

## integrated tools

### apk-add-recipe

allows installation of apk packages via recipe files, 
saves multiline RUN commands in Dockerfile and allows for comments

### apk-cache-flush

clears apk cache after package install to reduce final container size


FROM alpine:3.11
MAINTAINER Fabian Beuke <mail@beuke.org>

RUN apk add --update --no-cache \
    libgcc libstdc++ libx11 glib libxrender libxext libintl \
    ttf-dejavu ttf-droid ttf-freefont ttf-liberation ttf-ubuntu-font-family

# On alpine static compiled patched qt headless wkhtmltopdf (46.8 MB).
# Compilation took place in Travis CI with auto push to Docker Hub see
COPY wkhtmltopdf /bin/wkhtmltopdf

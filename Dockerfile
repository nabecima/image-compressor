FROM alpine:latest
RUN apk update && apk --update add pngquant jpegoptim --no-cache
WORKDIR /app
CMD sh compressor.sh
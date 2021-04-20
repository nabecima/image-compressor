FROM alpine:latest
RUN apk update && apk --update add pngquant jpegoptim --no-cache
WORKDIR /app
COPY compressor.sh .
CMD sh compressor.sh
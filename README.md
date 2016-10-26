Docker Deployment for Catch-A
-----------------------------

Catch-A (Catching Annotation): https://github.com/annotationsatharvard/catcha

# Running

```
docker-compose up
```

The service will be running on http://localhost:8080

## Uploading Images

Images should be place in .data/images directory. To get the JSON string, access

## Convert Image to JP2 Format

Images has to be converted to JP2 format in order to generate the JSON string that compatible with edX client.
```
cd .data/images
docker run --rm -it -v `pwd`:/tmp/a acleancoder/imagemagick-full convert /tmp/a/IMAGE_NAME.jpg -quality
0 /tmp/a/IMAGE_NAME.jp2
```

## Get JSON string

```
http://LORIS_URL/IMAGE_NAME/info.json
```

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
```
http://CATCHA_SERVER:5004/IMAGE_NAME/info.json
```

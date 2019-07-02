# Docker Golang Web

http://reireias-slides.firebaseapp.com/docker

## how to run

```bash
# build image
docker build -t go-hello .

# run container
docker run --rm -p 8888:8080 go-hello

# curl from other terminal
curl http://localhost:8888
```

# cross_compile_jetson_nano

Docker image for cross compiling on host x86_64 for target aarch64 (jetson nano).

## Building your own container image

* Build this container image
```sh
docker build -t cross_compile_jetson_nano .
```

* Run the container
```sh
docker run -ti --rm --name test-slave cross_compile_jetson_nano
root@xxxxxxxxxxxx:/# ...
root@xxxxxxxxxxxx:/# exit
```

* Stop the container
```sh
docker stop test-slave
```

* Remove the container
```sh
docker rm test-slave
```

* Remove the container image
```sh
docker rmi cross_compile_jetson_nano
```

## Working with pre-build containers

* Pull the container
```sh
docker pull <docker-image-url>
```

* Run the container
```sh
docker run -ti --rm --name test-slave -v ~/.ssh/:/root/.ssh/ <docker-image-url>
root@xxxxxxxxxxxx:/# ...
root@xxxxxxxxxxxx:/# exit
```

* Remove the container
```sh
docker rm test-slave
```

* Remove the container image
```sh
docker rmi <docker-image-url>
```


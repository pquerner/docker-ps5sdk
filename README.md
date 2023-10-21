## Build

Edit path to PS5SDK in `docker-compose.yml` file.
```
// ...
    volumes:
      - /path/to/PS5SDK:/usr/local/ps5dev
// ...
```

(the `/path/to/PS5SDK` part only!)

Change your PS5 firmware version for `PS5SDK_FW` enviroment variable in `docker-compose.yml` file. Check the readme of the [PS5SDK](https://github.com/PS5Dev/PS5SDK) for instructions.

Then build using `docker compose build`.

## Start the container

Using `docker compose up`, open a second terminal and run `docker compose exec ps5sdk bash` to jump into the running container.

From here you can build the SDK like normal, for example build the tools first

```
cd $PS5SDK
chmod +x build.sh
./build.sh
```

and then the example

```
cd $PS5SDK
cd examples/hello_socket
chmod +x build.sh
./build.sh
```
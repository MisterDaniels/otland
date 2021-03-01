#!/bin/bash

# Run client in docker (dev)
docker run -it --rm \
    --entrypoint ./bin/otclient \
    --env DISPLAY \
    --net=host \
    --volume /tmp/.X11-unix:/tmp/.X11-unix \
    --device /dev/dri \
    --device /dev/snd edubart/otclient /bin/bash \
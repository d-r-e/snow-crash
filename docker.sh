docker run -it --mount src=$(pwd),target=/app,type=bind --mount type=tmpfs,destination=/tmp,tmpfs-mode=0777 --rm -p 8080:8080 darodrig/devimage

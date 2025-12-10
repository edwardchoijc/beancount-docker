# Custom

Add the required libraries to `requirement.txt` .



# Build

1. `docker buildx build --platform [PLATFORM_ARCH] -t fava-ledger:latest . --load`

   > `PLATFORM_ARCH`: Such as `linux/amd64`

2. `docker save -o ../fava-ledger.tar fava-ledger:latest`

3. `gzip ../fava-ledger.tar`



# Release

1. `docker login [HOST_URL] --username=[USERNAME]`
2. `docker tag fava-ledger:latest [HOST_URL]/fava-ledger:latest`
3. `docker push [HOST_URL]/fava-ledger:latest`


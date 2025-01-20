REM Ensure the correct builder is in use
docker buildx use secure-edge-pro

REM Build and push the microsocks image
docker buildx build --platform linux/arm64/v8 --tag 192.168.140.1:5000/microsocks:latest --push .


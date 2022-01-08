docker build --tag my-iis-image --no-cache -f IIS-Server.Dockerfile .
docker run -d -p 8000:80 --name my-iis-container my-iis-image
curl -D- http://localhost:8000/

echo "Docker-image bouwen..."
docker buildx build   -t demo-site .

echo "Container starten op poort 81..."
docker run -d -t -p 81:80 --name demo-container demo-site

echo "Demo-site is nu bereikbaar op http://localhost:81/"
date


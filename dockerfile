FROM ubuntu
LABEL maintainer="Jean" \
      description="Cette image contient un serveur Nginx préconfiguré pour servir des fichiers statiques." \
      usage="Lancez l'image avec 'docker run -d -p 8080:80 mon_image' et accédez à http://localhost:8080" \
      version="1.0"
RUN apt update && apt install -y nginx git
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/ 
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]

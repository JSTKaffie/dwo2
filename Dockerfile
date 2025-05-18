# Gebruik Ubuntu als basisimage
FROM ubuntu:24.04

# Installeer Apache (webserver)
RUN apt update 
RUN apt install -y apache2

# stel servername in
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Maak een bestand met de buildtijd
RUN date > /var/www/html/buildtime.txt

# Kopieer de websitebestanden naar de server
COPY html /var/www/html/

# Stel de poort in en start Apache
EXPOSE 80
CMD service apache2 start && bash

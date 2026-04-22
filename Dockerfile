FROM php:8.2-apache

#Instalar extension mysqli para connectarse a MySQL
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

#Reiniciar Apache para aplicar cambios
RUN service apache2 restart
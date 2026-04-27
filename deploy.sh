echo 'Bajamos repositorio actualizado'
#Copiamos código actualizado de Github
git pull origin main

echo 'Detenemos Cotenedores de la Aplicacion'
#Detenemos contenedores
docker-compose down

echo 'Inicializamos contenedores y reconstruimos imagen actualizada'
#Inicializamos contenedores y reconstruimos
docker-compose -f docker-compose.production.yml up -d --build

echo 'Actualizacion finalizada'
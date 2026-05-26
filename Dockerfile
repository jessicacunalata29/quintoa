#Paso1:Utilizar una imagen base de Python
FROM python:3.12-slim

#Paso2:Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

#Paso3: Copiar el requerimiento de la aplicación al contenedor
COPY requirements.txt /app

#Paso4:Instalar las dependencias 
RUN pip install -r requirements.txt

#Paso5:COpiamos los archivos del proyecto al contenedor
COPY . /app

#Paso6: ejecutamos la aplicación
CMD ["python","app.py"]



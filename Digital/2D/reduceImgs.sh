#!/usr/bin/env bash
#file: convImgs.sh
#author: fitorec http://fitorec.wordpress.com
#
#descripcion: Este script lo realize para reducir el tamaño de imgs la
#tecnica es redimencionar y bajar la calidad de 50% en el nivel de compresion
#la imagenes creadas quedaran en una carpeta que se llama mini
#
#Agumentos: recibe como unico argumento la extension de las images a convertir
#
#Requiere: imagemagick

#revisando los argumentos necesarios
if [ $# -ne 1 ]; then
  echo "ejecutar:  ./$0 extension_imagenes"
  exit 1
fi

#creamos el directorio que vamos a utilizar para almacenar las imgs
#if [ -d mini]; then 
if [ !`test -d ./mini` ]; then
	echo "creando la carpeta mini"
	mkdir mini
fi

echo "redimencionamiento de imagenes"

#opcion 1, esta tecnica la aprendi de mi camarada @r00t_w33d
#find ./ -name "*.JPG" -exec convert {} -resize 800x600 -strip -quality 50 -interlace line ./mini/{} \;

#opcion 2 esta se me hace mas elegante ademas consume menos recursos al no utilizar el find
#se puede comprobar al correr el script con el comando time para ambas opciones
for img in "*.$1"
do
	convert $img -resize 800x600 -strip -quality 50 -interlace line ./mini/$img
done

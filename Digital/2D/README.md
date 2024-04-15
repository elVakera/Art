
#!/bin/bash
# blogfoto
# Pequeño script que cambia la resolución de la imagenes del tamaño original a 800*600. Usa ImageMagick
# Además de reducir la calidad de la imagen resultante.

# Primero nos aseguramos que la extensión esté en minúsculas y creamos fotoblog
rename 's/.JPG/.jpg/' *.JPG
mkdir fotoblog

#Empezamos el ciclo con las fotos de extensión jpg para reducirlo a 800*600.
#Además de poner las fotos dentro de fotoblog

for file in $( ls *.jpg ); do
convert -size 2048x1536 $file -thumbnail 800x600 fotoblog/foto_$file
done
echo “Listo!

# Ahora procedemos a comprimir más las imágenes dentro de fotoblog
cd fotoblog
for N in *; do
convert -compress jpeg -quality 55 -enhance -font Bookman-DemiItalic  -fill white -pointsize 14 -draw "text 680,500 'hbautista'" $N $N;
done
echo "Hemos terminado!"
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/AikaHuTao.jpg) 
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/Aloe.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/AlternativeStyle_Goth.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/AnnaFantasy.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/AnnaNavide%C3%B1a.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/Ari.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/ArielKuroha.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/CarlaDream.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/DokiDoki.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/Familia%20Inglesa.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/Greed.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/HalloweenNana.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/IchiDibujo.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/JesKaisa.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/Jobi%20x%20Amy.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/Musicrystal.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/PatriDibujo.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/Peach%20x%20JackDaniels.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/SportStyle.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/StikerSenshiro.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/TatiDiabla.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/The%20boys.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/XMasGirl.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/XocoSetup.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/batLeddy.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/bell-m%C3%A8re.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/color.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/final.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/fusion%20de%20capas.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/karenDibujo.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/lineart.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/miiu.jpg)
# ![](https://github.com/elVakera/Art/blob/main/Digital/2D/retoCuloParriba.jpg)

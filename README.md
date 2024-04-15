# LAB-3
LABORATORIO 3 DE ROBÓTICA
INTEGRANTES:
* Jose Alfaro
* Jhonatan Gonzales
* Joan Pinilla

## CONEXIÓN ROS CON MATLAB
Después de la instalación de ROS, se realiza la conexión de este con MATLAB a través del script de la siguiente imagen.
![Imagen de WhatsApp 2024-04-14 a las 20 35 01_6986e397](https://github.com/JoanPinilla/LAB-3/assets/118155154/f9c71d9c-5bd5-4301-af17-6e4e97d3a192)

Este código permite publicar mensajes a través del ``rospublisher`` para modificar la pose de la tortuga. Luego, con ``velMsg.Angular.Z`` y ``velMsg.Linear.X`` se le asignan valores a la velocidad angular en Z y velocidad linear en X. Finalmente, con ``rossubscriber("/turtle1/pose")`` se suscribe al tópico de la pose de la tortuga para recibirla con ``receive``.
![Screenshot from 2024-04-14 22-12-51](https://github.com/JoanPinilla/LAB-3/assets/118155154/a26d054c-4b34-4675-90e0-24abf3c2b3dc)
![Imagen de WhatsApp 2024-04-14 a las 20 35 34_c231ff7a](https://github.com/JoanPinilla/LAB-3/assets/118155154/e1812dcd-19e9-4592-b528-68fa0ba6a6d7)



## UTILIZADO PYTHON
Ahora con Python se debe ecribir un script que capture las entradas del teclado para modificar la pose de la toruga de acuerdo a los siguiente:
* Se debe mover hacia adelante y hacia atr´as con las teclas W y S
* Debe girar en sentido horario y antihorario con las teclas D y A.
* Debe retornar a su posición y orientación centrales con la tecla R
* Debe dar un giro de 180° con la tecla ESPACIO

De acuerdo a las referencias dadas en la guía de laboratorio se analizaron y se modificaron las funciones del script para acomodarlas a los requerimentos del laboratorio. Se definen 4 funciones:
* **``teleport_absolute(x, y, ang):``** : Toma como parámetros _x_ como posición en el eje x, _y_ como posición en el eje y, y _ang_ como el ángulo respecto al eje z para definir instantáneamente la pose de la toruga. Esta función se llama cuando se oprime la tecla "r" y mueve instantáneamente la toruga a la posición _(5.544;,5.544)_ que corresponde al centro de la pantalla y con un ángulo de 0.
* **``pubVel(vel_x, ang_z, t)``** : Toma como parámetros _vel_x_, _ang_z_ y _t_ para definir la velocidad linear en el eje x de la tortuga, la velocidad angular respecto al eje z de la tortuga, y el tiempo que se mantiene el cambio de estos parámetros respectivamente. Esta función es llamada cuando se oprimen las teclas "w" o "s" para mover la tortuga en dirección de x positva o negativa sólo usando el parámetro  _vel_x_. Cuando se presionan "a" o "d" , se gira la toruga en sentido horario o antihorario variando sólo el parámetro _ang_z_.
* **``teleport_relative(linear, ang):``** : Toma los parámetros de _linear_ para teletransportar la tortuga a cierta posición y _ang_ para hacerlo en cierto ángulo. En este caso, se llama cuando se oprime la tecla espacio y no se hace ningún cambio en su posición, sino sólo en la orientación.
* **``get_key()``** : Esta función captura las entradas del teclado y determina el llamado de las otras funciones.

El funcionamiento del script se puede ver en el video disponible en el repotorio.

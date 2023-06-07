#!/bin/bash

#Trabajo de Lucia Mendez(280717), Agustina Del Pino(312737) y Antony Correa(307641)  M1B

sudo useradd mario 
usuario="mario"
contrasena="mario"
echo -e "$usuario\n$contrasena" | sudo passwd $usuario 

sudo useradd daniela 
usuario="daniela"
contrasena="daniela"
echo -e "$usuario\n$contrasena" | sudo passwd $usuario 

sudo useradd gustavo
usuario="gustavo"
contrasena="gustavo"
echo -e "$usuario\n$contrasena" | sudo passwd $usuario 

sudo groupadd respaldos
sudo usermod -a -G respaldos mario
sudo usermod -a -G respaldos daniela
sudo usermod -a -G respaldos gustavo



echo "$daniela" | sudo su daniela 

whoami
sudo touch hola.txt

sudo chmod a+rwx hola.txt

grep "respaldos" /etc/group

sudo userdel mario

grep "respaldos" /etc/group

#!/bin/bash

# Punto A - Verificación de particiones LVM 

echo "Mostrando información de discos"
lsblk -f

echo "Mostrando particiones (fdisk -l)"
sudo fdisk -l

echo "Mostrando Volumen Group"
sudo vgdisplay vg_datos

echo "Mostrando Logical Volumes"
sudo lvdisplay

echo "Mostrando puntos de montaje"
df -h | grep -E "docker|Multimedia|swap"

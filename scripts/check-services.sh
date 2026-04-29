#!/bin/bash
# check-services.sh - Monitorización básica para laboratorio ASIR
echo "=== ESTADO DE SERVICIOS ==="
systemctl is-active apache2 mysql ssh

echo -e "\n=== USO DE DISCO ==="
df -h /

echo -e "\n=== MEMORIA LIBRE ==="
free -h

echo -e "\n=== PUERTOS ESCUCHANDO (22, 80, 3306) ==="
ss -tlnp | grep -E ':22|:80|:3306'

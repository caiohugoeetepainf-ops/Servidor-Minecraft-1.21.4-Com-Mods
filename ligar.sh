#!/bin/bash

echo "=== [1/2] Iniciando o Túnel Playit.gg ==="
# Remove o socket antigo se ele tiver ficado travado
sudo rm -f /run/playit/playitd.sock

# Inicia o daemon do Playit em segundo plano
sudo nohup playitd > playit_servico.log 2>&1 &

# Aguarda 3 segundos para o túnel estabilizar
sleep 3
echo "✔ Playit iniciado em segundo plano! (Domínio: malls-liberal.tun.ply.gg)"
echo ""
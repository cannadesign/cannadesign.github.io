#!/bin/bash
# Troca o domínio de teste pelo real em og:url, og:image e canonical.
# Uso:  ./publicar.sh https://guicannalonga.com
set -e
[ -z "$1" ] && { echo "uso: ./publicar.sh https://seu-dominio.com"; exit 1; }
DOM="${1%/}"
for f in *.html; do
  sed -i.bak "s|https://your-domain.com|$DOM|g" "$f" && rm -f "$f.bak"
done
echo "Domínio aplicado: $DOM"
grep -h "og:url\|canonical" index.html | head -2

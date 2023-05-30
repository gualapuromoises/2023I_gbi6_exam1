#!bin/bash 

## Resolucion pregunta #1 
## buscamos todos los archivos de texto con el comando find, el "." indica que busque todos los archivos el -type f que la busqueda se limite a los archivos 
## tipo archivo, posteriormente se conto y se guardo en extensiones.txt 
find . -type f \( -name "*.csv" -o -name "*.txt" -o -name "*.tsv" -o -name "*.gz" -o -name "*.png" \) | grep -E -o '\.[a-zA-z0-9]+$' | sort | uniq  -c > extensiones.txt 


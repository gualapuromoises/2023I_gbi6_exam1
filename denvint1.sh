

# Bucle for para contar filas y columnas en cada archivo .csv
for file in $archivos *.csv* ; do
    # Nombre del archivo
    filename=$(basename "$file")

    # Contar filas
    rows=$(cat "$file" | wc -l)

    # Contar columnas
    columns=$(head -n 4 "$file" | tr ',' '\n' | sort -n | wc -l)

    # Imprimir resultados
    echo "Archivo *.csv*: $filename", "Número de filas: $rows", "Número de columnas: $columns"  >> denint.csv
done

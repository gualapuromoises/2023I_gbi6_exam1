

# Extraer las columnas y guardar en pdb.csv
cut -d ',' -f5,18,21 sites.csv > "pdb.csv"

# Calcular el conteo de tipos únicos en cada columna
cut -d "," -f1 pdb.csv | tail -n +2| sort -u | wc -l > pdb_count.csv
cut -d "," -f2 pdb.csv | tail -n +2 | sort -u | wc -l >> pdb_count.csv
cut -d "," -f3 pdb.csv | tail -n +2 | sort -u | wc -l >> pdb_count.csv


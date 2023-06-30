# Para buscar los registros que tenga secuencias especificas pongo una etiqueta s__ y cuenta con wc -l
grep "s__" infants_metagenome.txt | wc -l

# Realizae la busqueda de las secuencias a traves de la etiqueta de TATA, GAGA Y GATA
grep -i "TATA" mygenomemap.sam >> gata1.txt
grep -i "GAGA" mygenomemap.sam >> gata1.txt
grep -i "GATA" mygenomemap.sam >> gata1.txt

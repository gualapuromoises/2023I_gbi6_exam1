# Contar el numero de articulos en miRNA.dat
num_articles=$(grep -c "PUBMED" /c/Users/pc/Documents/gbi6unix/2023I_gbi6_exam1/exam1/miRNA.dat)

# Contar articulos de micro RNA en las revistas Nature
num_nature=$( grep -ci "Nature" /c/Users/pc/Documents/gbi6unix/2023I_gbi6_exam1/exam1/miRNA.dat)

# Contar los articulos de micro RNA en el organismo C. elegans
num_elegans=$( grep -ci "elegans" /c/Users/pc/Documents/gbi6unix/2023I_gbi6_exam1/exam1/miRNA.dat)

# Contar los micro RNA con longitud de 139 pares de bases
num_139bp=$( grep -c "139 BP" /c/Users/pc/Documents/gbi6unix/2023I_gbi6_exam1/exam1/miRNA.dat)

# Imprimir los resultados en elegans
echo "Numero total de articulos: $num_articles"-----"Numero de estudios en la revista Nature: $num_nature"-----"Numero de articulos en C. elegans: $num_elegans"-----"Numero de micro RNA con longitud de 139 pares de bases: $num_139bp" >elegans.txt


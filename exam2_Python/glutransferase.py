from Bio import SeqIO
from Bio import Entrez 
from Bio.Seq import Seq
from collections import Counter
import pandas as pd
Entrez.email = "gualapuro.moises@gmail.com" 
def species(accession):
    sp_list = []
    with Entrez.efetch( db="nucleotide", rettype="gb", retmode="text", id= accession) as handle: 
        for seq_record in SeqIO.parse(handle, "gb"):  
            sp_list.append(seq_record.annotations['organism'])  
    sp_count = Counter(sp_list)
    df = pd.DataFrame.from_dict(sp_count, orient ='index')
    df.index.name = 'species'
    df.reset_index(inplace=True)
    df.columns = ["species", "count"]
    df.to_csv('results/species.csv')
    return df

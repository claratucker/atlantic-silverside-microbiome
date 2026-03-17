## Purpose: OTU picking, closed-reference, validation
#!/bin/bash

# Closed-reference OTU picking (QIIME1)
pick_closed_reference_otus.py \
  -i ../outputs/rep-seqs/Exp1_rep-seqs.fna \
  -o ../outputs/OTU_tables/Exp1_OTU_picked \
  -r /path/to/gg_13_8_otus/97_otus.fasta \
  -t /path/to/gg_13_8_otus/97_otu_taxonomy.txt

# Validate demultiplexed fasta
validate_demultiplexed_fasta.py \
  -m ../metadata.tsv \
  -i ../outputs/rep-seqs/Exp1_rep-seqs.fna \
  -o ../outputs/OTU_tables/Exp1_OTU_validation.log

## Purpose: Remove primers from reads before DADA2
#!/bin/bash

qiime cutadapt trim-single \
  --i-demultiplexed-sequences ../outputs/demux/Exp1_demux.qza \
  --p-front GTGYCAGCMGCCGCGGTA \
  --p-error-rate 0 \
  --o-trimmed-sequences ../outputs/trimmed/trimmed_Exp1.qza \
  --verbose

qiime cutadapt trim-single \
  --i-demultiplexed-sequences ../outputs/demux/Exp23_demux.qza \
  --p-front GTGYCAGCMGCCGCGGTA \
  --p-error-rate 0 \
  --o-trimmed-sequences ../outputs/trimmed/trimmed_Exp23.qza \
  --verbose

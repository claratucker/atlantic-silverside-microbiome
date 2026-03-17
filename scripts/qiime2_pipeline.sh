#!/bin/bash

# Import
qiime tools import \
  --type EMPSingleEndSequences \
  --input-path Exp1/ \
  --output-path Exp1.qza

# Demultiplex
qiime demux emp-single \
  --i-seqs Exp1.qza \
  --m-barcodes-file mapping.txt \
  --m-barcodes-category BarcodeSequence \
  --o-per-sample-sequences Exp1_demux.qza

# Primer trimming
qiime cutadapt trim-single \
  --i-demultiplexed-sequences Exp1_demux.qza \
  --p-front GTGYCAGCMGCCGCGGTA \
  --p-error-rate 0 \
  --o-trimmed-sequences trimmed_Exp1.qza

# DADA2 denoising
qiime dada2 denoise-single \
  --i-demultiplexed-seqs trimmed_Exp1.qza \
  --p-trim-left 30 \
  --p-trunc-len 280 \
  --o-table table.qza \
  --o-representative-sequences rep-seqs.qza

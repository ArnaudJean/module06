#read_me.py

##Short Read Alignment
Author: Jean Arnaud

##Methods
#Data
Quality control data from a previous sea anemones experiment are analyzed for differing
gene expression levels. The  GMAP database is used for reference[1].

##instructions
A total of four scripts are used to process the data: trimAll, alignAll, sortAll, and indexAll. TrimAll is
documented in the Trimmomatic manual [2].  AlignAll uses Gsnap to align the trim files. Gsnap  is documented in samtools. Finally, the files were sorted and indexed. 

##Reference
[1] Thomas D. Wu, Colin K Watanabe, GMAP: a genomic mapping and alignment program for mRNA and  EST sequences, Bioinformatics, Volume 21, Issue 9, pages 1859-1875
[2] Bolger AM, Lohse M, Usadel B. Trimmomatic: a flexible trimmer for Illumina sequence data. Bioinformatics. 2014 Aug 1;30(15):2114-20. doi: 10.1093/bioinformatics/btu170. Epub 2014 Apr 1. PMID: 24695404; PMCID: PMC410359[3]Samtools. "Samtools/Samtool" GitHub, github.com/samtools/samtools.

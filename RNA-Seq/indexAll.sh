#!/usr/bin/env bash
#indexAll.sh

filepath = "/scratch/AiptasiaMiseq/fastq/"
left = ".R1.fastq" 
bamOutPath= "bam/"

#Loop through all left fastq files
for left in $filePath*$left{
do
    pathRemoved = "${leftInFile/$filepath/}"
    sampleName = "${pathRemoved/$left/}"
    samtools index\
    $bamOutPath$sampleName.sorted.bam\
    
}
indexAll 1>indexAll.log 2>indexAll.err &

#!/usr/bin/env bash
#sortAll.sh

filepath= "/Paired/"
leftSuffix = ".R1.fastq"
rightSuffix = "R2.fastq"

samFilePath = "sam/"
samFileSuffix =".sam"

bamfilePath = "bam/"
bamSuffix = ".bam"

pairedOutPath ="Paired"
unpairedOutPath = "Unpaired"

mkdir -p $bamfilePath

function sortAll{
for leftFile in $filepath* $leftSuffix
    pathRemoved = "${leftInFile/$filepath/}"
    sampleName = "${pathRemoved/$leftSuffix/}"
    samtools sort\
        $samFilePath$sampleName$samFileSuffix \
        -o $bamfilePath$sampleName$bamSuffix
done
}
sortAll 1>sortAll.log 2>sortAll.err &


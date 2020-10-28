#!/usr/bin/env bash
# alignAll.sh

Initialize variable for the un-trimmed fastq files 
filePath="/Paired/"
#Initialize for the left reads
leftSuffix =".R1.paired.fastq"
#initialize variable for right read
rightSuffix = ".R2.paired.fastq"

#variable for sam paths
samOutPath ="sam/"
samSuffix =".sam"

#output directory
mkdir -p $samOutPath

#Loop through paired trimmed files in $fastqPath
function alignAll{
    for left in $fastqPath*$leftSuffix
        do
            #Remove path and assign to pathRemoved
            pathRemoved="${left/$filePath/}"
            #Remove the left-read suffix + assign to suffixRemoved
            suffixRemoved="${pathRemoved/$left/}"
            nice -n19 gsnap \
            -A sam \
            -D . \
            -d AiptasiaGmapDb \
            -s AiptasiaGmapIIT.iit \
            $pairedOutPath$suffixRemoved$leftSuffix \
            $pairedOutPath$suffixRemoved$rightSuffix \
            1>$samPath$suffixRemoved$samSuffix
    done
}
}
alignAll 1>alignAll.log 2>alignAll.err &

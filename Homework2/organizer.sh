#!/bin/bash
echo "Start to create fastq files"
mkdir -p fastqs
echo "Created fastqs dir"

for i in {1..10}; do
    filename="fastqs/sample_${i}.fastq"
    echo "This is sample number $i" > "$filename"
    
  
    echo "  Created $filename"
done

echo ""
echo "Done. Create 10 files in fastqs dir"

echo ""
echo "Contents of fastqs directory:"
ls -l fastqs/

echo ""
echo "First 3 files content:"
head -n 1 fastqs/sample_{1,2,3}.fastq 2>/dev/null


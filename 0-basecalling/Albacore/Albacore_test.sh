#!/bin/bash
#!/usr/bin/env bash
in_dir="/analysis/software_han/1-data/nanopore-datas/20180413-FAH10720-RS-reads/MinKNOW-tMP-DATA-20180413-1"
# skip dir
i=0
for skip in $in_dir/fast5/skip/
do
	((i++))
	/analysis/software_han/1-data/nanopore-datas/program/albacore_myshu_for_skip.sh $skip basecalled_skip_out_$i 
done

# tmp dir
#/tmp/MN20782/

#nohup /analysis/software_han/1-data/nanopore-datas/program/albacore_myshu_for_tmp.sh /analysis/software_han/1-data/nanopore-datas/20180413-FAH10720-RS-reads/MinKNOW-tMP-DATA-20180413-1/tmp/MN20782/ basecalled_tmp_out &
# cat all data

#cat 20180316-FAH08978-RS_all.fastq | paste - - - - | sed 's/^@/>/g'| cut -f1-2 | tr '\t' '\n' > 20180316-FAH08978-RS_all.fasta

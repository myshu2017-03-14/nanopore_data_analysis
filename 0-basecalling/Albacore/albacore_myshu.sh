# echo the help if not input all the options
help()
{
cat <<HELP
USAGE: $0 input_dir output_dir
    or $0 ‐h # show this message
EXAMPLE:
    $0 fast5/ albacore_out/
HELP
exit 0
}
[ -z "$1" ] && help
[ "$1" = "-h" ] && help
in=$1
out=$2

#find $in -name "*tmp" | while read file ; do mv $file ${file%*.tmp}; done
#read_fast5_basecaller.py --flowcell FLO-MIN107 --kit SQK-LSK108 --input $in --save_path $out --worker_threads 4 -o fastq -r

# /analysis/software_han/1-data/nanopore-datas/20180313-FAH10767-RS-reads/MinKNOW-tmp-data-20180314-1/20180314_0255_FAH10767-SR-20180314/fast5/skip
read_fast5_basecaller.py --flowcell FLO-MIN107 --kit SQK-LSK108 --input $in --save_path $out --worker_threads 4 -o fastq -r


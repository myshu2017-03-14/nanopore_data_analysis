date
in=$1  # FAH09535_test_all_reads.fastq
# test1
#porechop-runner.py -i fastq_runid_4a7087c5b17141c19008f2f2ace24dca27462351.fastq -b porechop_output_test1 --format fastq -t 5 

# test2
#porechop-runner.py -i $in -b porechop_output_85_two_barcodes --format fastq -t 5 --barcode_threshold 85 --require_two_barcodes

porechop-runner.py -i $in -b porechop_output_85 --format fastq -t 5 --barcode_threshold 85

# test3
#porechop-runner.py -i fastq_runid_4a7087c5b17141c19008f2f2ace24dca27462351.fastq -b porechop_output_test3 --format fastq -t 5 --barcode_threshold 60 --barcode_diff 1

date
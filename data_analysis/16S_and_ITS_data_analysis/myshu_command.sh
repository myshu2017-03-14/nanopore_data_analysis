
# run blast
nohup ./blastn.sh /analysis/software_han/3-finaldata/nanopore-data-out/20180318_add_7_samples_and_1_samples/all_data_out/data/ /analysis/software_han/3-finaldata/nanopore-data-out/20180318_add_7_samples_and_1_samples/all_data_out/data/ &

# count each level abundance 
./count_taxa_abundance.sh

# cat all samples taxa abundance of each level
./cat_taxa_abundance.sh

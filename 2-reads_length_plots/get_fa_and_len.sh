
in=$1 # fastq dir
for i in $in/*.fastq
do
	name=$(basename $i .fastq)
	cat $i | paste - - - - | sed 's/^@/>/g'| cut -f1-2 | tr '\t' '\n' > $in/$name.fasta
	perl /database/program/get_all_seq_legth.pl -in $in/$name.fasta -out $in/$name.len
done

conda create -y --name py3.osf python=3

source activate py3.osf

conda install -y fastqc multiqc

for filename in *.fastq
do
    fastqc $filename
done

multiqc *

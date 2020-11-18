Channel
  .fromPath(params.infile)
  .ifEmpty { exit 1, "Key file not found: ${params.infile}" }
  .set { ch_infile }

Channel
  .fromPath(params.genome_size)
  .ifEmpty { exit 1, "Key file not found: ${params.genome_size}" }
  .set { ch_genome_size }


process sci {
    echo 'true'
    
    input:
    file(infile) from ch_infile
    file(genome_size) from ch_genome_size

    output:
    file("*")

    script:
    """
    echo $task.cpus
    echo $task.memory
    python2.7 /sci/sci/sci.py \
        --name $params.name \
        --infile $infile \
        --genome_size $genome_size \
        --resolution $params.resolution \
        --order $params.order \
        --samples $params.samples \
        --clusters $params.clusters
    """
}
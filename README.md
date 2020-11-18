# jax-sci-nf

A nextflow for [sci](https://github.com/TheJacksonLaboratory/sci) tool.

Docker image - https://hub.docker.com/r/lifebitai/jax-sci based on [Dockerfile](Dockerfile)

## Install nextflow

```bash
# check if java 8 or later present
java -version
# then install nextflow
curl -s https://get.nextflow.io | bash
```

## Test run

```bash
nextflow run main.nf \
    --infile 'https://lifebit-featured-datasets.s3-eu-west-1.amazonaws.com/demo/sci_demo_data/demo_data/demo_data.txt'
    --genome_size = 'https://lifebit-featured-datasets.s3-eu-west-1.amazonaws.com/demo/sci_demo_data/hg19.chrom.sizes'
    --max_cpu 4
    --max_memory 4.GB
    -profile docker
```

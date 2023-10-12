process bamToFastq(){
    publishDir "${params.outDir}/${sample_id}_results/", mode: "copy"
    label "singlethread"
    input:
        tuple val(sample_id), path(unmapped_bam)
    output:
        tuple val(sample_id), path("${sample_id}.unmapped.*.bam.fq")
    script:
    """
    bedtools bamtofastq -i unmapped.bam -fq ${sample_id}.unmapped.R1.bam.fq\
    -fq2 ${sample_id}.unmapped.R2.bam.fq
    """

}

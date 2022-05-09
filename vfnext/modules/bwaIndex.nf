params.bwa='bwa'

process indexReferenceBWA {
    /**
    * Indexes reference fasta file using bwa.
    */

    input:
        path(ref_fa)

    output:
        path("${ref_fa}*")

    script:
        bwa=params.bwa

        """
        ${bwa} index -a bwtsw -p ${ref_fa} $PWD/input/${ref_fa}
        """
}

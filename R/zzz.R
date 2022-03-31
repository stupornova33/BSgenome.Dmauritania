###
###

.pkgname <- "BSGenome.Dmauritania.NCBI"

.seqnames <- NULL

.circ_seqs <- character(0)

.mseqnames <- NULL

.onLoad <- function(libname, pkgname)
{
    if (pkgname != .pkgname)
        stop("package name (", pkgname, ") is not ",
             "the expected name (", .pkgname, ")")
    extdata_dirpath <- system.file("extdata", package=pkgname,
                                   lib.loc=libname, mustWork=TRUE)

    ## Make and export BSgenome object.
    bsgenome <- BSgenome(
        organism="Drosophila mauritania",
        common_name="D.mauritania",
        genome="GCF_004382145.1",
        provider="NCBI",
        release_date="04-16-2019",
        source_url="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/004/382/145/GCF_004382145.1_ASM438214v1/GCF_004382145.1_ASM438214v1_genomic.fna.gz",
        seqnames=.seqnames,
        circ_seqs=.circ_seqs,
        mseqnames=.mseqnames,
        seqs_pkgname=pkgname,
        seqs_dirpath=extdata_dirpath
    )

    ns <- asNamespace(pkgname)

    objname <- pkgname
    assign(objname, bsgenome, envir=ns)
    namespaceExport(ns, objname)

    old_objname <- "Dmauritania"
    assign(old_objname, bsgenome, envir=ns)
    namespaceExport(ns, old_objname)
}


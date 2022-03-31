\name{BSGenome.Dmauritania.NCBI}
\docType{package}

\alias{BSGenome.Dmauritania.NCBI-package}
\alias{BSGenome.Dmauritania.NCBI}
\alias{Dmauritania}

\title{Full genome sequences for Drosophila mauritania (NCBI v1)}

\description{
  Drosophila simulans full genome sequences (2019/04/16)
}

\details{
  
}

\note{
  This BSgenome data package was made from the following source data files:
  \preformatted{
GCF_004382145.1.sorted.2bit
  }

  See \code{?\link[BSgenome]{BSgenomeForge}} and the BSgenomeForge
  vignette (\code{vignette("BSgenomeForge")}) in the \pkg{BSgenome}
  software package for how to make a BSgenome data package.
}

\author{The Bioconductor Dev Team}

\seealso{
  \itemize{
    \item \link[BSgenome]{BSgenome} objects and the
          \code{\link[BSgenome]{available.genomes}} function
          in the \pkg{BSgenome} software package.
    \item \link[Biostrings]{DNAString} objects in the \pkg{Biostrings}
          package.
    \item The BSgenomeForge vignette (\code{vignette("BSgenomeForge")})
          in the \pkg{BSgenome} software package for how to make a BSgenome
          data package.
  }
}

\examples{
BSGenome.Dmauritania.NCBI
genome <- BSGenome.Dmauritania.NCBI
head(seqlengths(genome))


## ---------------------------------------------------------------------
## Genome-wide motif searching
## ---------------------------------------------------------------------
## See the GenomeSearching vignette in the BSgenome software
## package for some examples of genome-wide motif searching using
## Biostrings and the BSgenome data packages:
if (interactive())
    vignette("GenomeSearching", package="BSgenome")
}

\keyword{package}
\keyword{data}

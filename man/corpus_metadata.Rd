\name{corpus_metadata}
\alias{corpus_metadata}

\title{Returns a data.frame of corpus metadata.}

\usage{
    corpus_metadata(corpus)
}

\description{
    Returns a \code{data.frame} of metadata for the specified corpus.
    The \code{rownames} of the \code{data.frame} are the corpus text title
    abbreviations.
}

\arguments{
    \item{corpus}{
        The name of the corpus.
        Can be \sQuote{DNov} or \sQuote{19C}.
    }
}

\value{
    A \code{data.frame} with the following structure.
\preformatted{
    'data.frame':   29 obs. of  3 variables:
     $ author: chr  "Jane Austen" "Jane Austen" "Mary Wollstonecraft Shelley" ...
     $ title : chr  "Pride and Prejudice" "Emma" "Frankenstein; or, The Modern Prometheus" ...
     $ year  : int  1813 1815 1818  ...
     attributes
       $row.names : "pride" "emma" "frank" ...
}
}

\examples{
    df <- corpus_metadata('DNov')
}

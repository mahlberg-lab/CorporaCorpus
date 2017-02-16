\name{corpus_filepath}
\alias{corpus_filepath}
\alias{corpus_filepaths_all}

\title{Returns the absolute filepath to corpus text files.}
\description{
    Returns file paths to the novels texts; the locations of which are
    not always transparent to the user.
}

\usage{
    corpus_filepath(title, corpus)

    corpus_filepaths_all(corpus)
}

\arguments{
    \item{title}{
        Either a character string or a vector of character strings
        representing the novel title.
        First checked against the short letter codes and then against the
        full titles. Any unique partial match is allowed, for example
        'the mill' would match 'The Mill on the Floss'.
    }
    \item{corpus}{
        The name of the corpus.
        Can be \sQuote{ncnb} or \sQuote{dickens}.
    }
}

\value{
    \code{corpus_filepath} returns a single filepath as a string, or a
    vector of strings.
    The name attributes for each string are the short letter codes.

    \code{corpus_filepaths_all} as per \code{corpus_filepath} but
    always all filepaths for the corpus.
}

\examples{
    path <- corpus_filepath('GE', corpus = 'dickens')

    paths <- corpus_filepath(title = c('Great Expectations', 'A Tale of Two Cities'), corpus = 'dickens')
}

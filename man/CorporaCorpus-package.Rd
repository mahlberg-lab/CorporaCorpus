\name{CorporaCorpus-package}
\alias{CorporaCorpus-package}
\alias{CorporaCorpus}
\docType{package}

\title{A Collection of Small Corpora Prepared by the Centre for Corpus Research}
\description{
    The package contains a collection of small corpora prepared by the
    \href{http://www.birmingham.ac.uk/research/activity/corpus/}{Centre for Corpus Research}.
}
\details{
    This package contains the following corpora
    \tabular{ll}{
        Name \tab Description \cr
        \code{DNov} \tab Dickens' novels \cr
        \code{19C} \tab 19th Century Novels
    }
    The content of each corpus is documented in detail in the
    \href{../doc/corpora.pdf}{Corpora} vignette.
    Basic metadata for the corpus texts is provided in the form of
    a \code{data.frame} returned by the \code{\link{corpus_metadata}}
    function.

    The texts have been processed in such a way as to facilitate
    tokenization and to simplify analysis.
    See the \href{../doc/faq.pdf}{FAQ vignette}
    for full details of how the texts were prepared.

    The function \code{\link{corpus_filepaths}}
    return file paths to the novels texts; the locations of which are
    not always transparent to the user.

    For a list of all documentation use \code{library(help="CorporaCorpus")}.
}

\source{
    For details of the individual texts see the
    \href{../doc/corpora.pdf}{Corpora vignette}.

    \subsection{DNov}{
        \sQuote{Novels by Charles Dickens} at
        \href{https://www.gutenberg.org}{\sQuote{Project Gutenberg}}.
              https://www.gutenberg.org/
        \dQuote{Plain Text UTF-8} files. Retrieved from
        \url{https://www.gutenberg.org/ebooks/author/37} on 2016-11-27.

        All texts are covered by the Project Gutenberg License. A copy of
        the full license can be found at \url{http://gutenberg.org/license}.
    }
    \subsection{19C}{
        All novel texts where sourced from the
        \href{https://www.gutenberg.org}{\sQuote{Project Gutenberg}},
        \dQuote{Plain Text UTF-8} files and were retrieved on 2017-02-02.

        All texts are covered by the Project Gutenberg License. A copy of
        the full license can be found at \url{https://gutenberg.org/license}.
    }
}

\author{
  Maintainer: Anthony Hennessey <ah@ravingmantis.com>.
}

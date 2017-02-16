\name{dickens}
\alias{dickens}
\alias{dickens_filepath}
\alias{dickens_filepaths_all}
\docType{data}

\title{A corpus of the novels by Charles Dickens.}

\description{
    The package contains the texts of the set of novels by Charles Dickens.
    The texts have been processed in such a way as to facilitate
    tokenization and to simplify analysis. See the
    \href{../doc/faq.pdf}{FAQ vignette} for details of how the texts
    were prepared.

    A functions \code{dickens_filepath} and \code{dickens_filepaths_all}
    return file paths to the novels texts; the locations of which are
    not always transparent to the user.
    These functions are convenience wrappers around the general functions
    \code{\link{corpus_filepath}} and \code{\link{corpus_filepaths_all}}.

    A dataset of metadata for the novels is provided in the form of
    the \code{dickens} \code{data.frame}. See the format section.

}

\usage{
    dickens

    dickens_filepath(title) 

    dickens_filepaths_all()
}

\arguments{
    \item{title}{
        The title of the Dickens novel.
        For possible forms of the title see details. 
    }
}

\value{
    The \code{dickens_filepath} function returns a character string that contains
    the absolute file path to the specified novel file.

    The \code{dickens_filepaths_all} function returns a vector of character strings
    that contains the absolute file path of all the novel files in the
    \code{dickens} corpus.
}

\format{
    The \code{dickens} dataset is in the form of a \code{data.frame} with the
    following structure.
\preformatted{
    'data.frame':   15 obs. of  5 variables:
     $ title               : chr  "The Pickwick Papers" "Oliver Twist" ...
     $ date_start          : Date, format: "1836-04-01" "1837-02-01" ...
     $ date_end            : Date, format: "1837-11-01" "1839-04-01" ...
     $ serialization_period: chr  "monthly" "monthly" ...
     $ publication         : chr  "Monthly numbers" "Bentley's Miscellany" ...
     attributes
       $row.names  :  "PP"  "OT" ...
}
}

\details{
    \subsection{Included novels}{
        \tabular{lr}{
                \tab title \cr
            PP  \tab The Pickwick Papers \cr
            OT  \tab Oliver Twist \cr
            NN  \tab Nicholas Nickleby \cr
            OCS \tab The Old Curiosity Shop \cr
            BR  \tab Barnaby Rudge: A Tale of the Riots of 'Eighty \cr
            MC  \tab Martin Chuzzlewit \cr
            DS  \tab Dombey and Son \cr
            DC  \tab David Copperfield \cr
            BH  \tab Bleak House \cr
            HT  \tab Hard Times \cr
            LD  \tab Little Dorrit \cr
            TTC \tab A Tale of Two Cities \cr
            GE  \tab Great Expectations \cr
            OMF \tab Our Mutual Friend \cr
            MED \tab The Mystery of Edwin Drood
        }
    }
    \subsection{Novel text files}{
        The \code{UTF-8} text files were retrieved from
        \href{https://www.gutenberg.org}{\sQuote{Project Gutenberg}} and
        converted to \href{https://tools.ietf.org/html/rfc20}{7-bit ASCII}
        printable characters and \dQuote{cleaned}.
        For details of the cleaning steps see the \sQuote{Corpora Content}
        section of the \href{../doc/faq.pdf}{FAQ vignette}.

        The \sQuote{novel} file contains the main novel
        text including preface text, chapter headings and the novel title.
        Text from the Gutenberg file from before and after the novel text 
        has been manually removed. If a table of contents was present
        this was also removed.
    }
    \subsection{dickens_filepath}{
        The \code{title} argument is first checked against the two and three
        letter codes and then against the full titles. Any unique partial
        match is allowed, for example 'A Tale' would match 'A Tale of Two
        Cities' (although just using 'TTC' probably makes more sense if
        not using the full title).
    }
    \subsection{Dickens metadata}{
        See format.
    }
}

\source{
    \sQuote{Books by Charles Dickens} at
    \href{https://www.gutenberg.org}{\sQuote{Project Gutenberg}}.
    \dQuote{Plain Text UTF-8} files. Retrieved from
    \url{https://www.gutenberg.org/ebooks/author/37} on 2016-11-27.

    All of these texts are covered by the Project Gutenberg License. A copy of
    the full license can be found at \url{http://gutenberg.org/license}.

    For details of the individual texts see the
    \href{../doc/corpora.pdf}{Corpora vignette}.
}

\keyword{datasets}

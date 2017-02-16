\name{ncnb}
\alias{ncnb}
\alias{ncnb_filepath}
\alias{ncnb_filepaths_all}
\docType{data}

\title{A small corpus of 19 century British novels.}

\description{
    The package contains the texts of a set 19th century British novels.
    The texts have been processed in such a way as to facilitate
    tokenization and to simplify analysis. See the
    \href{../doc/faq.pdf}{FAQ vignette} for details of how the texts
    were prepared.

    A functions \code{ncnb_filepath} and \code{ncnb_filepaths_all}
    return file paths to the novels texts; the locations of which are
    not always transparent to the user.
    These functions are convenience wrappers around the general functions
    \code{\link{corpus_filepath}} and \code{\link{corpus_filepaths_all}}.

    A dataset of metadata for the novels is provided in the form of
    the \code{ncnb} \code{data.frame}. See the format section.
}

\usage{
    ncnb

    ncnb_filepath(title) 

    ncnb_filepaths_all() 
}

\arguments{
    \item{title}{
        The title of the novel.
        For possible forms of the title see details. 
    }
}

\value{
    The \code{ncnb_filepath} function returns a character string that contains
    the absolute file path to the specified novel file.

    The \code{ncnb_filepaths_all} function returns a vector of character strings
    that contains the absolute file path of all the novel files in the
    \code{ncnb} corpus.
}

\format{
    The \code{ncnb} dataset is in the form of a \code{data.frame} with the
    following structure.
\preformatted{
    'data.frame':   29 obs. of  3 variables:
     $ author: chr  "Jane Austen" "Jane Austen" "Mary Wollstonecraft Shelley" ...
     $ title : chr  "Pride and Prejudice" "Emma" "Frankenstein; or, The Modern Prometheus" ...
     $ year  : int  1813 1815 1818  ...
     attributes
       $row.names : "PP" "EM" "FK" ...
}
}

\details{
    \subsection{Included novels}{
        \tabular{lrr}{
               \tab author \tab title \cr
            PP \tab Jane Austen \tab Pride and Prejudice \cr
            EM \tab Jane Austen \tab Emma \cr
            FK \tab Mary Wollstonecraft Shelley \tab Frankenstein; or, The Modern Prometheus \cr
            PS \tab Jane Austen \tab Persuasion \cr
            VG \tab Benjamin Disraeli \tab Vivian Grey \cr
            LDP \tab Edward Bulwer-Lytton \tab The Last Days of Pompeii \cr
            STN \tab Benjamin Disraeli \tab Sybil; Or, The Two Nations \cr
            AG \tab Anne Brontë \tab Agness Grey \cr
            JE \tab Charlotte Brontë \tab Jane Eyre \cr
            VF \tab William Makepeace Thackeray \tab Vanity Fair \cr
            WH \tab Emily Brontë \tab Wuthering Heights \cr
            MB \tab Elizabeth Cleghorn Gaskell \tab Mary Barton \cr
            AFR \tab Wilkie Collins \tab Antonina; or, The Fall of Rome \cr
            CF \tab Elizabeth Cleghorn Gaskell \tab Cranford \cr
            NS \tab Elizabeth Cleghorn Gaskell \tab North and South \cr
            TP \tab Charlotte Brontë \tab The Professor \cr
            WW \tab Wilkie Collins \tab The Woman in White \cr
            MF \tab George Eliot \tab The Mill on the Floss \cr
            SHA \tab Anthony Trollope \tab The Small House at Allington \cr
            LAS \tab Mary Elizabeth Braddon \tab Lady Audley's Secret \cr
            AD \tab Armadale \tab Wilkie Collins \cr
            DD \tab George Eliot \tab Daniel Deronda \cr
            RN \tab Thomas Hardy \tab The Return of the Native \cr
            SCDJMH \tab Robert Louis Stevenson \tab The Strange Case of Dr. Jekyll and Mr. Hyde \cr
            PDG \tab Oscar Wilde \tab The Picture of Dorian Gray \cr
            TD \tab Thomas Hardy \tab Tess of the d'Urbervilles: A Pure Woman \cr
            JO \tab Thomas Hardy \tab Jude the Obscure \cr
            DC \tab Bram Stoker \tab Dracular \cr
            HB \tab Arthur Conan Doyle \tab The Hound of the Baskervilles
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
    \subsection{ncnb_filepath}{
        With reference to the \sQuote{included novels} section
        the \code{title} argument is first checked against the short
        letter codes and then against the full titles. Any unique partial
        match is allowed, for example 'the mill' would match 'The Mill on the
        Floss' (although just using 'MF' probably makes more sense if
        not using the full title).
    }
    \subsection{Novel metadata}{
        See format.
    }
}

\source{
    All novel texts where sourced from the
    \href{https://www.gutenberg.org}{\sQuote{Project Gutenberg}},
    \dQuote{Plain Text UTF-8} files and were retrieved on 2017-02-02.

    All texts are covered by the Project Gutenberg License. A copy of
    the full license can be found at \url{http://gutenberg.org/license}.

    For details of the individual texts see the
    \href{../doc/corpora.pdf}{Corpora vignette}.
}

\keyword{datasets}

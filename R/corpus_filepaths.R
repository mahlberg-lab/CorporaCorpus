corpus_filepaths <- function(corpus, title = NULL) {
    meta <- corpus_metadata(corpus)
    if(is.null(title)){
        rv <- file.path(path.package("CorporaCorpus"), 'extdata', 'content', paste0(rownames(meta), '.txt.gz'))
        names(rv) <- rownames(meta)
    } else {
        i <- pmatch(title, rownames(meta))
        i <- ifelse(is.na(i), pmatch(tolower(title), tolower(meta$title)), i)
        if(any(is.na(i))) stop('Unrecognized title.')
        rv <- file.path(path.package("CorporaCorpus"), 'extdata', 'content', paste0(rownames(meta)[i], '.txt.gz'))
        names(rv) <- rownames(meta)[i]
    }
    return( rv )
}


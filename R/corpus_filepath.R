corpus_filepath <- function(title, corpus) {
    corpus <- match.arg(tolower(corpus), choices = c('dickens', 'ncnb'))
    i <- pmatch(tolower(title), tolower(rownames(get(corpus, envir = as.environment('package:CorporaCorpus')))))
    i <- ifelse(is.na(i), pmatch(tolower(title), tolower(get(corpus, envir = as.environment('package:CorporaCorpus'))$title)), i)
    if(any(is.na(i))) stop('Unrecognized title.')
    rv <- file.path(path.package("CorporaCorpus"), 'extdata', corpus, paste0(rownames(get(corpus, envir = as.environment('package:CorporaCorpus')))[i], '.txt.gz'))
    names(rv) <- rownames(get(corpus, envir = as.environment('package:CorporaCorpus')))[i]
    return( rv )
}

corpus_filepaths_all <- function(corpus) {
    corpus <- match.arg(tolower(corpus), choices = c('dickens', 'ncnb'))
    rv <- file.path(path.package("CorporaCorpus"), 'extdata', corpus, paste0(rownames(get(corpus, envir = as.environment('package:CorporaCorpus'))), '.txt.gz'))
    names(rv) <- rownames(get(corpus, envir = as.environment('package:CorporaCorpus')))
    return( rv )
}

ncnb_filepath <- function(title) {
    return( corpus_filepath(title, 'ncnb') )
}
ncnb_filepaths_all <- function() {
    return( corpus_filepaths_all('ncnb') )
}

dickens_filepath <- function(title) {
    return( corpus_filepath(title, 'dickens') )
}
dickens_filepaths_all <- function() {
    return( corpus_filepaths_all('dickens') )
}


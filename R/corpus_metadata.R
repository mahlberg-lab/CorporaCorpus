# corpora_metadata
# export bibliography from zotero as a CSV then...
# f <- read.csv('CorporaCorpus.csv', row.names = 'Short.Title', stringsAsFactor = FALSE, encoding = 'utf8')[,c('Author', 'Title','Date', 'Manual.Tags')]
# names(f) <- c('author', 'title', 'year', 'corpus')
# saveRDS(f, './inst/extdata/corpora_metadata.rds')
corpora_metadata <- readRDS(system.file(file.path('extdata', 'corpora_metadata.rds'), package = 'CorporaCorpus'))

corpus_metadata <- function(corpus = c("DNov", "19C", "ChiLit")) {
    corpus <- match.arg(corpus)
    rv <- corpora_metadata[corpora_metadata$corpus == corpus, c('author', 'title', 'year')]
    return( rv )
}


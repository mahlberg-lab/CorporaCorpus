corpora_content <- list(
    '19C' = c('pride', 'emma', 'frank', 'persu', 'vivian', 'pomp', 'sybil', 'agnes', 'jane', 'vanity', 'wuth', 'mary', 'anto', 'cran', 'north', 'prof', 'woman', 'mill', 'alli', 'audley', 'arma', 'deronda', 'native', 'jekyll', 'dorian', 'tess', 'jude', 'dracula', 'basker'),
    'DCorp' = c('PP', 'OT', 'NN', 'OCS', 'BR', 'MC', 'DS', 'DC', 'BH', 'HT', 'LD', 'TTC', 'GE', 'OMF', 'MED')
)

corpora_metadata <- readRDS(system.file(file.path('extdata', 'corpora_metadata.rds'), package = 'CorporaCorpus'))

corpus_metadata <- function(corpus) {
    corpus <- match.arg(corpus, choices = names(corpora_content))
    rv <- corpora_metadata[corpora_content[[corpus]], ]
    return( rv )
}


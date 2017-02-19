library(CorporaCorpus)
library(unittest, quietly=TRUE)

ok_group("whole corpus", {
    expected_regex <- 'CorporaCorpus.extdata.content.[a-z]+\\.txt\\.gz$'
    got <- corpus_filepaths(corpus = '19C')
    ok( length(got) == 29 & all(grepl(expected_regex, got)), "19C")
    ok( identical(names(got), row.names(corpus_metadata('19C'))), "19C - name attributes")

    expected_regex <- 'CorporaCorpus.extdata.content.[A-Z]+\\.txt\\.gz$'
    got <- corpus_filepaths(corpus = 'DCorp')
    ok( length(got) == 15 & all(grepl(expected_regex, got)), "DCorp")
    ok( identical(names(got), row.names(corpus_metadata('DCorp'))), "DCorp - name attributes")
})

ok_group("sub-corpus", {
    expected_regex <- 'CorporaCorpus.extdata.content.TTC\\.txt\\.gz$'
    got <- corpus_filepaths(corpus = 'DCorp', title = 'TTC')
    ok( length(got) == 1 & grepl(expected_regex, got), "TTC - DCorp")
    got <- corpus_filepaths(corpus = 'DCorp', title = 'A Tale of Two Cities')
    ok( length(got) == 1 & grepl(expected_regex, got), "A Tale of Two Cities - DCorp")

    expected_regex <- 'CorporaCorpus.extdata.content.mill\\.txt\\.gz$'
    got <- corpus_filepaths('19C', 'the mill')
    ok( length(got) == 1 & grepl(expected_regex, got), "title - the mill")
    got <- corpus_filepaths(corpus = '19C', title = 'The Mill on the Floss')
    ok( length(got) == 1 & grepl(expected_regex, got), "title - The Mill on the Floss")
    got <- corpus_filepaths(corpus = '19C', title = 'the mill on the floss')
    ok( length(got) == 1 & grepl(expected_regex, got), "title - the mill on the floss")

    got <- corpus_filepaths(c('TTC', 'GE'), corpus = 'DCorp')
    ok( length(got) == 2 & grepl('TTC\\.txt\\.gz$', got[1]) & grepl('GE\\.txt\\.gz$', got[2]), "multiple titles - TTC and GE")
    ok( identical(names(got), c('TTC', 'GE')), "multiple titles - name attributes")
    
    got <- corpus_filepaths(c('Bleak', 'LD'), corpus = 'DCorp')
    ok( length(got) == 2 & grepl('BH\\.txt\\.gz$', got[1]) & grepl('LD\\.txt\\.gz$', got[2]), "multiple titles - Bleak and LD")
})

ok_group("the files", {
    ok( all(file.exists(corpus_filepaths('DCorp'))), "DCorp - all files exist")
    ok( all(file.exists(corpus_filepaths('19C'))), "19C - all files exist")

    got <- readLines(corpus_filepaths('19C', "mill"))
    ok( grepl('The Mill on the Floss', got[1], ignore.case = TRUE), "reedLines - F - novel file got and text looks good")
})


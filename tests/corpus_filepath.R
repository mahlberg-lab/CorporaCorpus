library(CorporaCorpus)
library(unittest, quietly=TRUE)

ok_group("corpus_filepath", {
    expected_regex <- 'CorporaCorpus.extdata.dickens.TTC\\.txt\\.gz$'
    got <- corpus_filepath('TTC', corpus = 'dickens')
    ok( length(got) == 1 & grepl(expected_regex, got), "TTC - dickens")

    expected_regex <- 'CorporaCorpus.extdata.ncnb.MF\\.txt\\.gz$'
    got <- corpus_filepath('MF', corpus = 'ncnb')
    ok( length(got) == 1 & grepl(expected_regex, got), "MF - ncnb")

    got <- corpus_filepath('MF', corpus = 'ncnb')
    ok( length(got) == 1 & grepl(expected_regex, got), "title - MF")
    got <- corpus_filepath('mf', corpus = 'ncnb')
    ok( length(got) == 1 & grepl(expected_regex, got), "title - mf")
    got <- corpus_filepath('The Mill on the Floss', corpus = 'ncnb')
    ok( length(got) == 1 & grepl(expected_regex, got), "title - The Mill on the Floss")
    got <- corpus_filepath('the mill on the floss', corpus = 'ncnb')
    ok( length(got) == 1 & grepl(expected_regex, got), "title - the mill on the floss")
    got <- corpus_filepath('the mil', corpus = 'ncnb')
    ok( length(got) == 1 & grepl(expected_regex, got), "title - the mil")

    got <- corpus_filepath(c('TTC', 'GE'), corpus = 'dickens')
    ok( length(got) == 2 & grepl('TTC\\.txt\\.gz$', got[1]) & grepl('GE\\.txt\\.gz$', got[2]), "multiple titles - TTC and GE")
    ok( identical(names(got), c('TTC', 'GE')), "multiple titles - name attributes")
    
    got <- corpus_filepath(c('Bleak', 'LD'), corpus = 'dickens')
    ok( length(got) == 2 & grepl('BH\\.txt\\.gz$', got[1]) & grepl('LD\\.txt\\.gz$', got[2]), "multiple titles - Bleak and LD")
})

ok_group("corpus_filepaths_all", {
    expected_regex <- 'CorporaCorpus.extdata.ncnb.[A-Z]+\\.txt\\.gz$'
    got <- corpus_filepaths_all(corpus = 'ncnb')
    ok( length(got) == 29 & all(grepl(expected_regex, got)), "ncnb")
    ok( identical(names(got), row.names(ncnb)), "ncnb - name attributes")

    expected_regex <- 'CorporaCorpus.extdata.dickens.[A-Z]+\\.txt\\.gz$'
    got <- corpus_filepaths_all(corpus = 'dickens')
    ok( length(got) == 15 & all(grepl(expected_regex, got)), "dickens")
})

ok_group("the files", {
    ok( all(file.exists(corpus_filepaths_all('dickens'))), "dickens - all files exist")
    ok( all(file.exists(corpus_filepaths_all('ncnb'))), "ncnb - all files exist")

    got <- readLines(ncnb_filepath("MF"))
    ok( grepl('The Mill on the Floss', got[1], ignore.case = TRUE), "reedLines - F - novel file got and text looks good")
})

ok_group("helpers", {
    got <- corpus_filepath('TTC', corpus = 'dickens')
    got_helper <- dickens_filepath('TTC') 
    ok( identical(got, got_helper) , "dickens_filepath")

    got <- corpus_filepath('The Picture of Dorian Gray', corpus = 'ncnb')
    got_helper <- ncnb_filepath('The Picture of Dorian Gray') 
    ok( identical(got, got_helper) , "ncnb_filepath")

    got <- corpus_filepaths_all(corpus = 'dickens')
    got_helper <- dickens_filepaths_all() 
    ok( identical(got, got_helper) , "dickens_filepaths_all")

    got <- corpus_filepaths_all(corpus = 'ncnb')
    got_helper <- ncnb_filepaths_all() 
    ok( identical(got, got_helper) , "ncnb_filepaths_all")
})


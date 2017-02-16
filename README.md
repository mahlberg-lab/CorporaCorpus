CorporaCorpus
=============

A collection of small corpora prepared by the [Centre for Corpus Research](http://www.birmingham.ac.uk/research/activity/corpus/).

A very simple example of usage
------------------------------

    > library(CorporaCorpus)

    > GE_text <- readLines( corpus_filepath('Great Expectations', corpus = 'dickens')

    > head(GE_text, 20)
     [1] "GREAT EXPECTATIONS"                                                     
     [2] ""                                                                       
     [3] "by Charles Dickens"                                                     
     [4] ""                                                                       
     [5] ""                                                                       
     [6] "Chapter I"                                                              
     [7] ""                                                                       
     [8] "My father's family name being Pirrip, and my Christian name Philip, my" 
     [9] "infant tongue could make of both names nothing longer or more explicit" 
    [10] "than Pip. So, I called myself Pip, and came to be called Pip."          
    [11] ""                                                                       
    [12] "I give Pirrip as my father's family name, on the authority of his"      
    [13] "tombstone and my sister, Mrs. Joe Gargery, who married the blacksmith." 
    [14] "As I never saw my father or my mother, and never saw any likeness"      
    [15] "of either of them (for their days were long before the days of"         
    [16] "photographs), my first fancies regarding what they were like were"      
    [17] "unreasonably derived from their tombstones. The shape of the letters on"
    [18] "my father's, gave me an odd idea that he was a square, stout, dark man,"
    [19] "with curly black hair. From the character and turn of the inscription," 
    [20] "\"Also Georgiana Wife of the Above,\" I drew a childish conclusion that"


Installing from CRAN
====================

This package is very new and not really production ready; as a result it has not yet been submitted to CRAN.

Installing the latest development version directly from GitHub
==============================================================

Linux
-----

In an R session type:

    pkg_file <- tempfile()
    download.file(url = 'https://github.com/ravingmantis/CorporaCorpus/archive/master.tar.gz', mode = 'wb', method = 'wget', destfile = pkg_file)
    install.packages(pkg_file, repos = NULL, type = 'source')

Mac OSX / Windows
-----------------

``download.file`` may not support fetching ``https`` URLs. Alternatively, you
can use the the CRAN package [downloader](http://CRAN.R-project.org/package=downloader)
to fetch the archive instead:

    # install.packages("downloader")
    pkg_file <- tempfile()
    downloader::download(url = 'https://github.com/ravingmantis/CorporaCorpus/archive/master.tar.gz', mode = 'wb', destfile = pkg_file)
    install.packages(pkg_file, repos = NULL, type = 'source')

Alternatively use the `devtools` CRAN package
---------------------------------------------

If you have the CRAN package [devtools](http://CRAN.R-project.org/package=devtools)
you can use this to install directly from github:

    # install.packages("devtools")
    devtools::install_github("ravingmantis/CorporaCorpus")


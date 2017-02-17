CorporaCorpus
=============

A collection of small corpora prepared by the [Centre for Corpus Research](http://www.birmingham.ac.uk/research/activity/corpus/) at the University of Birmingham.

Corpora
-------

| | |
| ---: | :--- |
| **dickens** | Dickens' novels |
| **ncnb** | 19th Century Novels (British) |

A very simple example of usage
------------------------------

    > library(CorporaCorpus)

    > dickens
                                                title date_start   date_end serialization_period             publication
    PP                            The Pickwick Papers 1836-04-01 1837-11-01              monthly         Monthly numbers
    OT                                   Oliver Twist 1837-02-01 1839-04-01              monthly    Bentley's Miscellany
    NN                              Nicholas Nickleby 1838-04-01 1839-10-01              monthly         Monthly numbers
    OCS                        The Old Curiosity Shop 1840-04-25 1841-02-06               weekly Master Humphrey's Clock
    BR  Barnaby Rudge: A Tale of the Riots of 'Eighty 1841-02-13 1841-11-27               weekly Master Humphrey's Clock
    MC                              Martin Chuzzlewit 1843-01-01 1844-07-01              monthly         Monthly numbers
    DS                                 Dombey and Son 1846-10-01 1848-04-01              monthly         Monthly numbers
    DC                              David Copperfield 1849-05-01 1850-11-01              monthly         Monthly numbers
    BH                                    Bleak House 1852-03-01 1853-09-01              monthly         Monthly numbers
    HT                                     Hard Times 1854-04-01 1854-08-12               weekly         Household Words
    LD                                  Little Dorrit 1855-12-01 1857-06-01              monthly         Monthly numbers
    TTC                          A Tale of Two Cities 1859-04-30 1859-11-26               weekly      All the Year Round
    GE                             Great Expectations 1860-12-01 1861-08-03               weekly      All the Year Round
    OMF                             Our Mutual Friend 1864-05-01 1865-11-01              monthly         Monthly numbers
    MED                    The Mystery of Edwin Drood 1870-04-01 1870-09-01              monthly         Monthly numbers


    > GE_text <- readLines(corpus_filepath('Great Expectations', corpus = 'dickens'))

    > head(GE_text, 15)
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


    > DICKENS_texts <- lapply(corpus_filepaths_all('dickens'), readLines)

    > str(DICKENS_texts, nchar.max = 90)
    List of 15
     $ PP : chr [1:36445] "THE PICKWICK PAPERS" "" "By Charles Dickens" "" ...
     $ OT : chr [1:18692] "OLIVER TWIST" "OR" "THE PARISH BOY'S PROGRESS" "" ...
     $ NN : chr [1:37189] "THE LIFE AND ADVENTURES OF NICHOLAS NICKLEBY," "containing a Faithful Account of the Fortunes, Misfortunes," ...
     $ OCS: chr [1:23665] "The Old Curiosity Shop" "" "By Charles Dickens" "" ...
     $ BR : chr [1:27260] "BARNABY RUDGE" "" "A TALE OF THE RIOTS OF 'EIGHTY" "" ...
     $ MC : chr [1:37448] "LIFE AND ADVENTURES OF MARTIN CHUZZLEWIT" "" "by Charles Dickens" "" ...
     $ DS : chr [1:39093] "DOMBEY AND SON" "" "By Charles Dickens" "" ...
     $ DC : chr [1:38119] "DAVID COPPERFIELD" "" "By Charles Dickens" "" ...
     $ BH : chr [1:39753] "BLEAK HOUSE" "" "by" "" ...
     $ HT : chr [1:11519] "HARD TIMES" "" "By CHARLES DICKENS" "" ...
     $ LD : chr [1:36787] "LITTLE DORRIT" "" "By Charles Dickens" "" ...
     $ TTC: chr [1:15803] "A TALE OF TWO CITIES" "" "A STORY OF THE FRENCH REVOLUTION" "" ...
     $ GE : chr [1:20018] "GREAT EXPECTATIONS" "" "by Charles Dickens" "" ...
     $ OMF: chr [1:38508] "OUR MUTUAL FRIEND" "" "Charles Dickens" "" ...
     $ MED: chr [1:11428] "THE MYSTERY OF EDWIN DROOD" "" "" "" ...


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


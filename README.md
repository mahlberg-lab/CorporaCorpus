CorporaCorpus
=============

A collection of small corpora prepared by the [Centre for Corpus Research](http://www.birmingham.ac.uk/research/activity/corpus/) at the University of Birmingham.

Corpora
-------

| Corpus| Description |
| ---: | :--- |
| DNov | Dickens' novels |
| 19C | 19th Century Novels |

A very simple example of usage
------------------------------

    > library(CorporaCorpus)

    > corpus_metadata('19C')
                                 author                                       title year
    pride                   Jane Austen                         Pride and Prejudice 1813
    emma                    Jane Austen                                        Emma 1815
    frank   Mary Wollstonecraft Shelley     Frankenstein; or, The Modern Prometheus 1818
    persu                   Jane Austen                                  Persuasion 1818
    vivian            Benjamin Disraeli                                 Vivian Grey 1826
    pomp           Edward Bulwer-Lytton                    The Last Days of Pompeii 1834
    sybil             Benjamin Disraeli                  Sybil; Or, The Two Nations 1845
    agnes                   Anne Bronte                                 Agness Grey 1847
    jane               Charlotte Bronte                                   Jane Eyre 1847
    vanity  William Makepeace Thackeray                                 Vanity Fair 1847
    wuth                   Emily Bronte                           Wuthering Heights 1847
    mary     Elizabeth Cleghorn Gaskell                                 Mary Barton 1848
    anto                 Wilkie Collins              Antonina; or, The Fall of Rome 1850
    cran     Elizabeth Cleghorn Gaskell                                    Cranford 1851
    north    Elizabeth Cleghorn Gaskell                             North and South 1855
    prof               Charlotte Bronte                               The Professor 1857
    woman                Wilkie Collins                          The Woman in White 1859
    mill                   George Eliot                       The Mill on the Floss 1860
    alli               Anthony Trollope                The Small House at Allington 1862
    audley       Mary Elizabeth Braddon                        Lady Audley's Secret 1862
    arma                 Wilkie Collins                                    Armadale 1864
    deronda                George Eliot                              Daniel Deronda 1876
    native                 Thomas Hardy                    The Return of the Native 1878
    jekyll       Robert Louis Stevenson The Strange Case of Dr. Jekyll and Mr. Hyde 1886
    dorian                  Oscar Wilde                  The Picture of Dorian Gray 1890
    tess                   Thomas Hardy     Tess of the d'Urbervilles: A Pure Woman 1892
    jude                   Thomas Hardy                            Jude the Obscure 1896
    dracula                 Bram Stoker                                    Dracular 1897
    basker           Arthur Conan Doyle               The Hound of the Baskervilles 1901


    > GE_text <- readLines(corpus_filepaths('DNov', title = 'Great Expectations'))

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


    > DICKENS_texts <- lapply(corpus_filepaths('DNov'), readLines)

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

This package is not available on CRAN as it exceeds their 5MB size limit for data packages.

Installing the latest stable version directly from GitHub
=========================================================

Linux
-----

In an R session type:

    pkg_file <- tempfile()
    download.file(url = 'https://github.com/birmingham-ccr/CorporaCorpus/archive/v1.0-0.tar.gz', mode = 'wb', method = 'wget', destfile = pkg_file)
    install.packages(pkg_file, repos = NULL, type = 'source')

Mac OSX / Windows
-----------------

``download.file`` may not support fetching ``https`` URLs. Alternatively, you
can use the the CRAN package [downloader](https://CRAN.R-project.org/package=downloader)
to fetch the archive instead:

    # install.packages("downloader")
    pkg_file <- tempfile()
    downloader::download(url = 'https://github.com/birmingham-ccr/CorporaCorpus/archive/v1.0-0.tar.gz', mode = 'wb', destfile = pkg_file)
    install.packages(pkg_file, repos = NULL, type = 'source')

Alternatively use the `devtools` CRAN package
---------------------------------------------

If you have the CRAN package [devtools](https://CRAN.R-project.org/package=devtools)
you can use this to install directly from github:

    # install.packages("devtools")
    devtools::install_github("birmingham-ccr/CorporaCorpus", ref = "v1.0-0")
`

Installing the latest development version directly from GitHub
==============================================================

Linux
-----

In an R session type:

    pkg_file <- tempfile()
    download.file(url = 'https://github.com/birmingham-ccr/CorporaCorpus/archive/master.tar.gz', mode = 'wb', method = 'wget', destfile = pkg_file)
    install.packages(pkg_file, repos = NULL, type = 'source')

Mac OSX / Windows
-----------------

``download.file`` may not support fetching ``https`` URLs. Alternatively, you
can use the the CRAN package [downloader](https://CRAN.R-project.org/package=downloader)
to fetch the archive instead:

    # install.packages("downloader")
    pkg_file <- tempfile()
    downloader::download(url = 'https://github.com/birmingham-ccr/CorporaCorpus/archive/master.tar.gz', mode = 'wb', destfile = pkg_file)
    install.packages(pkg_file, repos = NULL, type = 'source')

Alternatively use the `devtools` CRAN package
---------------------------------------------

If you have the CRAN package [devtools](https://CRAN.R-project.org/package=devtools)
you can use this to install directly from github:

    # install.packages("devtools")
    devtools::install_github("birmingham-ccr/CorporaCorpus")


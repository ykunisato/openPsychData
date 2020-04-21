
<!-- README.md is generated from README.Rmd. Please edit that file -->

# openPsychData

<!-- badges: start -->

<!-- badges: end -->

The goal of openPsychData is to enable loading open dataset for
Psychology.

## Installation

You can install the openPsychData from [GitHub](https://github.com/)
with:

``` r
# install.packages("devtools")
devtools::install_github("ykunisato/openPsychData")
```

## How to use

<https://docs.google.com/spreadsheets/d/1FHiqq7q5iItaU8KfYZTo_8bKhUGM_yGwMiklx8GiMXI/edit?usp=sharing>

    library(openPsychData)
    load_ospp("16PF", codebook = TRUE)

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/query.R
\name{query}
\alias{query}
\title{query a Content URI or a URL with remote and/or local registries}
\usage{
query(uri, registries = default_registries(), ...)
}
\arguments{
\item{uri}{a content identifier or a regular URL for a data file}

\item{registries}{list of registries at which to register the URL}

\item{...}{additional arguments}
}
\value{
a data frame with matching results
}
\description{
query a Content URI or a URL with remote and/or local registries
}
\examples{
\donttest{

## By content identifier
query(paste0("hash://sha256/9412325831dab22aeebdd",
             "674b6eb53ba6b7bdd04bb99a4dbb21ddff646287e37"))
## By (registered) URL
query(paste0("https://knb.ecoinformatics.org/knb/d1/mn/v2/object/",
"ess-dive-457358fdc81d3a5-20180726T203952542"))
}

}

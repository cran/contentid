% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/store.R
\name{store}
\alias{store}
\title{Store files in a local cache}
\usage{
store(x, dir = content_dir(), algos = default_algos())
}
\arguments{
\item{x}{a URL, \link{connection}, or file path.}

\item{dir}{the path we should use for permanent / on-disk storage
of the registry. An appropriate default will be selected (also
configurable using the environmental variable \code{CONTENTID_HOME}),
if not specified.}

\item{algos}{Which algorithms should we compute contentid for? Default
"sha256", see details.}
}
\value{
the content-based identifier
}
\description{
Resources at a specified URL will be downloaded and copied
into the local content-based storage. Local paths will simply
be copied into local storage. Identical content is not duplicated.
}
\examples{
\dontshow{if (interactive()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
\dontshow{ ## Real users won't use a temporary dir
Sys.setenv("CONTENTID_HOME" = tempdir())
}
# Store & retrieve local file
vostok_co2 <- system.file("extdata", "vostok.icecore.co2",
                          package = "contentid")
 id <- store(vostok_co2)
 retrieve(id)

\dontshow{ ## Real users won't use a temporary dir
Sys.unsetenv("CONTENTID_HOME")
}
\dontshow{\}) # examplesIf}
}
\seealso{
retrieve
}

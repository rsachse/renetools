\name{geteftab}
\alias{geteftab}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Function for extracting a writeable table of environmental vector fits from package vegan
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
geteftab(ef)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ef}{
%%     ~~Describe \code{ef} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (ef) 
{
    a <- ef$vectors$arrows
    a <- as.data.frame(a)
    a$r2 <- ef$vectors$r
    a$p <- ef$vectors$pvals
    a$sig <- NA
    a$sig <- ifelse(a$p <= 0.1, ".", a$sig)
    a$sig <- ifelse(a$p <= 0.05, "*", a$sig)
    a$sig <- ifelse(a$p <= 0.01, "**", a$sig)
    a$sig <- ifelse(a$p <= 0.001, "***", a$sig)
    a
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

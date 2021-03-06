\name{compExp-class}
\Rdversion{1.1}
\docType{class}
\alias{compExp}
\alias{compExp-class}
\alias{plot,compExp,missing-method}
\alias{show,compExp-method}
%%\alias{subset,compExp-method}
\alias{summary,compExp-method}

\title{Class "compExp" }
\description{	 This is the main class that holds the results of
  experimental comparisons of a set of learners over a set of predictive
  tasks, using some experimental methodology.}
\section{Objects from the Class}{
  Objects can be created by calls of the form \code{compExp(...)}.
  These objects contain information on the set of learners being
  compared, the set of predictive tasks being used on the comparison,
  the experimental settings and the overall results of all experimental
  comparisons.
}
\section{Slots}{
  \describe{
    \item{\code{learners}:}{Object of class \code{"list"} : a list of
      objects of the class learner. }
    \item{\code{datasets}:}{Object of class \code{"list"} : a list of
      objects of the class task.}
    \item{\code{settings}:}{Object of class \code{"expSettings"} : an
      object belonging to one of the classes in this class union. }
    \item{\code{foldResults}:}{Object of class \code{"array"} : a
      numeric array with the overall results of the experiment. This
      array has 4 dimensions. The first dimension are the different
      repetitions/iterations of the experiment; the second dimension are
    the evaluation statistics being estimated; the third dimension are
    the different learners being compared; while the fourth dimension
    are the predictive tasks.}
  }
}
\section{Methods}{
  \describe{
    \item{plot}{\code{signature(x = "compExp", y = "missing")}: plots
      the results of the experiments. It can result in an over-cluttered
    graph if too many learners/datasets/evaluation metrics - use the
    subset method (see below) to overcome this.}
    \item{show}{\code{signature(object = "compExp")}: shows the contents
    of an object in a proper way}
    \item{subset}{\code{signature(x = "compExp")}: can be used to obtain
    a smaller compExp object containing only a subset of the information
  of the provided object. This method also accepts the arguments "its",
  "stats", "vars" and "dss". All are vectors of numbers or names
  corresponding to an indexing of each of the dimensions of the
  "foldResults" slot. They default to all values of each dimension. See
  "methods?subset" for further details.}
    \item{summary}{\code{signature(object = "compExp")}: provides a
      summary of the experimental results. }
	 }
}
\references{ Torgo, L. (2010) \emph{Data Mining using R: learning with case studies},
CRC Press (ISBN: 9781439810187). \url{http://www.dcc.fc.up.pt/~ltorgo/DataMiningWithR}  
}
\author{ Luis Torgo \email{ltorgo@dcc.fc.up.pt} }
\seealso{
  \code{\link{experimentalComparison}}, \code{\link{compAnalysis}}, \code{\link{rankSystems}}, \code{\link{bestScores}}, \code{\link{statScores}}, \code{\link{join}}  
}
\examples{
showClass("compExp")
}
\keyword{classes}
